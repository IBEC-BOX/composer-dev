# Commands composer-local/composer-dev for Linux/MacOS

This script will help you in developing composer packages

## Requirements
OS:
- Linux
- MacOS

libs:
- curl
- jq

For install the packages **jq** and **curl**
```bash
# Linux
sudo apt install jq curl

# MacOS
brew install jq curl
```

## Installation

To install `composer-local` and `composer-dev`, you should run the install script. To do that, you may either download and run the script manually, or use the following cURL command:

```bash
curl -s -o- https://raw.githubusercontent.com/ibec-box/composer-dev/main/install.sh | sudo bash
```

## Usage composer-local command

Inside the project where the **composer.json** file exists, use the `composer-local` command instead of `composer`. Examples:

```bash
composer-local install
composer-local update
composer-local dump-autoload

# ... and other composer commands
```

These commands copy your **composer.json** file in **composer.local.json**, with the addition of the **"repositories"** key, where the path to the folder with composer packages is specified.

And local packages should be installed in the **PROJECT** folder:
```
./composer-packages/{username}/{package-name}
```

I recommend adding working files to your **.gitignore** file
```bash
echo composer-packages >> .gitignore
echo composer.local.json >> .gitignore
echo composer.local.lock >> .gitignore
```

## Usage composer-dev

Also, you may use command `composer-dev`,

```bash
composer-dev install
composer-dev update
composer-dev dump-autoload

# ... and other composer commands
```

This command working like `composer-local`. But packages should be installed in the **$HOME** folder:
```
~/composer-packages/{username}/{package-name}
```

I recommend adding working files to your **.gitignore** file
```bash
echo composer.dev.json >> .gitignore
echo composer.dev.lock >> .gitignore
```

## For only one local project
If you want to use this script for only one local project, you can download the script to your project using the command:
```bash
curl -s -o composer-local https://raw.githubusercontent.com/ibec-box/composer-dev/main/composer-local.sh
chmod +x composer-local
```

Then use the command in the project directory `./composer-local {option}`

## License

[MIT](https://choosealicense.com/licenses/mit/)
