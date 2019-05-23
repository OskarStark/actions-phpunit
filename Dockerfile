FROM php:7.3

LABEL "com.github.actions.name"="PHPUnit"
LABEL "com.github.actions.description"="A GitHub Action for PHPUnit"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/AltThree/actions-phpunit"
LABEL "homepage"="http://github.com/AltThree/actions-phpunit"
LABEL "maintainer"="James Brooks <james@alt-three.com>"

COPY --from=composer:1.8.4 /usr/bin/composer /usr/local/bin/composer

RUN composer global require phpunit/phpunit ^8.0 \
    && composer global show | grep phpunit

ADD entrypoint.sh / entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
