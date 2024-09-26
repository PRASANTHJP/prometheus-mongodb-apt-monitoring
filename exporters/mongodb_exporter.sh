#A shell script to install and run MongoDB Exporter

#!/bin/bash

# Download MongoDB Exporter
wget https://github.com/percona/mongodb_exporter/releases/download/v0.30.0/mongodb_exporter-0.30.0.linux-amd64.tar.gz
tar -xzvf mongodb_exporter-0.30.0.linux-amd64.tar.gz
sudo cp mongodb_exporter /usr/local/bin/

# Start MongoDB Exporter
mongodb_exporter --mongodb.uri mongodb://localhost:27017 &

