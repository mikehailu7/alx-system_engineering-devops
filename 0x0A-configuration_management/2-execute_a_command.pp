# This will create a process named killmenow 
# Author: MikiasHailu
exec { 'pkill killmenow' :
    path    => '/bin/',
    command => 'pkill killmenow',
    }
