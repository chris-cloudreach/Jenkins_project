pipeline {
  agent {
     node { 
        label '"Slave Server"'
        } 
  }
  stages {
    // stage('Checkout Scm') {
    //   steps {
    //     git 'https://github.com/chris-cloudreach/Jenkins_project.git'
    //   }
    // }

    stage('Shell script 0') {
      steps {
        sh '''
CNAME=pswebsite
if [ "$(sudo docker ps -qa -f name=$CNAME)" ]; then
    echo ":: Found container - $CNAME"
    if [ "$(sudo docker ps -q -f name=$CNAME)" ]; then
        echo ":: Stopping running container - $CNAME"
        sudo docker container stop $CNAME;
    fi
    echo ":: Removing stopped container - $CNAME"
    sudo docker rm $CNAME;
fi
rm -rf ./Jenkins_project
git clone https://github.com/chris-cloudreach/Jenkins_project.git
cat ./Jenkins_project/Website/index.html
sudo docker build -t chriswebsiteimage ./Jenkins_project/Website
sudo docker container run --name pswebsite -p 443:80 -d --log-driver=awslogs --log-opt awslogs-group=slaveserverDockerLogGroup chriswebsiteimage


'''
      }
    }

  }
}