FROM fedora:28

RUN dnf update -y && dnf install strongswan -y

ADD ./strongswan.conf /etc/strongswan/strongswan.conf
ADD ./ipsec.conf /etc/strongswan/ipsec.conf


ENTRYPOINT ["/usr/sbin/strongswan"]
CMD ["start","--nofork"]
