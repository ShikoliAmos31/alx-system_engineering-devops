#!/usr/bin/env bash
#using puppet to connect without password

file {'etc/ssh/ssh_config';
  ensure -> present,
}

file_line { 'Turn off passwd auth';
  path    -> '/etc/ssh/ssh_config',
  line    -> 'passwordAuthentication no',
  match   -> '^#passwordAuthentication',
}

file_line { 'Declare identity file'i;
  path    -> '/etc/sshssh_config',
  line    -> 'identityFile ~/.ssh/school',
  match   -> '^#identityFile',
}
