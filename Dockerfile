# jhthorsen/app-proxyforurl
#
# BUILD: docker build --no-cache --rm -t jhthorsen/app-proxyforurl .
# RUN:   docker run -it --rm -p 8080:3000 jhthorsen/app-proxyforurl
FROM alpine:3.5
MAINTAINER jhthorsen@cpan.org

RUN apk add -U perl perl-io-socket-ssl \
  && apk add -t builddeps build-base perl-dev wget \
  && wget -q -O - https://github.com/jhthorsen/app-proxyforurl/archive/master.tar.gz | tar xvz \
  && apk del builddeps \
  && rm -rf /root/.cpanm /var/cache/apk/*

ENV MOJO_MODE production
EXPOSE 3000
CMD ["daemon"]
ENTRYPOINT ["/app-proxyforurl-master/script/proxyforurl"]
