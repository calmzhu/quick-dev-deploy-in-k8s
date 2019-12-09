FROM docker

RUN echo "https://mirrors.aliyun.com/alpine/v3.10/main/" > /etc/apk/repositories
RUN echo "https://mirrors.aliyun.com/alpine/v3.10/community/" >> /etc/apk/repositories

RUN apk add tzdata
RUN apk add openjdk8-jre-base
RUN apk add git
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apk add --update openssh 
RUN rm  -rf /tmp/* /var/cache/apk/*
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key
RUN ln -sf /usr/local/bin/docker /usr/bin/docker
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
RUN echo root:123456 | chpasswd
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]
