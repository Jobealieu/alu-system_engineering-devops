# Web Stack Debugging #2

Debug and configure web servers to run with proper user permissions and settings.

## Tasks

### Task 0: Run software as another user
Create a script that runs `whoami` command as a different user.

**Usage:**
```bash
./0-iamsomeoneelse <username>
```

### Task 1: Run Nginx as Nginx
Configure Nginx to:
- Run as `nginx` user (not root)
- Listen on port 8080 (all active IPs)

**Issues fixed:**
- Changed user from www-data to nginx in nginx.conf
- Changed listening port from 80 to 8080
- Set proper permissions for nginx user

### Task 2: 7 lines or less
Compact version of Task 1 in 7 lines or less.

**Requirements met:**
- 7 lines maximum
- No semicolons
- No && operators
- No wget
- Newline at end

## Files

- `0-iamsomeoneelse`: Script to run whoami as another user
- `1-run_nginx_as_nginx`: Full script to configure Nginx properly
- `100-fix_in_7_lines_or_less`: Compact 7-line version

## Testing
```bash
# Test Task 0
sudo ./0-iamsomeoneelse www-data

# Test Task 1 & 2
ps auxff | grep ngin[x]  # Should show nginx user
nc -z 0 8080 ; echo $?   # Should output 0
curl 0:8080              # Should show nginx page
```

## Requirements

- Ubuntu 14.04 LTS
- Nginx installed
- Scripts must be executable
- Must pass Shellcheck
