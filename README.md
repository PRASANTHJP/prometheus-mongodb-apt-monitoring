# Prometheus Monitoring for MongoDB and APT Services

This repository provides an out-of-the-box solution to monitor MongoDB and APT services using Prometheus, Node Exporter, MongoDB Exporter, and Alertmanager. It also includes alerting rules to notify you via email when certain thresholds are met.

## Features

- Monitor MongoDB metrics using Prometheus and MongoDB Exporter.
- Monitor system and APT metrics using Node Exporter.
- Configure email alerting for critical issues such as high memory usage or pending APT updates.

## Requirements

- Prometheus (>= v2.41.0)
- MongoDB Exporter (>= v0.30.0)
- Node Exporter (>= v1.5.0)
- Alertmanager (>= v0.25.0)

## Setup

1. Clone the repository:

    ```bash
    git clone https://github.com/PRASANTHJP/prometheus-mongodb-apt-monitoring.git
    cd prometheus-mongodb-apt-monitoring
    ```

2. Run the setup script to install Prometheus, MongoDB Exporter, Node Exporter, and Alertmanager:

    ```bash
    ./setup.sh
    ```

3. Configure email alerts in `alertmanager/alertmanager.yml` by adding your email credentials.

4. Start Prometheus and Alertmanager services:

    ```bash
    sudo systemctl start prometheus
    sudo systemctl start alertmanager
    ```

## Configuration

### Prometheus

Prometheus configuration can be found in the `prometheus/prometheus.yml` file. It defines scrape jobs for MongoDB and Node Exporter.

### Alerting

Alert rules are defined in the `prometheus/rules.yml` file for:
- High MongoDB memory usage
- Pending APT package updates

You can configure Alertmanager in `alertmanager/alertmanager.yml` to send email notifications.

## Metrics Endpoints

- Prometheus UI: `http://localhost:9090`
- Alertmanager UI: `http://localhost:9093`
- MongoDB Exporter: `http://localhost:9216/metrics`
- Node Exporter: `http://localhost:9100/metrics`

