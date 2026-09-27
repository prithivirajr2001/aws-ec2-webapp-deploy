#!/bin/bash
# This script runs automatically when the EC2 instance first boots.
# It installs nginx and deploys a simple static page - proof that the
# infrastructure works end-to-end.

set -e

# Install nginx (Amazon Linux 2023 uses dnf)
dnf update -y
dnf install -y nginx

# Deploy a simple landing page
cat > /usr/share/nginx/html/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Cloud Web App Demo</title>
  <style>
    body { font-family: Arial, sans-serif; background: #0f172a; color: #f1f5f9;
           display: flex; align-items: center; justify-content: center;
           height: 100vh; margin: 0; text-align: center; }
    .card { background: #1e293b; padding: 40px 60px; border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.4); }
    h1 { color: #38bdf8; margin-bottom: 10px; }
    p { color: #94a3b8; }
  </style>
</head>
<body>
  <div class="card">
    <h1>🚀 Deployed on AWS EC2</h1>
    <p>Provisioned entirely with Terraform - VPC, Security Group, IAM Role, S3, and CloudWatch alarm.</p>
    <p>Instance is up and serving traffic via nginx.</p>
  </div>
</body>
</html>
EOF

# Start and enable nginx so it survives reboots
systemctl enable nginx
systemctl start nginx
