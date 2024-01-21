FROM nginx:latest

# Remove the default Nginx configuration file
# RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY default-config.conf /etc/nginx/nginx.conf

# Copy your HTML file into the Nginx server's root directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 (default port for HTTP)
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]