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
git clone https://github.com/chris-cloudreach/Jenkins_project.git
ls -al
cat /home/ubuntu/Jenkins_project/Website/index.html
sudo docker build -t chriswebsiteimage ./Jenkins_project/Website
sudo docker container run --name pswebsite -p 80:80 -d --log-driver=awslogs --log-opt awslogs-group=slaveserverDockerLogGroup chriswebsiteimage'''
      }
    }

  }
}