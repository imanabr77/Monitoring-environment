# Monitoring Stack

This project sets up a monitoring stack using Prometheus, Grafana, and Node Exporter.

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)

## Overview

This repository contains a Docker Compose configuration to set up a monitoring stack consisting of:

- Prometheus as the metrics collector and alerting system
- Grafana as the visualization platform
- Node Exporter for collecting hardware and OS metrics from the host machine

The setup allows for easy monitoring of your applications and infrastructure.

## Requirements

- Docker Engine installed on your system
- Docker Compose v1.29.0 or higher

## Setup

1. Clone this repository:
git clone https://github.com/yourusername/monitoring-stack.git cd monitoring-stack

2. Ensure Docker and Docker Compose are installed and running on your system.

3. Create a `.env` file in the same directory as `docker-compose.yml` to store sensitive information like admin passwords.

4. Run the following command to start the monitoring stack:
docker-compose up -d

## Usage

Once the stack is up and running:

1. Access Prometheus web interface:
http://localhost:9090


2. Access Grafana web interface:
http://localhost:3000


3. Use Node Exporter metrics by querying Prometheus:
http://localhost:9090/metrics


## Configuration

To customize the setup:

1. Edit `prometheus.yml` file to configure Prometheus rules and targets.
2. Modify `grafana_data` volume mount path if you want to persist Grafana data elsewhere.
3. Update `.env` file with your desired admin password for Grafana.

