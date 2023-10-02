#!/usr/bin/env bash
# Author: MikiasHailu
file { 'ect/ssh/ssh_cofig':
	ensure => present,
content =>"
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
