# Use an official WordPress image as the base
FROM wordpress:latest

# Set the theme name and directory
ARG THEME_NAME=mytheme
ARG THEME_DIR=/var/www/html/wp-content/themes/${THEME_NAME}

# Copy the theme files to the appropriate location
COPY ./wp-content/themes/${THEME_NAME} ${THEME_DIR}

# Set up the WordPress configuration
COPY ./wp-config.php /var/www/html/wp-config.php

# Expose the default WordPress port
EXPOSE 80

# Start the Apache server
CMD ["apache2-foreground"]

