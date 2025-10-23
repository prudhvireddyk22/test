    FROM ubuntu:latest

    # Install NGINX
    RUN apt-get update && \
        apt-get install -y nginx && \
        rm -rf /var/lib/apt/lists/*

    # Copy the custom index.html
    COPY index.html /var/www/html/index.nginx-debian.html

    # Expose port 80
    EXPOSE 80

    # Start NGINX
    CMD ["nginx", "-g", "daemon off;"]