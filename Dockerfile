FROM alpine:3.7

COPY keepalived.sh  /usr/bin/keepalived.sh
COPY keepalived.conf /etc/keepalived/keepalived.conf

ENV LANG=C.UTF-8 \
    TZ=Asia/Shanghai

RUN echo "" > /etc/apk/repositories \
&& echo "https://mirrors.aliyun.com/alpine/v3.7/main/" >> /etc/apk/repositories \
&& echo "https://mirrors.aliyun.com/alpine/v3.7/community/" >> /etc/apk/repositories \
&& apk --update -t --no-cache add keepalived iproute2 grep bash tcpdump  sed \
&& rm -rf /var/cache/apk/* \
&& ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
&& chmod +x /usr/bin/keepalived.sh

ENTRYPOINT ["/usr/bin/keepalived.sh"]
