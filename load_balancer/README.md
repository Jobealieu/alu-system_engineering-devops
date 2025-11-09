Load Balancer Project (alu-system_engineering-devops — load_balancer)
This repository contains scripts to configure a small, highly-available web infrastructure on Ubuntu 16.04. The goal is to automate the setup of two Nginx web servers and an HAProxy load balancer that distributes traffic between them.

Project tasks

	* 0-custom_http_response_header

		* Configures a brand new Ubuntu server as a web server running Nginx.
		* Ensures Nginx responds with a custom HTTP header X-Served-By that contains the server hostname (so you can tell which backend served a request).
		* Intended to be run on both web-01 and web-02 to make them identical.
	* 1-install_load_balancer

		* Installs and configures HAProxy on an Ubuntu server to balance traffic across web-01 and web-02.
		* Uses a roundrobin algorithm.
		* Ensures HAProxy is manageable via the init script.

Requirements and constraints

	* All scripts are written for Ubuntu 16.04 LTS.
	* All Bash scripts must:

		* Be executable.
		* Start with: #!/usr/bin/env bash
		* Include a descriptive second-line comment.
		* Pass Shellcheck v0.3.7 without errors (ignore SC2154 where specified).
		* End with a newline.
	* Allowed editors: vi, vim, emacs.
	* Servers must have correct hostnames: [STUDENT_ID]-web-01 and [STUDENT_ID]-web-02 (if not, follow the hostname tutorial).

How to use

	1. On each web server (web-01 and web-02):


		* Copy 0-custom_http_response_header to the machine.
		* Make it executable: chmod +x 0-custom_http_response_header
		* Run it as root or with sudo: sudo ./0-custom_http_response_header
		* Verify Nginx is running and header is present:

			* curl -sI http://<web-ip> | grep X-Served-By
	2. On the load balancer (lb-01):


		* Copy 1-install_load_balancer to the machine.
		* Make it executable: chmod +x 1-install_load_balancer
		* Run it as root or with sudo: sudo ./1-install_load_balancer
		* Verify HAproxy is running and balancing:

			* curl -Is http://<lb-ip>  (repeat multiple times to see alternating X-Served-By)

Notes

	* This project was built for educational use and automated evaluation.
	* If you change server hostnames, ensure the X-Served-By header still reflects the hostname; the tests rely on that.
	* If you need to re-run scripts on a fresh VM, ensure the machine is clean (no conflicting packages or modified configs).

Author

	* Alieu O. Jobe

License

	* No license specified.
