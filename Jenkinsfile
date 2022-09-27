// pipeline {
//     agent any 
//     tools {
//       maven 'maven_home'
//     }
//     stages {
//       stage('maven test ') {
//         steps{
//             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rritsoft/hp-war-test-.git']]])
//             bat 'mvn clean package'
//              bat 'docker build -t  anjireddy3993/centos7:2.0  .'
//              bat  'docker login -u anjireddy3993  -p ASDasd123$'
//              bat 'docker push  anjireddy3993/centos7:2.0'

//             //  withCredentials([string(credentialsId: 'DOCKER-ASDasd123$', variable: 'text')]) {
//             //     bat 'docker login -u anjireddy3993  -p ${text}'
//             //   }  
//           }

//         }
//     }   

// }




pipeline {
  agent any 
  tools {
    maven "maven_home"
  }
  stages{
    stage('git checkout') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rritsoft/hp-war-test-.git']]])
        
           echo "hai"
           bat 'mvn clean validate '
           bat 'mvn  clean compile'
           bat  'mvn  clean test'
            bat 'mvn clean package'
            bat 'mvn  clean verify'
            bat 'mvn clean install '
//             bat 'mvn clean  deploy '
       }
    }
  
    stage('docker build ') {
      steps{
        bat 'docker build -t anjireddy3993/a:1.0   C:/Users/hi/Desktop/dockertest1'
        bat 'docker login -u  anjireddy3993   -p ASDasd123$'   
      }
    }
    stage('docker push') {
      steps{
        bat 'docker push anjireddy3993/a:1.0'
      }
    }
  
  
  
  
  }




}
