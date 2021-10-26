class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1Otgfme1KeH4R7EZe2VL4XQ+OkCL0A/+9AcX6pyDrraR+Z1srA2NqFUeQDo46zLRV0IytNKU8y8vu4nKgpPN3TBm2b2R90rPh3FXAOOWNzs1PINxtbWzejePbl8IIVvRi26I03mxzShjc18FyZiG5FI8JMDVDMn6I/1ahPC5yfNeKy0n3zBA0IrcdKwRw7h3X4q7esPBex0Oro26gTFgr3LQI9TfNWZB3jiNTQ8jy+n62l0pDP1NPRXH/LLF6pl+uf8lpRRkXa5T3V1fbllHBEO3OY+4Nw8KLwLTPquqU0575Vs5ujYXX7pnfGM8AaEVtULlh+7YkEj8vNdIbNtfP',
  }  
}
