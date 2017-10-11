#!groovy
pipeline {
  agent { label 'public' }
  options {
    timeout(time: 30, unit: 'MINUTES')
  }
  stages {
    stage('All') {
      steps {
        sh '''
          set -euo pipefail
          export GOPATH="${WORKSPACE}" PATH="${PATH}:${WORKSPACE}/bin"
          make all
        '''
      }
    }
  }
  post {
    always {
      sh '''
        set -euo pipefail
        make stop
      '''
    }
  }
}
