# TODO: use a more legit nginx container and pin it to a version
FROM jojomi/nginx-static

# Add our rendered content to the default content location
ADD public/ /var/www/

# expose port 80 that nginx runs on
EXPOSE 80
