pipeline {

    agent any
    
    stages {

              stage('Dependency check') {
          steps {
              sh "mvn --batch-mode dependency-check:check"
          }
          post {
              always {
                  publishHTML(target:[
                      allowMissing: true,
                      alwaysLinkToLastBuild: true,
                      keepAll: true,
                      reportDir: 'target',
                      reportFiles: 'dependency-check-report.html',
                      reportName: "OWASP Dependency Check Report"
                  ])
              }
          }
      }
        
        stage('Build') {
            steps {
                echo 'Build'
                sh "mvn --batch-mode package" 
            }
        }

        stage('Archive Unit Tests Results') {
            steps {
                echo 'Archive Unit Test Results'
               step([$class: 'JUnitResultArchiver', testResults: 'target/surefire-reports/TEST-*.xml'])
            }
        }
        
        stage('Publish Unit Test results report') {
            steps {
                echo 'Report'
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: true, keepAll: false, reportDir: 'target/site/jacoco/', reportFiles: 'index.html', reportName: 'jacaco report', reportTitles: ''])

             }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploy'
                sh '''
                    for runName in `docker ps | grep "alpine-petclinic" | awk '{print $1}'`
                    do
                        if [ "$runName" != "" ]
                        then
                            docker stop $runName
                        fi
                    done
                    docker build -t alpine-petclinic -f Dockerfile.deploy .
                    docker run --name alpine-petclinic --rm -d -p 9966:8080 alpine-petclinic 
                '''
            }
        }
    }
}
