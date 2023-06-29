mkdir /opt/node_exporter
cd /opt/node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.0/node_exporter-1.6.0.linux-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz -C ./
rn node_exporter-*.*-amd64.tar.gz
wget https://raw.githubusercontent.com/fantinodavide/node_exporter_installer/main/node_exporter.service;
mv node_exporter.service /etc/systemd/system/
systemctl enable --now node_exporter.service