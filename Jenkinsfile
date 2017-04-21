pipeline {
  agent any

  stages {
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
