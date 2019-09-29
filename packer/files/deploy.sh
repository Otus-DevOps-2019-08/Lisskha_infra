#!/bin/bash
cd /home/yulka/ && git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

tee /lib/systemd/system/puma.service << EOF
[Unit]
Description=Puma
After=mongod.service

[Service]
User=yulka
Group=yulka
WorkingDirectory=/home/yulka/reddit/
ExecStart=/usr/local/bin/puma
Restart=always

[Install]
WantedBy=multi-user.target
EOF

systemctl enable puma.service
systemctl start puma.service

