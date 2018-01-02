# Version: 0.0.1
FROM mysql:5.7.20
MAINTAINER Sligcm "sligcm@gmail.com"
RUN ["ln", "-sf", "/usr/share/zoneinfo/Asia/Shanghai", "/etc/localtime"]
COPY mysql/conf.d/ /etc/mysql/conf.d/
#COPY mysql/shells/ /etc/mysql/shells/
#RUN  ["chmod", "-R", "700", "/etc/mysql/shells/"]
#RUN  ["/bin/bash", "/etc/mysql/shells/permission.sh"]