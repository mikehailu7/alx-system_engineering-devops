#!/usr/bin/env bash
# Author: MikiasHailu
file { 'ect/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
