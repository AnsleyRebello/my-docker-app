FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy everything into Nginx public directory
COPY . /usr/share/nginx/html

# Copy custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]