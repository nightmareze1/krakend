FROM devopsfaith/krakend:config-watcher

COPY config-krakend.json /etc/krakend/krakend.json

EXPOSE 8080 8090 9091
