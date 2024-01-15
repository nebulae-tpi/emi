FROM docker:dind
WORKDIR /app/builder
COPY emi/dist/ /app/builder/
RUN echo $(ls -1 /app/builder/emi)
COPY build-docker-hub.sh /app/builder/
COPY docker_hub_secrets.sh /app/builder/
COPY nginx.conf /app/builder/
# COPY /app/builder/emi/dist /app/builder/dist
COPY Dockerfile_nginx /app/builder/Dockerfile
RUN chmod -R 765 /app/builder
WORKDIR /app/builder
CMD [ "sh", "build-docker-hub.sh"]