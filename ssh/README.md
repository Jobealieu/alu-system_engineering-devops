SSH
This project focuses on understanding and implementing SSH (Secure Shell) connections, RSA key pair generation, and SSH client configuration.

Project Information
	* Author: Alieu O. Jobe
	* Repository: alu-system_engineering-devops
	* Directory: ssh
	* Environment: Ubuntu 20.04 LTS

Description
This project teaches fundamental SSH concepts including server connections, RSA key pair creation, and SSH client configuration. You'll learn to connect to remote servers securely using SSH keys instead of passwords.

Learning Objectives
By completing this project, you will be able to explain:

	* What a server is and where servers typically live
	* What SSH is and how it works
	* How to create an SSH RSA key pair
	* How to connect to a remote host using SSH RSA key pairs
	* The advantages of using #!/usr/bin/env bash instead of /bin/bash

Requirements
	* All scripts must be executable
	* Scripts will be interpreted on Ubuntu 20.04 LTS
	* First line of all Bash scripts: #!/usr/bin/env bash
	* Second line should be a comment explaining the script's purpose
	* All files must end with a new line

Tasks
0. Use a private key
Connect to your server using SSH with a private key.

1. Create an SSH key pair
Generate a 4096-bit RSA key pair named "school" with passphrase "betty".

2. Client configuration file
Configure SSH client to use the private key and disable password authentication.

3. Let me in!
Add the provided SSH public key to your server.

Resources
	* SSH essentials
	* SSH Config File
	* Public Key Authentication for SSH
	* Man pages: ssh, ssh-keygen, env

Author
Alieu O. Jobe
