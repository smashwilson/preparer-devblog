#!/bin/sh

set -euo pipefail

WORKDIR=${CONTENT_ROOT:-$(pwd)}

# Run the Jekyll preparer.
ruby -I/usr/src/app/lib -rpreparermd -e PreparerMD.build

# Show all the categories to help authors know which categories are available
jekyll-audit categories list --posts-dir ${WORKDIR}/_posts

# Will fail if any underused categories have been created
jekyll-audit categories list-underused --posts-dir ${WORKDIR}/_posts
