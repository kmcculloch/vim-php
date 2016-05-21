# kmcculloch/vim-php

PHP vim integration.

## Install Syntastic

Using Vundle, add to your .vimrc:

`Plugin 'scrooloose/syntastic'`

## Install PHP CodeSniffer

Review which composer packages are installed:

`composer global show`

If `PHP_CodeSniffer` is not among them, install it and the two external PHP
standards for Symfony2 and Drupal:

`composer global require "squizlabs/php_codesniffer=*"`

`composer global require escapestudios/symfony2-coding-standard:~2.0`

`composer global require drupal/coder`

Add Symphony2 and Drupal to the phpcs installed standards:

`phpcs --config-set installed_paths /home/kevin/.composer/vendor/escapestudios/symfony2-coding-standard,/home/kevin/.composer/vendor/drupal/coder/coder_sniffer`

Make sure they are there:

`phpcs -i`

## Toggle standards

To toggle between PHPCS standards by hand, use:

`phpcs --config-set default_standard Symfony2`

`phpcs --config-set default_standard Drupal`

The function VimPhpBufWrite() in plugin/vim_php.vim will toggle this
configuration any time a file is written so that the checker uses the right
standard.
