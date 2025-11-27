# Web Stack Debugging #1

Debug and fix Nginx configuration issues in Ubuntu 20.04 containers.

## Tasks

### Task 0: Nginx likes port 80
Fix Nginx to listen on port 80 of all active IPv4 IPs.

**Issue:** Nginx is not properly configured or running on port 80.

**Solution:** Ensure the default site is properly symlinked and restart Nginx.

### Task 1: Make it sweet and short
Same fix as Task 0 but in 5 lines or less.

**Additional requirement:** Service must report nginx as "not running" while nginx actually works.

**Solution:** Start nginx directly instead of using service manager.

## Files

- `0-nginx_likes_port_80`: Full debugging script
- `1-debugging_made_short`: Compact 5-line solution

## Usage
```bash
# Run inside Ubuntu 20.04 container
./0-nginx_likes_port_80
curl 0:80  # Should show Nginx welcome page

# Short version
./1-debugging_made_short
curl 0:80  # Works
service nginx status  # Says "not running"
```

## Requirements

- Ubuntu 20.04 LTS
- Nginx installed
- Scripts must be executable
- Must pass Shellcheck
