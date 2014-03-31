### Tomcat 7 Docker Container###

[![Docker Repository on Quay.io](https://quay.io/repository/jdgoldie/tomcat7/status "Docker Repository on Quay.io")](https://quay.io/repository/jdgoldie/tomcat7)

Installs Tomcat 7 on 64-bit Ubuntu.  A prebuilt image is available at quay.io.

    docker pull quay.io/jdgoldie/tomcat7
    
Usage:
    
    docker run -d -p 8080:8080 8443:8443 quay.io/jdgoldie/tomcat7:latest

The manager user/password is tomcat/tomcat.  Add war files to /usr/local/tomcat/webapps to have them deployed.


##### Current Configuration #####

* Ubuntu 12.10
* Oracle JDK 8
* Tomcat 7.0.52

Copyright &copy; 2014 Joshua Goldie <a href="https://twitter.com/jdgoldie" class="twitter-follow-button" data-show-count="false" data-dnt="true">Follow @jdgoldie</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
