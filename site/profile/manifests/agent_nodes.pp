class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  host {‘web.puppet.vm’:
    ensure => present,
    ip => "${networking.ip}",
  }
  host {‘db.puppet.vm’:
    ensure => present,
    ip => "${networking.ip}",
  }
}
