pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        checkout scm
        sh 'ci/build.sh'
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
