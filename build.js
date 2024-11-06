const glob = require('glob')
const fs = require('fs')
const path = require('path')
const markdownLinkCheck = require('markdown-link-check')
const chalk = require('chalk')

function handleError (err) {
  if (err) {
    console.error(chalk.red('%s'), err)
    process.exit(1)
  }
}

function checkFile (fileName) {
  return new Promise((resolve, reject) => {
    fs.readFile(fileName, 'utf8', (err, md) => {
      handleError(err)

      const baseUrl = `file://${path.dirname(path.resolve(fileName))}`

      let ignorePatterns
      
      if (process.env.IGNORE_EXTERNAL_LINK_CHECKING) {
        ignorePatterns = [
          { pattern: /http/ }, // skip all external links
        ]
      } else {
        ignorePatterns = [
          { pattern: /www.glassdoor.co.uk/ },     // glassdoor returns 503 status to circle ci hosts
          { pattern: /www.aws.training/ },
          { pattern: /www.certmetrics.com/ },
          { pattern: /made-tech.workable.com/ },
          { pattern: /retrospectivewiki.org/ },
          { pattern: /clamav.net/ },
          { pattern: /docs.google.com/ },         // Internal docs are hidden and will cause errors sometimes
          { pattern: /udemy.com/ },               // udemy returns 403 status to circle ci hosts
          { pattern: /moneysavingexpert.com/ },
          { pattern: /currys.co.uk/ },
          { pattern: /pcworld.co.uk/ },
          { pattern: /goodreads.com/ },            // regularly returning as dead
          { pattern: /\.github.com/ },              // github subsites are returning 403. markdown-link-check are looking at it. https://github.com/tcort/markdown-link-check/issues/201

          { pattern: /royalmail.com/ },            // regularly returning as dead
        ]
      }

      const retryCount = 5
      const timeout = '30s'

      markdownLinkCheck(md, { baseUrl, ignorePatterns, retryCount, timeout }, (err, results) => {
        handleError(err)

        let hasErrored = false

        results.forEach(function (result) {
          if (result.status === 'ignored') {
            console.log(chalk.grey(' [' + chalk.yellow('%s') + '(%s)] %s'), result.status, result.statusCode, result.link)
          } else if (result.status == 'alive') {
            console.log(chalk.grey(' [' + chalk.green('%s') + '(%s)] %s'), result.status, result.statusCode, result.link)
          } else {
            console.log(chalk.grey(' [' + chalk.red('%s') + '(%s)] %s'), result.status, result.statusCode, result.link)
            console.log('located: %s', fileName)
            hasErrored = true
          }
        })

        if (hasErrored) {
          reject(fileName)
        } else {
          resolve(fileName)
        }
      })
    })
  })
}

glob('**/*.md', (err, fileNames) => {
  handleError(err)

  const checkableFileNames = fileNames.filter((fileName) => !fileName.includes('node_module'))

  const allChecks = Promise.allSettled(
    checkableFileNames.map((fileName) => checkFile(fileName))
  )

  allChecks.then((results) => {
    if (results.some(({ status }) => status === 'rejected')) {
      handleError('Broken links found')
    } else {
      console.log(chalk.green('%s'), 'No broken links found')
      process.exit(0)
    }
  })
})
