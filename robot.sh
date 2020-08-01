#!/bin/bash

CMD="$2_$1"
testdir="$3"
echo "**Docker $1 for $2**"

shift 2

case "${CMD}" in
    dev_start-test)
        docker start -a selenium-testsuite
        ;;
    dev_stop-test)
        set +e
        docker rm -f selenium-testsuite
        set -e
        ;;
    dev_rebuild-test)
        docker rm -f selenium-testsuite
        docker pull devopsdojo/selenium-yb:latest
        docker create --name="selenium-testsuite" devopsdojo/selenium-yb:latest
        sed '3q;d' /tmp/shortname.txt | sed 's/8080/9966/1' | xargs -I 'my_arg' sed -i 's#http://petclinic#my_arg#' src/test/selenium-robot/resources/resource.robot
        sleep 2s
        docker cp src/test/selenium-robot/PetclinicTestCases selenium-testsuite:/home/robotframework/src/test/selenium-robot
        docker cp src/test/selenium-robot/resources selenium-testsuite:/home/robotframework/src/test/selenium-robot
        ;;
    *)
        echo
        echo "Usage: $0 start-test|stop-test|rebuild-test dev"
        echo
        exit 1
esac
