# Author: Mikias Hailu
exec {'update':
<<<<<<< HEAD
	provider => shell,
		 command  => 'sudo apt-get -y update',
		 before   => Exec['install Nginx'],
}
exec {'install Nginx':
	provider => shell,
		 command  => 'sudo apt-get -y install nginx',
		 before   => Exec['add_header'],
}

exec { 'add_header':
	provider    => shell,
		    environment => ["HOST=${hostname}"],
		    command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
		    before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
	provider => shell,
		 command  => 'sudo service nginx restart',
=======
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}
exec {'install Nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['add_header'],
}
exec { 'add_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
>>>>>>> 993011f711fbd4f72a7440a5c8897b504ed9a210
}
