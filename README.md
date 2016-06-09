# kmcculloch/vim-php

PHP vim integration.

## Install Syntastic

Using Vundle, add to your .vimrc:

`Plugin 'scrooloose/syntastic'`

## Install PHP CodeSniffer

Review which composer packages are installed:

`composer global show`

If `PHP_CodeSniffer` is not among them, install it and the external PHP
standards for Symfony2, PHPSpec and Drupal:

```
composer global require "squizlabs/php_codesniffer=*"

composer global require escapestudios/symfony2-coding-standard:~2.0

composer global require kmcculloch/phpspec-code-sniffer:~0.1@dev

composer global require drupal/coder
```

Tell phpcs where to find the standards:

```
phpcs --config-set installed_paths ~/.composer/vendor/escapestudios/symfony2-coding-standard,~/.composer/vendor/kmcculloch/phpspec-code-sniffer/,~/.composer/vendor/drupal/coder/coder_sniffer
```

Make sure they are there:

```
phpcs -i
```
