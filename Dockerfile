FROM fedora:28

RUN dnf update -y && dnf install strongswan -y

ENTRYPOINT ["/usr/sbin/strongswan"]
CMD ["start","--nofork"]
