# KrakenD version migration
This application migrates existing KrakenD configurations from one major version to another (e.g: 1.x to 2.0).

The application **overwrites** the target files with the resulting new configuration. Therefore, you should keep your configuration files under a git tree to review or revert changes quickly.

The application works with any file extension of your choice (patterns), but it defaults to `*.json` (simple configuration) or `*.tmpl` (usually flexible configuration).

You can migrate KrakenD configurations with thousands of files/templates in seconds.

Make sure to review the changes after the migration.

## Usage
[Download the binary for your platform](https://github.com/devopsfaith/krakend-config-migrator/releases) or build the source code (see below). From the folder where the binary is, execute it:

    $ ./krakend-config-migrator -h
    Usage of ./krakend-config-migrator:
      -c int
            concurrency level (default 24)
      -m string
            path to a custom mapping definition
      -p string
            patterns to use to contain the file modification (default "*.json,*.tmpl")

All flags are optional and usually not needed unless you use custom rules, YAML configuration, or other non-standard options.

Pass your krakend project directory as an argument. **The application is recursive** and will look for all files matching the .json and .toml extensions. For instance:

    $ ./krakend-config-migrator mykrakendproject

If your KrakenD configuration is split into multiple repositories, you can pass them all at once, simply passing the list of folders:

    $ ./krakend-config-migrator folder1/ folder2/ folder3/

After execution, your krakend configuration files, templates, and subtemplates should be migrated to the latest version.

### YAML and other formats
The tool works, too, if you want to change the version to YAML, TOML, or other formats (even documentation `.md`). To do that, pass the pattern you'd like to use `-p "*.yml,*.md"`.

The only limitation for non JSON files is that you will need to manually change the `version` value. Set `version = 3` for KrakenD 2.0 and above.

## Build
If you need to make modifications to this migration tool:

1- Clone the repo

    git clone git@github.com:devopsfaith/krakend-config-migrator.git

2- Modify it and build it:

    cd krakend-config-migrator
    go build ./cmd/krakend-config-migrator
