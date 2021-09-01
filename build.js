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

      const ignorePatterns = [
        { pattern: /www.glassdoor.co.uk/ },     // glassdoor returns 503 status to circle ci hosts
        { pattern: /www.aws.training/ },
        { pattern: /www.certmetrics.com/ },
        { pattern: /made-tech.workable.com/ },
        { pattern: /clamav.net/ },
        { pattern: /docs.google.com/ },        // Internal docs are hidden and will cause errors sometimes
        { pattern: /udemy.com/ }               // udemy returns 403 status to circle ci hosts
      ]

      markdownLinkCheck(md, { baseUrl, ignorePatterns }, (err, results) => {
        handleError(err)

        let hasErrored = false

        results.forEach(function (result) {
          if (result.status === 'ignored') {
            console.log(chalk.grey(' [' + chalk.yellow('%s') + '(%s)] %s'), result.status, result.statusCode, result.link)
          } else if (result.status !== 'alive') {
            if (!hasErrored) {
              console.log('%s', fileName)
              hasErrored = true
            }

            console.log(chalk.grey(' [' + chalk.red('%s') + '(%s)] %s'), result.status, result.statusCode, result.link)
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
    }
  })
})
