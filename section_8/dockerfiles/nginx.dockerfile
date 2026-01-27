FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

COPY nginx/nginx.conf .

# Rename the file
RUN mv nginx.conf default.conf 

# Switch the workdir to this
WORKDIR /var/www/html

# Copy to the new workdir
COPY src .