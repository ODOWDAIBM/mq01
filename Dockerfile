FROM icr.io/ibm-messaging/mq

RUN useradd johndoe -G mqm && \
    echo johndoe:passw0rd | chpasswd

COPY config.mqsc /etc/mqm/

# FROM cp.icr.io/cp/ibm-mqadvanced-server-integration@sha256:e527f7279954a0abd9e5a50b8287dbdc3fff36aaeacf0335ebc0c4f7a0aab58e

# COPY *.mqsc /etc/mqm/
