# vim-symfony

Symfony vim integration.

## Install Syntastic

Using Vundle, add to your .vimrc:

`Plugin 'scrooloose/syntastic'`

## Install PHP CodeSniffer

Review which composer packages are installed:

`composer global show`

If `PHP_CodeSniffer` is not among them, install it:

`composer global require "squizlabs/php_codesniffer=*"`
`composer global require escapestudios/symfony2-coding-standard:~2.0`
`composer global require drupal/coder`

Add Symphony2 and Drupal to the phpcs installed standards:

`phpcs --config-set installed_paths /home/kevin/.composer/vendor/escapestudios/symfony2-coding-standard,/home/kevin/.composer/vendor/drupal/coder/coder_sniffer`

Make sure it's there:

`phpcs -i`

Toggle between PHPCS standards:

`phpcs --config-set default_standard Symfony2`
`phpcs --config-set default_standard Drupal`
