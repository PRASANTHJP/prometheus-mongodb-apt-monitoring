#A setup script to install and configure Prometheus, Node Exporter, MongoDB Exporter, and Alertmanager

#!/bin/bash

# Install Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.41.0/prometheus-2.41.0.linux-amd64.tar.gz
tar xvfz prometheus-2.41.0.linux-amd64.tar.gz
sudo cp prometheus-2.41.0.linux-amd64/prometheus /usr/local/bin/
sudo cp prometheus-2.41.0.linux-amd64/promtool /usr/local/bin/
sudo mkdir /etc/prometheus
sudo cp -r prometheus-2.41.0.linux-amd64/consoles /etc/prometheus
sudo cp -r prometheus-2.41.0.linux-amd64/console_libraries /etc/prometheus
sudo cp prometheus/prometheus.yml /etc/prometheus/

# Install and run exporters
bash exporters/mongodb_exporter.sh
bash exporters/node_exporter.sh

# Install Alertmanager
wget https://github.com/prometheus/alertmanager/releases/download/v0.25.0/alertmanager-0.25.0.linux-amd64.tar.gz
tar xvfz alertmanager-0.25.0.linux-amd64.tar.gz
sudo cp alertmanager-0.25.0.linux-amd64/alertmanager /usr/local/bin/
sudo mkdir /etc/alertmanager
sudo cp alertmanager/alertmanager.yml /etc/alertmanager/

# Start Prometheus and Alertmanager
sudo systemctl start prometheus
sudo systemctl start alertmanager
