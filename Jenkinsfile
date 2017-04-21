pipeline {
  agent any

  environment {
    // solves issue with windows backslashes in .csproj files when using nunit-console
    MONO_IOMAP = 'all'
  }

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
