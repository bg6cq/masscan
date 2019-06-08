FROM alpine:3.9
LABEL maintainer "james@ustc.edu.cn"

RUN apk --no-cache add gcc make git libgcc libc-dev linux-headers libpcap-dev && \
    cd /tmp && \
    git clone https://github.com/robertdavidgraham/masscan && \
    cd masscan && \
    make && \
    strip bin/masscan && \
    mv bin/masscan /bin && \
    rm -rf /tmp/masscan && \
    apk del gcc make git libgcc libc-dev linux-headers

ADD run.sh /

ENTRYPOINT ["/run.sh"]
