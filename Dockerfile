# Tomcat 9: el proyecto usa javax.* (Servlet 3.1) y JSTL 1.2
FROM tomcat:9.0-jdk17

# Quita las apps de ejemplo y publica el proyecto como raiz del sitio
RUN rm -rf /usr/local/tomcat/webapps/*
COPY . /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
CMD ["catalina.sh", "run"]
