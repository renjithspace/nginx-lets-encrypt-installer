# Ngnix - Let's encrypt installer
Shell script to install Nginx and let's encrypt SSL certificate with auto-renewal in ubuntu server

#### Prerequisites
1. Should be added `A` DNS records for both `domain.extension` and `www.domain.extension`

#### Run
Run below script with your `domain name`
```
$ chmod +x installer.sh && ./installer.sh domain.com
```