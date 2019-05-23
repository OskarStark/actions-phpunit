#!/bin/sh -l

sh -c "composer install --no-scripts --no-progress && vendor/bin/phpunit $*"
