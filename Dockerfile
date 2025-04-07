# Use official PHP Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy the app to the container
COPY ./src/ /var/www/html/

# Expose port 80
EXPOSE 80
