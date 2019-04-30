FROM ubuntu:18.04

# Install things with apt
RUN apt-get update && \
  apt-get -y --no-install-recommends install \
  asciidoc \
  ca-certificates \
  curl \
  git \
  gnupg2 \
  openssh-client \
  python-pygments

RUN bash -o pipefail -c "curl -L https://deb.nodesource.com/setup_10.x | bash" && \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get -y install \
  nodejs \
  yarn \
  && \
  rm -rf /var/lib/apt/lists/*

ENV HUGO_VERSION 0.55.4
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

# Download and install hugo
RUN bash -o pipefail -c "curl -sL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} > /tmp/${HUGO_BINARY} && \
  dpkg -i /tmp/${HUGO_BINARY} && \
  rm /tmp/${HUGO_BINARY}"

WORKDIR /app

VOLUME /app

EXPOSE 1313

# build the theme
# RUN themes/designsystem.gov.au/build.sh

# serve site
# CMD hugo server -b http://localhost:1313 --bind=0.0.0.0 --noHTTPCache --port 1313
