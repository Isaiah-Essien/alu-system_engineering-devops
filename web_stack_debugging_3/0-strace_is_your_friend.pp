# puppet manifest to rename a file and create a file

exec { 'fix file name':
  command  => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
  provider => 'shell'
}