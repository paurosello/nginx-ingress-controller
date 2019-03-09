FROM quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0

USER 0
RUN  setcap CAP_NET_BIND_SERVICE=+eip /nginx-ingress-controller && setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/nginx
USER www-data
