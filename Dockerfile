# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "gregorc96@gmail.com"
# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://40.114.121.72:8080 || exit 1

EXPOSE 8080

#copy server file
COPY server.js ./

#build server.js file
CMD node server.js
