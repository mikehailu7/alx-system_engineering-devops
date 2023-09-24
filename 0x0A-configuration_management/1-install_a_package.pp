# This will install flask from pip3
# Author: MikiasHailu
package { 'flask' :
    ensure   => '2.1.0',
    provider => 'pip3',
    }
