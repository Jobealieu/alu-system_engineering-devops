Web Stack Debugging #4
This project focuses on debugging web stack issues related to system resource limits and Nginx performance optimization.

Project Information
	* Author: Sylvain Kalache, co-founder at Holberton School
	* Weight: 1
	* Environment: Ubuntu 14.04 LTS
	* Puppet Version: 3.4

Description
This project contains Puppet manifests to resolve common web stack debugging issues:

	1. Task 0: Optimize Nginx to handle high concurrent requests without failures
	2. Task 1: Fix OS configuration to allow the holberton user to login and open files without "Too many open files" errors

Requirements
General
	* All files are interpreted on Ubuntu 14.04 LTS
	* All files end with a new line
	* Puppet manifests must pass puppet-lint version 2.1.1 without errors
	* Puppet manifests must run without error
	* First line of Puppet manifests must be a comment explaining the manifest's purpose
	* Puppet manifest files must end with the .pp extension

Installation
Install puppet-lint:

$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1

Files
Task 1: User Limit
File: 1-user_limit.pp

Problem: The holberton user encounters "Too many open files" errors when attempting to login or execute commands.

Solution: This Puppet manifest modifies the /etc/security/limits.conf file to increase the file descriptor limits (both soft and hard limits) for the holberton user from the default values to 50000.

Usage:

puppet apply 1-user_limit.pp

Verification:
After applying the manifest, login as the holberton user and verify that file operations work correctly:

su - holberton
head /etc/passwd

Repository Structure
alu-system_engineering-devops/
└── web_stack_debugging_4/
    ├── README.md
    ├── 0-the_sky_is_the_limit_not.pp
    └── 1-user_limit.pp

Author
Alieu O. Jobe

Repository
	* GitHub repository: alu-system_engineering-devops
	* Directory: web_stack_debugging_4
