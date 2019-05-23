#!/bin/sh -l

sh -c "composer install --no-scripts --no-progress && /root/.composer/bin/phpunit $*"
