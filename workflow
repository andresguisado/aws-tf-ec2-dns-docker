name: build
on:
  push:
    branches:
      - master
  pull_request:
jobs:
  build:
    name: Build
    runs-on: ubuntu-18.04
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Run Trivy vulnerability scanner in IaC mode
        uses: aquasecurity/trivy-action@master
        with:
          scan-type: 'config'
          hide-progress: false
          format: 'table'
          exit-code: '1'
        env:
          AQUA_KEY: ${{ secrets.AQUA_KEY }}
          AQUA_SECRET: ${{ secrets.AQUA_SECRET }}
          TRIVY_RUN_AS_PLUGIN: 'aqua'
