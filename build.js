import path from 'node:path';
import markdownLinkCheck from 'markdown-link-check';
import { glob } from 'glob';
import { readFile } from 'node:fs/promises';
import { styleText } from "node:util";

function handleError (err) {
  if (err) {
    console.error(styleText('red', err))
    process.exit(1)
  }
}

async function checkFile (fileName) {
  const md = await readFile(fileName, 'utf8');
  
  const baseUrl = `file://${path.dirname(path.resolve(fileName))}`

  let ignorePatterns
  
  if (process.env.IGNORE_EXTERNAL_LINK_CHECKING) {
    ignorePatterns = [
      { pattern: /http/ }, // skip all external links
    ]
  } else {
    ignorePatterns = [
      // In alphabetical order please...
      { pattern: /\.github\.com/ }, // GitHub sub-sites are returning 403. markdown-link-check are looking at it. https://github.com/tcort/markdown-link-check/issues/201
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
      { pattern: /partner.microsoft.com/ } // keeps returning 0, will always fail due to an auth redirect
    ]
  }

  const retryCount = 5
  const timeout = '30s'

  return new Promise((resolve, reject) => {
    markdownLinkCheck(md, { baseUrl, ignorePatterns, retryCount, timeout }, (err, results) => {
      if (err) {
        handleError(err)
        return reject(fileName)
      }

      let hasErrored = false

      results.forEach(function (result) {
        if (result.status === 'dead') {
          console.error(`${styleText('gray', "[")}${styleText('red', result.status)}${styleText('gray',`(${result.statusCode})] ${result.link} in ${fileName}`)}`)
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
}

(async () => {
  try {
    const fileNames = await glob('**/*.md', { ignore: '**/node_modules/**' });

    const allChecks = await Promise.allSettled(
      fileNames.map((fileName) => checkFile(fileName))
    )

    if (allChecks.some(({ status }) => status === 'rejected')) {
      console.error(styleText('red', 'Broken links found'))
      console.log('See https://github.com/madetech/handbook/blob/main/guides/contributing_to_the_handbook.md#checking-for-broken-links for more information')
      process.exit(1)
    } else {
      process.exit(0)
    }
  } catch (err) {
    handleError(err)
  }
})()
