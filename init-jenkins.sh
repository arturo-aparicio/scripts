#/bin/sh
rm -f /tmp/jenkins-1.0.21.zip
if [ ! -f /var/lib/jenkins/init.txt ]; then
    echo "First time setup of Jenkins container.... this may take a few minutes"
    cd /tmp
    wget https://dl.bintray.com/jfrog/enterprise-trial-installer/jfrog/jenkins/jenkins-1.0.21.zip
    unzip jenkins-1.0.21.zip
    mv -n /tmp/jfrog/data/jenkins/* /var/lib/jenkins/
    touch /var/lib/jenkins/init.txt
fi
