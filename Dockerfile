FROM registry.access.redhat.com/ubi8/php-74

ENV VERSION=2.4.3

WORKDIR /opt/app-root/src/

RUN curl -kL https://github.com/prasathmani/tinyfilemanager/archive/refs/tags/$VERSION.tar.gz | tar xvz \
  && mv tinyfilemanager-$VERSION/* . \
  && rm -rf tinyfilemanager-$VERSION

ENTRYPOINT /usr/libexec/s2i/run
