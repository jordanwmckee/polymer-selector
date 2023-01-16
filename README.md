# Polymer Selector

## Description

Website granting access to a large database of polymers, where the user can 
search for, filter, update, or view all data

## Deployment

### Docker

To deploy site with docker, simply clone the repository, `cd` into the `/docs` directory, and run `docker-compose up`. 

This will pull the docker image for the site and deploy it on localhost:80. The database will be manageable through localhost:8080.

### XAMPP

To deploy with XAMPP, clone the repository, and add its contents to the `htdocs` subdirectory of XAMPP's install directory and run the apache & sql servers.