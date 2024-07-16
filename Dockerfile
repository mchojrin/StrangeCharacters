FROM php:8.3.9-cli-alpine

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app

CMD ["php", "entry_point.php"]