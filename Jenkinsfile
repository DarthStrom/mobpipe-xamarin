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
        step([$class: 'NUnitPublisher', testResultsPattern: 'test-results/UnitTestResult.xml', debug: false, keepJUnitReports: true, skipJUnitArchiver:false, failIfNoResults: true])
      }
    }

    stage('UI Test') {
      steps {
        sh 'ci/uiTest.sh'
        step([$class: 'NUnitPublisher', testResultsPattern: 'test-results/UiTestResult.xml', debug: false, keepJUnitReports: true, skipJUnitArchiver:false, failIfNoResults: true])
      }
    }
  }
}
