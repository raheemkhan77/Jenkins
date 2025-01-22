# install Jenkins on ubuntu 22-JAN-2025 Wednesday
# Java is pre-requisite to install java ( java v 17 or 21 openjdk-17)
# install java on ubuntu 
java -version
sudo apt install openjdk-17-jre-headless ( s/w required openjdk-17 or 21)

#installation of jenkins on ubuntu 
# https://www.jenkins.io/doc/book/installing/linux/   Refrence: Jenkins official web page 

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
 
 # some imp linux xommand 
 sudo -i            # (become root user )
 sudo su - root        #switch to root user
 sudo su -  jenkins   # switch to jenkins user

 # when jenkins is installed a user named jenkins is create
 # which can be seen sudo cat /etc/passwd

 # after jenkins install, enable and restart jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

# password to unlock jenkins
/var/lib/jenkins/secrets/initialAdminPasswd

####################################################
# How to setup Master salve 
####################################################

