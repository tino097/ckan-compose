# CKAN COMPOSE 🐳 

BADGES

## Overview

A Docker-compose based setup for CKAN with support for running commands via Ahoy.

## 🌟 Features

- Dockerized CKAN environment.
- Manage CKAN services using the Ahoy command-line tool.
- Easily set the project name and other configurations via the `.env` file.
- Pre-configured services:
  - Postgres
  - Solr
  - Redis

## 🔧 Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)
- [Ahoy](https://github.com/ahoy-cli/ahoy)

## 🚀 Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/tino097/ckan-compose.git
   cd ckan-compose

## 📦 Usage

```bash
ahoy generate-env

```bash
ahoy up
```

### 🛠️ Ahoy Commands

- build: Build the project.
- cli: Start a shell inside a container.
- down: Delete the project (CAUTION).
- generate-env: Generate a .env file with values entered via prompt.
- logs: View logs.
- ps: Check processes running inside the container.
- restart: Restart the project.
- stop: Stops the project.
- up: Build and start the project.
- init: Initialize a new .ahoy.yml config file in the current directory.

### 🔧 Configuration

Service configurations are loaded from the .env file. The project name and other values can be replaced in the compose file. For instance, setting the PROJECT_NAME variable in .env will influence container names, volume names, etc.

### 🤝 Contributing

If you wish to contribute, please submit a pull request or create an issue to discuss the changes.
