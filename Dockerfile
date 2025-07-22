FROM debian:12-slim

RUN apt update && apt install -y openssh-server git \
    && mkdir /var/run/sshd \
    && useradd -m -s /bin/bash git \
    && mkdir -p /home/git/.ssh /repos \
    && chown -R git:git /home/git /repos \
    && chmod 700 /home/git/.ssh

COPY authorized_keys /home/git/.ssh/authorized_keys

RUN chown git:git /home/git/.ssh/authorized_keys && chmod 600 /home/git/.ssh/authorized_keys

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
