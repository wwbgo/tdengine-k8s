ARG ver
FROM wwbgo/tdengine:base-$ver

WORKDIR /root
COPY run.sh run.sh
COPY cluster_init.sh cluster_init.sh

CMD ["bash","+x","./run.sh"]
