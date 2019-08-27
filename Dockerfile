FROM altthree/circle-php-cli-73:1.1.0

LABEL "com.github.actions.name"="PHPUnit"
LABEL "com.github.actions.description"="A GitHub Action for PHPUnit"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/AltThree/actions-phpunit"
LABEL "homepage"="http://github.com/AltThree/actions-phpunit"
LABEL "maintainer"="James Brooks <james@alt-three.com>"

COPY --from=composer:1.9.0 /usr/bin/composer /usr/local/bin/composer

RUN composer require phpunit/phpunit ^8.0 \
    && composer show | grep phpunit

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
