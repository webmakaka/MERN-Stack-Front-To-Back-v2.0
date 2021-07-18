FROM mongo:4.4.6

# ENV MONGO_INITDB_DATABASE: ${DATABASE}
# ENV MONGO_INITDB_ROOT_USERNAME: ${USERNAME}
# ENV MONGO_INITDB_ROOT_PASSWORD: ${PASSWORD}

# COPY ./docker/mongodb/init.js /docker-entrypoint-initdb.d

CMD [ "mongod", "--bind_ip", "0.0.0.0" ]

# EXPOSE 27017