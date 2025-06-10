pipeline {
    agent any
    stages {
        stage('SCM Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/ishwarbarhate/maven.git'
            }
        }
        stage('Code validate') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn validate'
                }
            }
        }
        stage('Code compile') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn compile'
                }
            }
            
        }
        stage('Code test') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn test'
                }
            }
        }
        stage('Code Build ') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn package'
                }
            }
        }
        stage('Code Build 5') {
            steps {
                withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                    sh 'mvn package'
                }
            }
        }
       stage('create docker image') {
      steps {
        sh 'docker build -t michaeljackson1/ishwar:latest .'
      }
    }



    stage('push docker image to dockerhub') {
      steps {
        
        withDockerRegistry(credentialsId: 'DockerHubCredentials', url: 'https://index.docker.io/v1/') {
            
                sh 'docker push michaeljackson131469/ishwar:latest'
    }
}

    }
    }
}
