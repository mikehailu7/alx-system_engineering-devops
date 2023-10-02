#!/usr/bin/env bash
# Author: MikiasHailu
file { 'ect/ssh/ssh_config':
	ensure => present,
content =>"
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthenticaiton no
	",
}
