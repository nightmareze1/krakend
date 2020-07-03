FROM devopsfaith/krakend:config-watcher

COPY /tmp/config-krakend.json /etc/krakend/krakend.json

EXPOSE 8080 8090 9091
