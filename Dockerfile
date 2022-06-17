FROM python:3-alpine

RUN pip install truffleHog

RUN apk --update add git less openssh && \
  rm -rf /var/lib/apt/lists/* && \
  rm -f /var/cache/apk/*

COPY "trufflehog.sh" "/trufflehog.sh"

ENTRYPOINT ["/trufflehog.sh"]
