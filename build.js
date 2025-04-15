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
          // In alphabetical order please...
          { pattern: /\.github.com/ }, // GitHub sub-sites are returning 403. markdown-link-check are looking at it. https://github.com/tcort/markdown-link-check/issues/201
          { pattern: /askmadetech.zendesk.com/ },
          { pattern: /clamav.net/ },
          { pattern: /currys.co.uk/ },
          { pattern: /docs.google.com/ },
          { pattern: /goodreads.com/ }, // regularly returning as dead
          { pattern: /made-tech.workable.com/ },
          { pattern: /moneysavingexpert.com/ },
          { pattern: /pcworld.co.uk/ },
          { pattern: /retrospectivewiki.org/ },
          { pattern: /royalmail.com/ }, // regularly returning as dead
          { pattern: /udemy.com/ }, // udemy returns 403 status to circle ci hosts
          { pattern: /www.aws.training/ },
          { pattern: /www.certmetrics.com/ },
          { pattern: /www.glassdoor.co.uk/ }, // glassdoor returns 503 status to circle ci hosts
        ]
      }

      const retryCount = 5
      const timeout = '30s'

      markdownLinkCheck(md, { baseUrl, ignorePatterns, retryCount, timeout }, (err, results) => {
        handleError(err)

        let hasErrored = false

        results.forEach(function (result) {
          if (result.status === 'dead') {
            console.error(chalk.gray(' [' + chalk.red('%s') + '(%s)] %s in %s'), result.status, result.statusCode, result.link, fileName)
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
