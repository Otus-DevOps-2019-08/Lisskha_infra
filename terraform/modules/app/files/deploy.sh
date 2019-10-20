#!/bin/bash
cd /home/appuser/ && git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

sudo tee /lib/systemd/system/puma.service << EOF
[Unit]
Description=Puma
After=mongod.service

[Service]
User=appuser
Group=appuser
WorkingDirectory=/home/appuser/reddit/
EnvironmentFile=/tmp/puma.env
ExecStart=/usr/local/bin/puma
Restart=always

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl enable puma.service
sudo systemctl start puma.service

