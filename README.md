# chroni.cc Ansible

Collection of productive and experimental ansible setups.

## Requirements

For smooth operation if this repository, ensure following packages are installed on your system.

* Docker
* Vagrant
* Poetry

When poetry has been installed, install the rest of the requirements with `poetry install`.

## How To

To work with this repository, always start a poetry shell with `poetry shell`.

## Test Environment

This repository comes with an integrated test environment providing the necessary means for testing ansible against various distributions.

* Start all containers: `docker-compose up -d --build`
* Start a specific container: `docker-compose up -d --build <container_name>`
* Stop all containers: `docker-compose down -v`
* Stop a specific container: `docker-compose stop <container_name>`

For testing purposes, always use the `test.yml` inventory.

## License

MIT
