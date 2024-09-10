
# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

FROM tomcat

RUN rm -rf /user/local/tomcat/webapps/*
COPY *.war /user/local/tomcat/webapps
expose 8080
CMD ["catalina.sh","run"]
