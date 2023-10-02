#!/usr/bin/env bash

file { 'ect/ssh/ssh_cofig':
ensure => present,

content =>"

	#SSH client configuration
	host*
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
