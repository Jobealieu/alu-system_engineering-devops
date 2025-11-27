# Web Stack Debugging #0

This project involves debugging a Docker container to get Apache web server running and serving content.

## Task

Fix Apache in a Docker container to serve "Hello Holberton" on port 80.

## Solution

The issue was that Apache was installed but not running. Starting the Apache service resolves the problem.

## File

- `0-give_me_a_page`: Bash script that starts Apache service

## Usage
```bash
# Run the container
docker run -p 8080:80 -d -it holbertonschool/265-0

# Execute the fix script
docker exec -it <CONTAINER_ID> /path/to/0-give_me_a_page

# Test
curl 0:8080
```

## Requirements

- Ubuntu 14.04 LTS
- Docker
- Apache2
