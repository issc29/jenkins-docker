FROM jenkins:2.60.2-alpine

USER root

# Install Docker and dependencies
RUN apk --update add \
  bash \
  iptables \
  ca-certificates \
  e2fsprogs \
  docker \
  && rm -rf /var/cache/apk/*

USER jenkins

ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
