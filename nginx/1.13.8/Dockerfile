# Version: 0.0.1
FROM nginx:1.13.8
MAINTAINER Sligcm "sligcm@gmail.com"
RUN ["ln", "-sf", "/usr/share/zoneinfo/Asia/Shanghai", "/etc/localtime"]
COPY nginx/shells/ /etc/nginx/shells/
RUN  ["chmod", "-R", "700", "/etc/nginx/shells/"]
RUN  ["/bin/bash", "/etc/nginx/shells/permission.sh"]
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/domains/ /etc/nginx/domains/
COPY nginx/ssl_certificates/ /etc/nginx/ssl_certificates/
CMD ["nginx", "-g", "daemon off;"]