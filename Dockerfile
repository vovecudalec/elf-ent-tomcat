FROM prettysmile/tomcat7

ENV REDIS_STORE_URL http://maven.gopivotal.com.s3.amazonaws.com/release/com/gopivotal/manager/redis-store/1.2.0.RELEASE/redis-store-1.2.0.RELEASE.jar
#ENV DMS_URL

RUN wget -P $CATALINA_HOME/lib $REDIS_STORE_URL

COPY context.xml $CATALINA_HOME/conf/

CMD /opt/apache-tomcat-7.0.75/bin/catalina.sh start && tail -f /opt/apache-tomcat-7.0.75/logs/catalina.out
