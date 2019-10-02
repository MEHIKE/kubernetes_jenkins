#from jenkins/jenkins:lts-alpine
from jenkins/jenkins:lts

# Distributed Builds plugins
RUN /usr/local/bin/install-plugins.sh ssh-slaves

# install Notifications and Publishing plugins
RUN /usr/local/bin/install-plugins.sh email-ext
RUN /usr/local/bin/install-plugins.sh mailer
RUN /usr/local/bin/install-plugins.sh slack

# Artifacts
RUN /usr/local/bin/install-plugins.sh htmlpublisher

# UI
RUN /usr/local/bin/install-plugins.sh ansicolor
RUN /usr/local/bin/install-plugins.sh greenballs
RUN /usr/local/bin/install-plugins.sh simple-theme-plugin

# Scaling
RUN /usr/local/bin/install-plugins.sh kubernetes

RUN /usr/local/bin/install-plugins.sh git
RUN /usr/local/bin/install-plugins.sh git-client
RUN /usr/local/bin/install-plugins.sh git-server
RUN /usr/local/bin/install-plugins.sh git-changelog
RUN /usr/local/bin/install-plugins.sh git-forensics
RUN /usr/local/bin/install-plugins.sh git-parameter
RUN /usr/local/bin/install-plugins.sh github
RUN /usr/local/bin/install-plugins.sh github-pullrequest
RUN /usr/local/bin/install-plugins.sh workflow-aggregator
RUN /usr/local/bin/install-plugins.sh jenkins-multijob-plugin
RUN /usr/local/bin/install-plugins.sh build-pipeline-plugin
RUN /usr/local/bin/install-plugins.sh dashboard-view
RUN /usr/local/bin/install-plugins.sh job-dsl
RUN /usr/local/bin/install-plugins.sh test-results-analyzer
RUN /usr/local/bin/install-plugins.sh bootstraped-multi-test-results-report
RUN /usr/local/bin/install-plugins.sh perfpublisher
RUN /usr/local/bin/install-plugins.sh performance
RUN /usr/local/bin/install-plugins.sh disk-usage
RUN /usr/local/bin/install-plugins.sh monitoring
RUN /usr/local/bin/install-plugins.sh cloudbees-folder
RUN /usr/local/bin/install-plugins.sh view-job-filters
RUN /usr/local/bin/install-plugins.sh htmlresource
RUN /usr/local/bin/install-plugins.sh release
RUN /usr/local/bin/install-plugins.sh vs-code-metrics
RUN /usr/local/bin/install-plugins.sh adoptopenjdk
RUN /usr/local/bin/install-plugins.sh graphiteIntegrator
RUN /usr/local/bin/install-plugins.sh JDK_Parameter_Plugin
RUN /usr/local/bin/install-plugins.sh jdk-tool
RUN /usr/local/bin/install-plugins.sh pipeline-npm
RUN /usr/local/bin/install-plugins.sh nodejs
RUN /usr/local/bin/install-plugins.sh spring-initalzr
RUN /usr/local/bin/install-plugins.sh ssh-slaves
RUN /usr/local/bin/install-plugins.sh docker-java-api

# install Maven
USER root
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y maven && apt-get install -y maven
USER jenkins

