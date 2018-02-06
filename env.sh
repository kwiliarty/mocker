export MOODLE_DOCKER_WWWROOT=/Users/kwiliarty/docker/stacks/hc34/moodle
export MOODLE_DOCKER_DB=mysql
export MOODLE_DOCKER_PHP_VERSION=7.1
export MOODLE_DOCKER_BROWSER=chrome
export MOODLE_DOCKER_WEB_HOST=hc34.local
export MOODLE_DOCKER_WEB_PORT=8034
export MOODLE_DOCKER_SELENIUM_VNC_PORT=5934

# My own convenience stuff

alias mocker="${MOODLE_DOCKER_WWWROOT%/moodle}/bin/moodle-docker-compose"
alias mocker-behat="mocker exec webserver vendor/bin/behat --config /var/www/behatdata/behatrun/behat/behat.yml"
alias mocker-cron="mocker exec webserver php admin/cli/cron.php"
alias mocker-db="mocker exec db mysql -u moodle -pm@0dl3ing moodle"
alias mocker-down="mocker stop"
alias mocker-dump="mocker exec db mysqldump -h localhost -u moodle -pm@0dl3ing moodle"
alias mocker-php="mocker exec webserver php"
alias mocker-phpunit="mocker exec webserver vendor/bin/phpunit"
alias mocker-shell="mocker exec webserver /bin/bash"
alias mocker-stop="mocker stop"
alias mocker-task="mocker exec webserver php admin/tool/task/cli/schedule_task.php"
alias mocker-up="mocker up -d"
