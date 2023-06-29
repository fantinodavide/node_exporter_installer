wget https://github.com/prometheus/node_exporter/releases/download/v*/node_exporter-*.*-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz -C /opt/node_exporter
rn node_exporter-*.*-amd64.tar.gz
cd /opt/node_exporter