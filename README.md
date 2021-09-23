# chroni.cc Ansible

Collection of productive and experimental Ansible setups.

## Requirements

For smooth operation if this repository, ensure following packages are installed on your system.

* Docker
* Vagrant
* Poetry

When poetry has been installed, install the rest of the requirements with `poetry install`.

## How To

To work with this repository, always start a poetry shell with `poetry shell`.

## Quicklinks

* [Ansible Cheatsheet](Cheatsheet.md)

## Test Environment

This repository comes with an integrated test environment providing the necessary means for testing Ansible against various distributions.

For testing purposes, always use the `test.yml` inventory.

### Container

Container are small, consume few resources and are fast to start. They can be used for most test cases.

* Start all containers: `docker-compose up -d --build`
* Start a specific container: `docker-compose up -d --build <container_name>`
* Stop all containers: `docker-compose down -v`
* Stop a specific container: `docker-compose stop <container_name>`

### Virtual Machines

VMs can be used for test cases where containers are not suited for (e.g. ssh connection or kernel). Since VMs consume a lot of resources, you should never start all VMs at the same time.

* Start a specific VM: `vagrant up <fqdn>`
* Stop all VMs: `vagrant destroy -f`

## License

MIT
