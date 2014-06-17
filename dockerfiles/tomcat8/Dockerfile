FROM hugojpinto/jdk:8

MAINTAINER Hugo Jose Pinto "https://github.com/hugojpinto"

ENV TOMCAT_VERSION 8.0.8

RUN wget --quiet --no-cookies http://archive.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/apache-tomcat8.tar.gz

# Unpack
RUN tar xzf /tmp/apache-tomcat8.tar.gz -C /opt
RUN mv /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat8
RUN rm /tmp/apache-tomcat8.tar.gz

# Remove unneeded apps
RUN rm -rf /opt/tomcat8/webapps/examples
RUN rm -rf /opt/tomcat8/webapps/docs
RUN rm -rf /opt/tomcat8/webapps/ROOT

ADD tomcat-users.xml /opt/tomcat8/conf/

ENV CATALINA_HOME /opt/tomcat8
ENV PATH $PATH:$CATALINA_HOME/bin

EXPOSE 8080

# Start Tomcat
CMD ["/opt/tomcat8/bin/catalina.sh", "run"]

