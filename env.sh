export MOODLE_DOCKER_WWWROOT=/Users/kwiliarty/docker/stacks/hc34/moodle
export MOODLE_DOCKER_DB=mysql
export MOODLE_DOCKER_PHP_VERSION=7.1
export MOODLE_DOCKER_BROWSER=chrome
export MOODLE_DOCKER_WEB_HOST=hc34.local
export MOODLE_DOCKER_WEB_PORT=8034
export MOODLE_DOCKER_SELENIUM_VNC_PORT=5934

# My own convenience stuff
compose="${MOODLE_DOCKER_WWWROOT%/moodle}/bin/moodle-docker-compose"
alias moodle-cron="${compose} exec webserver php admin/cli/cron.php"
alias moodle-db="${compose} exec db mysql -u moodle -pm@0dl3ing moodle"
