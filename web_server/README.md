Web Server Project README
Description
This project focuses on automating web server configuration using Bash scripts. It covers Nginx installation, DNS setup, HTTP redirects, custom error pages, and file transfers via SCP.

Project Details
	* Weight: 1
	* Duration: Nov 3, 2025 - Nov 9, 2025
	* Server: web-01 (Ubuntu 16.04 LTS)
	* IP: 98.93.145.166

Learning Objectives
	* Understanding web server roles and child processes
	* HTTP requests and response codes
	* DNS configuration and record types (A, CNAME, TXT, MX)
	* Nginx configuration and automation
	* HTTP redirects (301) and custom error pages (404)

Requirements
	* Editors: vi, vim, emacs
	* OS: Ubuntu 16.04 LTS
	* All Bash scripts must be executable
	* Must pass Shellcheck (version 0.3.7)
	* First line: #!/usr/bin/env bash
	* Second line: Comment explaining the script
	* Cannot use systemctl (use service instead)

Tasks
0. Transfer a file to your server
File: 0-transfer_file

	* Bash script that transfers files from client to server using SCP
	* Accepts 4 parameters: file path, server IP, username, SSH key path

1. Install nginx web server
File: 1-install_nginx_web_server

	* Installs and configures Nginx on web-01
	* Nginx listens on port 80
	* Returns "Holberton School for the win!" at root

2. Setup a domain name
File: 2-setup_a_domain_name

	* Contains your registered .tech domain name
	* DNS A record points to web-01 IP address
	* No subdomain (just root domain)

3. Redirection
File: 3-redirection

	* Configures Nginx with 301 redirect for /redirect_me
	* Redirects to YouTube video
	* Automates Ubuntu machine configuration

4. Not found page 404
File: 4-not_found_page_404

	* Custom 404 error page containing "Ceci n'est pas une page"
	* Returns HTTP 404 status code
	* Builds on previous task configurations

5. Design a beautiful 404 page
File: 5-design_a_beautiful_404_page.html

	* Creative and visually appealing custom 404 page
	* Must still contain "Ceci n'est pas une page"

Usage
Make scripts executable:
chmod +x 0-transfer_file 1-install_nginx_web_server 3-redirection 4-not_found_page_404

Test file transfer:
./0-transfer_file myfile.html 98.93.145.166 ubuntu /path/to/key

Run configuration scripts on server:
sudo ./1-install_nginx_web_server
sudo ./3-redirection
sudo ./4-not_found_page_404

Test endpoints:
curl localhost                          # Test homepage
curl -sI localhost/redirect_me/         # Test redirect
curl localhost/nonexistent              # Test 404 page

Repository Structure
alu-system_engineering-devops/
└── web_server/
    ├── 0-transfer_file
    ├── 1-install_nginx_web_server
    ├── 2-setup_a_domain_name
    ├── 3-redirection
    ├── 4-not_found_page_404
    ├── 5-design_a_beautiful_404_page.html
    └── README.md

Author
Alieu O. Jobe

Resources
	* How the web works
	* Nginx Documentation
	* HTTP Status Codes
	* DNS Basics
