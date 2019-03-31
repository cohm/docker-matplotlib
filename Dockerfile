FROM alpine
MAINTAINER Christian Ohm <ohm@cern.ch>

RUN apk add --no-cache libpng freetype libstdc++ python py-pip git
RUN apk add --no-cache --virtual .build-deps \
	    gcc \
	    build-base \
	    python-dev \
	    libpng-dev \
	    musl-dev \
	    freetype-dev
RUN pip install numpy \
	&& pip install matplotlib \
	&& apk del .build-deps

