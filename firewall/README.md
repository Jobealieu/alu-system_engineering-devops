# Firewall

This project configures UFW (Uncomplicated Firewall) to secure web servers.

## Server
- **web-01**: 98.93.145.166

## Configuration

### Allowed Ports
- **22/tcp**: SSH access
- **80/tcp**: HTTP traffic
- **443/tcp**: HTTPS traffic
- **8080/tcp**: Forwarded to port 80

### Default Policies
- **Incoming**: DENY (except allowed ports)
- **Outgoing**: ALLOW

## Files
- `0-block_all_incoming_traffic_but`: UFW commands to configure firewall rules
- `100-port_forwarding`: Modified UFW configuration with port 8080 → 80 forwarding

## Usage

### Configure basic firewall
```bash
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
```

### Verify status
```bash
sudo ufw status verbose
```

### Test port forwarding
```bash
curl -sI SERVER_IP:80
curl -sI SERVER_IP:8080
```

## Important Notes
- Always allow SSH (port 22) before enabling UFW
- Port forwarding is configured in `/etc/ufw/before.rules`
- UFW must be disabled and re-enabled after modifying before.rules

## Warning
⚠️ Never block port 22 without having console access to the server!
