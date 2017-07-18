FROM teracy/angular-cli

ENV HOME=/home/nodejs
ENV APP_NAME=myapp

# before switching to user we need to set permission properly
COPY ./$APP_NAME/package.json $HOME/$APP_NAME/
RUN groupadd -r nodejs && \
    useradd -r -g nodejs -d /home/nodejs -s /sbin/nologin nodejs && \
    chown -R nodejs:nodejs $HOME

USER nodejs
WORKDIR $HOME/$APP_NAME

RUN npm install --unsafe-perm=true && \
    npm cache clean

CMD ["ng", "serve", "--host", "0.0.0.0" ]

