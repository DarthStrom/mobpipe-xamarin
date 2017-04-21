pipeline {
  agent any

  stages {
    stage('Prebuild') {
      steps {
        sh 'source ci/setenv.sh'
      }
    }
    
    stage('Unit Test') {
      steps {
        sh 'ci/unitTest.sh'
      }
    }

    stage('UI Test') {
      steps {
        sh 'ci/uiTest.sh'
      }
    }
  }
}
