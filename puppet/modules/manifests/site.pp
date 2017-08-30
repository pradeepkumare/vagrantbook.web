node web {  
 class{"apache":
  default_vhost => false,
  }
  apache::vhost{"default-host":
    docroot => "/var/www/html",
    docroot_owner => 'www-data',
    docroot_group => 'www-data',
    default_vhost => true,
    logroot => '/var/log/apache2',
    port => 80,
    }
}
