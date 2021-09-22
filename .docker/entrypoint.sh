#!/usr/bin/env bash


# Functions
############

function print_info {
    echo -e "\e[95m[INFO] ${1}\e[39m"
}

function print_error {
    echo -e "\e[91m[ERROR] ${1}\e[39m"
}


# Startup
##########

case $1 in
    sleep )
        print_info "Startup // Sleeping endlessly ..."
        trap "exit" SIGHUP
        trap "exit" SIGINT
        trap "exit" SIGTERM
        while true; do
            sleep 1
        done
        ;;
    * )
        print_info "Startup // Command Execution '${@}'"
        exec "$@"
        ;;
esac
