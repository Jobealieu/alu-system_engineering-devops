# Increase the file descriptor limits for the holberton user
# This manifest fixes the "Too many open files" error

exec { 'change-os-configuration-for-holberton-user':
  command => 'bash -c "sed -i \"s/holberton hard nofile 5/holberton hard nofile 50000/\" /etc/security/limits.conf && sed -i \"s/holberton soft nofile 4/holberton soft nofile 50000/\" /etc/security/limits.conf"',
  path    => ['/bin', '/usr/bin', '/usr/sbin', '/usr/local/bin'],
}
