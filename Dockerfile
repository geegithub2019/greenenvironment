FROM nginx:1.17.6
#FROM python:3.7.3-stretch

# Custome index page
COPY index.html /usr/share/nginx/html
