# SSH Project

This project contains scripts and configurations for SSH connection management.

## Description
Learning objectives include understanding SSH, creating key pairs, and configuring SSH clients.

## Requirements
- Ubuntu 20.04 LTS
- Bash scripts must be executable
- All scripts start with `#!/usr/bin/env bash`

## Files

### Mandatory Tasks
- `0-use_a_private_key` - Script to connect to server using private key
- `1-create_ssh_key_pair` - Script to create RSA key pair
- `2-ssh_config` - SSH client configuration file

### Advanced Tasks
- `100-puppet_ssh_config.pp` - Puppet manifest for SSH configuration

## Usage

### Task 0: Connect using private key


bash
./0-use_a_private_key

### Task 1: Create SSH key pair


bash
./1-create_ssh_key_pair

### Task 2: SSH Configuration
Copy `2-ssh_config` contents to `~/.ssh/config`

### Task 4: Apply Puppet configuration


bash
sudo puppet apply 100-puppet_ssh_config.pp

## Author
Alieu O. Jobe
