# Web Stack Debugging #3

Debug a WordPress website running on LAMP stack using strace to identify and fix issues.

## Background

WordPress is running on a LAMP (Linux, Apache, MySQL, PHP) stack and returning a 500 Internal Server Error. Using strace to debug the issue at the system call level.

## Task

Use strace to find why Apache is returning a 500 error, then automate the fix using Puppet.

## Debugging Process

### 1. Reproduce the issue
```bash
curl -sI 127.0.0.1
# Returns: HTTP/1.0 500 Internal Server Error
```

### 2. Use strace to debug
```bash
# Attach to Apache process
ps aux | grep apache2
strace -p <APACHE_PID> -f -o /tmp/strace.log

# Make request in another terminal
curl 127.0.0.1

# Analyze output
grep -i "no such file" /tmp/strace.log
```

### 3. Issue found
WordPress wp-settings.php file has a typo: `.phpp` instead of `.php`

Example error in strace:
```
open("/var/www/html/wp-includes/class-wp-locale.phpp", O_RDONLY) = -1 ENOENT (No such file or directory)
```

### 4. Fix with Puppet
The manifest fixes the typo by replacing all occurrences of `.phpp` with `.php` in wp-settings.php

## Files

- `0-strace_is_your_friend.pp`: Puppet manifest that fixes the WordPress typo

## Usage
```bash
# Apply the puppet manifest
puppet apply 0-strace_is_your_friend.pp

# Verify fix
curl -sI 127.0.0.1:80
# Should return: HTTP/1.1 200 OK

curl -s 127.0.0.1:80 | grep Holberton
# Should show WordPress page content
```

## Requirements

- Ubuntu 14.04 LTS
- Puppet v3.4
- puppet-lint 2.1.1
- Apache2 with PHP
- WordPress installation

## Testing
```bash
# Check puppet syntax
puppet-lint 0-strace_is_your_friend.pp

# Test puppet manifest
puppet apply --noop 0-strace_is_your_friend.pp
puppet apply 0-strace_is_your_friend.pp
```

## Common WordPress/LAMP Issues

- File permission errors
- Missing PHP extensions
- Database connection issues
- File typos (.phpp instead of .php)
- Configuration errors
