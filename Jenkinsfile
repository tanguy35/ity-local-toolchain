pipeline {
  agent any
  stages {
//    stage('Snyk scan') {
//	  steps {
//		snykSecurity additionalArguments: '--all-projects', snykInstallation: 'snyk', snykTokenId: 'SNYK_TOKEN'
//	  }
//	}
    stage('Build result') {
      steps {
        sh 'docker build -t tanguyn/ity:result ./result'
      }
    } 
    stage('Build vote') {
      steps {
        sh 'docker build -t tanguyn/ity:vote ./vote'
      }
    }
    stage('Build worker') {
      steps {
        sh 'docker build -t tanguyn/ity:worker ./worker'
      }
    }
    stage('Push result image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhubcredentials', url: '') {
          sh 'docker push ity/ity:result'
        }
      }
    }
    stage('Push vote image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhubcredentials', url: '') {
          sh 'docker push tanguyn/ity:vote'
        }
      }
    }
    stage('Push worker image') {
      steps {
        withDockerRegistry(credentialsId: 'dockerhubcredentials', url: '') {
          sh 'docker push tanguyn/ity:worker'
        }
      }
    }
//    stage('Deploy to Kubernetes') {
//      steps {
//        kubernetesDeploy(configs: 'kube-deployment.yml', kubeconfigId: 'kubeconf')
//      }
//    }
  }
}
