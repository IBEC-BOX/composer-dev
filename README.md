# composer-dev command for Linux/MacOS

This script will help you in developing composer packages

## Requirements

- curl
- jq

First, install the packages **jq** and **curl**
```bash
# Linux
sudo apt install jq curl

# MacOS
brew install jq curl
```

## Installation

To install `composer-dev`, you should run the install script. To do that, you may either download and run the script manually, or use the following cURL or Wget command:

```bash
curl -s -o- https://raw.githubusercontent.com/ast21/composer-dev/main/install.sh | sudo bash
```

## Usage

Inside the project where the **composer.json** file exists, use the `composer-dev` command instead of `composer`. Examples:

```bash
composer-dev install
composer-dev update
composer-dev dump-autoload
```

These commands copy your **composer.json** file in **composer.dev.json**, with the addition of the **"repositories"** key, where the path to the folder with composer packages is specified.

Packages should be installed in the folder:
```
~/composer-packages/{username}/{package-name}
```

I recommend adding **composer.dev.json** and **composer.dev.lock** files to your **.gitignore** file
```bash
echo composer.dev.json >> .gitignore
echo composer.dev.lock >> .gitignore
```

## License

[MIT](https://choosealicense.com/licenses/mit/)