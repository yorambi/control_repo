node default {
  file {'/root/README':
    ensure  => file,
    content => 'Hello World',
    owner   => 'root',
  }
}
