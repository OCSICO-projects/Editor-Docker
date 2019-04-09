#!/bin/bash

composer install && chmod -R 777 vendor
php -r "file_exists('.env') || copy('.env.example', '.env');" && chmod -R 777 .env
php artisan migrate --force --seed
chmod -R 777 storage/

tail -f /dev/null
#exec "$@";