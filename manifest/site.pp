node default {
  file {'/root/README':
    ensure => file,
    content => 'THIS IS A README!',
  }
}
