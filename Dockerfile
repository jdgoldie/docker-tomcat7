#
# A Dockerfile to create a Tomcat 7 container.
# Copyright(c) 2014 Joshua Goldie
# Provided under MIT license (http://opensource.org/licenses/MIT)
#  
FROM quay.io/jdgoldie/oracle-jdk8

# Add supervisor
RUN apt-get install -y supervisor

# Get tomcat 
RUN wget http://mirror.sdunix.com/apache/tomcat/tomcat-7/v7.0.52/bin/apache-tomcat-7.0.52.tar.gz

# Untar
RUN tar zxvf apache-tomcat-7.0.52.tar.gz 

# Move directory
RUN mv apache-tomcat-7.0.52 /usr/local/tomcat

# Clean up tar
RUN rm apache-tomcat-7.0.52.*
 
# Set up tomcat user so manager-gui and admin-gui work
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml 

# Add supervisord conf file
ADD tomcat7.conf /etc/supervisor/conf.d/tomcat7.conf
 
# Expose the ports for http and https
EXPOSE 8080 8443
 
# Start supervisord
CMD ["/usr/bin/supervisord"]