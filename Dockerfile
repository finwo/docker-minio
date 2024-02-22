FROM alpine:edge

RUN apk add \
  curl \
  minio

RUN mkdir -p /opt/minio
ADD entrypoint.sh /opt/minio/entrypoint.sh

ENTRYPOINT ["/opt/minio/entrypoint.sh"]
