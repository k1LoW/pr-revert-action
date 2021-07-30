# pr-revert-action

:octocat: GitHub Action for [pr-revert](https://github.com/k1LoW/pr-revert)

## Usage

``` yaml
# .github/workflows/revert.yml
name: Revert

on:
  workflow_dispatch:
    inputs:
      latest:
        description: '--latest: Number of most recently merged pull requests to revert'
        required: false
      until:
        description: '--until: Duration of most recently merged pull requests to revert'
        required: false
      number:
        description: '--number: Number of merged pull request to revert'
        required: false

jobs:
  revert:
    runs-on: ubuntu-latest
    steps:
      -
        uses: k1LoW/pr-revert-action@v0
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          PR_REVERT_LATEST: ${{ github.event.inputs.latest }}
          PR_REVERT_UNTIL: ${{ github.event.inputs.until }}
          PR_REVERT_NUMBER: ${{ github.event.inputs.number }}
```
