FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy React build output
COPY build/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# This Dockerfile sets up an Nginx server to serve a React application.
# It starts from the official Nginx Alpine image, removes the default content,
# and copies the React build output into the appropriate directory for Nginx to serve.
