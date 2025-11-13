# Load Balancer

This project configures a redundant web infrastructure with load balancing.

## Infrastructure
- **web-01**: 98.93.145.166
- **web-02**: 18.208.133.10  
- **lb-01**: 35.173.244.253 (HAProxy)

## Files
- `0-custom_http_response_header`: Configures Nginx with custom X-Served-By header
- `1-install_load_balancer`: Installs and configures HAProxy with round-robin distribution

## Usage
```bash
# Configure web servers
sudo ./0-custom_http_response_header

# Configure load balancer
sudo ./1-install_load_balancer
```

## Testing
```bash
# Test load balancer
curl -sI 35.173.244.253 | grep X-Served-By
```
