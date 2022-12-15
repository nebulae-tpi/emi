FROM node:10.0.0
COPY build_emi.sh /app/builder/
COPY gcloud-service-key.json /app/builder/
RUN chmod -R 765 /app/builder/build_emi.sh
WORKDIR /app/builder
RUN sh build_emi.sh

FROM docker:dind
WORKDIR /app/builder
COPY build-docker-hub.sh /app/builder/
COPY docker_hub_secrets.sh /app/builder/
COPY --from=0  /app/builder/emi/dist /app/builder/dist
COPY Dockerfile_nginx /app/builder/Dockerfile
RUN chmod -R 765 /app/builder
WORKDIR /app/builder
CMD [ "sh", "build-docker-hub.sh"]