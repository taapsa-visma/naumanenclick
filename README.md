# naumanen.click

Everything for naumanen.click site

[![GitHub Super-Linter](https://github.com/taapsa-visma/naumanenclick/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

## DEV stuff

### Working with modules

When developing modules do `yarn link` in your module folder. Then go to main app folder and run `yarn link <module name>` and you are all set. When ever you do changes just build the module and start the app again.

### Lint your code

<https://github.com/github/super-linter/blob/main/docs/run-linter-locally.md>

Pull the latest Super-Linter docker container:  
`docker pull github/super-linter:latest`

Run the container locally:  
`docker run -e RUN_LOCAL=true -v /path/to/local/codebase:/tmp/lint github/super-linter`

To run against a single file you can use:  
`docker run -e RUN_LOCAL=true -v /path/to/local/codebase/file:/tmp/lint/file github/super-linter`
