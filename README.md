# Mocker

Mocker is a collection of environment variables and aliases intended to smooth the path when working with Moodle Docker. 

## Rationale

Moodle Docker uses environment variables instead of configuration when building the Docker stack for local Moodle development. If you ever expect to have more than one Moodle Docker it becomes quite inconvenient to switch between them. Mocker provides an `env.sh` file that stores the environment variables relevant to a given instance. It's a kind of configuration for the zero-configuration application. The idea is to `source` the `env.sh` file, and then you're ready to go.

In addition, Moodle Docker has wrapped the usual `docker compose` command in `bin/moodle-docker-compose`. It's awkard to type, especially in you are no longer in the top-level directory for your installation. Mocker provides a passle of aliases to make several of the `compose` commands more convenient. This includes things like makeing a dump of your database, logging into a database CLI, and running automated tests.

## Usage

### Installation

1. Start by cloning the Moodle Docker project into some folder