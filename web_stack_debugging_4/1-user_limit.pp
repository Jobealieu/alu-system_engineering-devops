# Increase file descriptor limits for holberton user to prevent 'Too many open files' error
exec { 'change-os-configuration-for-holberton-user':
  command => 'sed -i "/holberton/d" /etc/security/limits.conf; \
echo "holberton soft nofile 4096" >> /etc/security/limits.conf; \
echo "holberton hard nofile 8192" >> /etc/security/limits.conf',
  path    => ['/usr/bin', '/bin', '/usr/sbin'],
}
