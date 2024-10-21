# Use official PHP Apache image
FROM php:8.2.0-apache

# Set working directory
WORKDIR /var/www/html

# Enable Apache mod_rewrite for pretty URLs
RUN a2enmod rewrite

# Update package list and install required libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    libicu-dev \
    libmariadb-dev \
    libmariadb-dev-compat \
    libxml2-dev \
    libzip-dev \
    zlib1g-dev \
    libcurl4-openssl-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libonig-dev \
    unzip \
    zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer from the official Composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install required PHP extensions
# Install gettext
RUN docker-php-ext-install gettext

# Install intl
RUN docker-php-ext-install intl

# Install pdo_mysql
RUN docker-php-ext-install pdo_mysql

# Install mysqli
RUN docker-php-ext-install mysqli

# Install xml
RUN docker-php-ext-install xml

# Install mbstring
RUN docker-php-ext-install mbstring

# Install curl
RUN docker-php-ext-install curl

# Install zip
RUN docker-php-ext-install zip

# Install bcmath
RUN docker-php-ext-install bcmath


# Configure and install GD with support for JPEG and FreeType
RUN docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd

# Copy application files local to the container
COPY . /var/www/html

# Set permissions for storage
RUN chown -R www-data:www-data /var/www/html/storage
RUN chmod -R 775 /var/www/html/storage

# Clean up to reduce the size of the image
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose port 80 for Apache
EXPOSE 80
