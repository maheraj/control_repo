class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCYP0jPafX7vqOOP8nkr2uJ5+MxtaE0t5+h4qcZebJfWsZ20dSFtx8+fvhKNO31ty7B2vpysW2v4KN+thtyzpuM7/D8x49uX4nv/nb4aZ1pAKcM5KqIU04xydyliPZyabsev5HNw0BN5d9ovFadSm7bOs446KgLKXgj9h0YPvC7DgYDOGWQPXHSVFXFhd3Q1I/j1vgHocH+P/PIiQVqgU5HzIpQZEHE1Q3QrkldZgBSEXzVSx3/XppHmCuOElN/nmeSxsfPpyyOLLrP6tdP/oyOI4ao1zcSEo9SEujACrRVsp/y9xVfptlwCNW7E+TmzFcHHKVbLaKpmmUL2KHtxqDV',
  }

}
