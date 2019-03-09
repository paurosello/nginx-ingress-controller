FROM quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.22.0

USER 0
RUN  setcap    cap_net_bind_service=-ep /nginx-ingress-controller \
    && setcap    cap_net_bind_service=-ep /usr/sbin/nginx
USER www-data