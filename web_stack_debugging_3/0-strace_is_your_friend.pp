#puppet manifest to rename a file and create a file
# class-wp-locale.php instead of class-wp-locale.phpp in wp-settings.php

exec { 'fix file name':
     command  => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
     provider => 'shell'
}