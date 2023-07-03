mkdir /opt/node_exporter
cd /opt/node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.0/node_exporter-1.6.0.linux-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz -C ./
mv node_exporter-*.*-amd64/* ./
rm node_exporter-*.*-amd64.tar.gz
rmdir node_exporter-*.*-amd64
wget -O node_exporter.service https://raw.githubusercontent.com/fantinodavide/node_exporter_installer/main/node_exporter.service?$RANDOM
mv node_exporter.service /etc/systemd/system/
systemctl enable --now node_exporter.service
systemctl status node_exporter.service
