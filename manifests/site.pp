node default {
  file {'/root/README':
    ensure  => file,
    content => 'Hello World',
    owner   => 'root',
  }
}

node /^web/ { 
  include role::app_server
}

node /^db/ {
  include role::db_server
}
