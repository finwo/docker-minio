FROM alpine:edge

RUN apk add --no-cache \
  curl \
  minio

RUN mkdir -p /opt/minio
ADD entrypoint.sh /opt/minio/entrypoint.sh

ENTRYPOINT ["/opt/minio/entrypoint.sh"]
CMD ["minio"]
