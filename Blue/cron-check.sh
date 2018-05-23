#!/bin/bash

function searchPW() {
  bat $1 | grep -n "[pP]assword|[pP]asswd|[pP]wd" | wc -l | read lines
  if [ $lines -gt 0 ];then
    warning "$lines possible passwords found"
  else
    fine "no possible passwords found"
  fi;
}

function checkW() {
  echo ""
}

function header() {
  echo -e "\033[36m[=========== $1\033[0m"
}

function subheader() {
  echo -e "\033[1;36m******** $1\033[0m"
}

function info() {
  echo -e "\033[1;30m$1\033[0m"
}

function warning() {
  echo -e "\033[31m>>>>>>>> $1\033[0m"
}

function fine() {
  echo -e "\033[32m++++++++ $1\033[0m"
}

header "Header"
info "info"
warning "warning"
fine "fine"
searchPW "./cron-check.sh"
