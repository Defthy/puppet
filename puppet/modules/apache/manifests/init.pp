class apache {
 package {"apache2":
 ensure => "installed",
 allowcdrom => true, 
}

 file {"/var/www/html/index.html":
 content=>"Welcome\n",
 }


 file {"/etc/apache2/sites-enabled/000-default.conf":
 ensure=>'absent',
 notify=>Service["apache2"],
 }

 service {"apache2":
 ensure=>"running",
 enable=>"true",
 require=>Package["apache2"],
 }
}
