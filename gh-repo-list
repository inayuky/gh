#!/bin/bash

# require
# - github cli 
# - jq

gh api graphql --paginate -f query='
  query($endCursor: String) {
    viewer {
      repositories(orderBy: {direction: ASC, field: NAME}, first: 100, after: $endCursor) {
        nodes { name }
        pageInfo {
          hasNextPage
          endCursor
        }
      }
    }
  }
'| jq -r '.data.viewer.repositories.nodes[].name'