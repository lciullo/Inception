<h1 align="center">🦭Inception</h1>
<p align="center">
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white" alt="MariaDB"/>
  <img src="https://img.shields.io/badge/nginx-%23009639.svg?style=for-the-badge&logo=nginx&logoColor=white" alt="Nginx"/>
  <img src="https://img.shields.io/badge/WordPress-21759B?style=for-the-badge&logo=wordpress&logoColor=white" alt="WordPress"/>
  <img src="https://img.shields.io/badge/42-000000?style=for-the-badge&logo=42&logoColor=white" alt="42"/>
</p>

## 📋 Overview

A Docker-based WordPress infrastructure setup with NGINX, MariaDB, and PHP-FPM, developed as part of the 42 curriculum.
Inception is a project focused on containerized application deployment using Docker. It implements a complete web stack including WordPress, NGINX, and MariaDB, each running in its own container. The project emphasizes Docker best practices, container orchestration, and secure configuration.

## ✨ Features

### Container Architecture
* NGINX web server container
* WordPress with PHP-FPM container
* MariaDB database container

### Infrastructure Components
* Docker Compose orchestration
* Custom Docker images
* Persistent volumes
* Docker networks
* SSL/TLS encryption

### Configuration Management
* Environment variables
* Custom domain setup
* Database initialization
* WordPress auto-configuration
* NGINX server blocks

### Security Features
* SSL/TLS certificates
* Secure database access
* WordPress security settings
* Network isolation
* Environment variable protection

## 🏗️ Project Structure

```
inception/
├── Makefile
├── docker-compose.yml
├── srcs/
│   ├── requirements/
│   │   ├── nginx/
│   │   │   ├── Dockerfile
│   │   │   └── conf/
│   │   ├── wordpress/
│   │   │   ├── Dockerfile
│   │   │   └── conf/
│   │   └── mariadb/
│   │       ├── Dockerfile
│   │       └── conf/
│   └── .env_example
└── README.md
```

## 🚀 Getting Started

### Prerequisites
* Docker Engine
* Docker Compose
* Make
* Domain name configured (e.g., your_login.42.fr)

### Installation

```bash
# Clone the repository
git clone https://github.com/lciullo/Inception
cd inception
cd srcs
mv .env_example .env

# Build and start containers
make
```
### Usage

```bash
# Start all services
make up

# Stop all services
make down

# Rebuild containers
make re

# Clean all data (without volumes)
make fclean

# Clean all data (including volumes)
make prune
```

## 🎯 Project Objectives
* Set up a multi-container infrastructure
* Create custom Docker images
* Implement container orchestration
* Configure secure communication between services
* Manage persistent data with volumes
* Implement SSL/TLS encryption
* Ensure service availability and reliability

## 🛠️ Technical Implementation

### NGINX Container
* Alpine Linux based
* SSL/TLS configuration
* Reverse proxy setup
* Static file serving
* Security headers

### WordPress Container
* PHP-FPM configuration
* WordPress core installation
* Plugin management
* Theme configuration
* PHP optimizations

### MariaDB Container
* Database initialization
* User management
* Backup procedures
* Performance tuning
* Security hardening

## 🔐 Security Measures
* SSL/TLS encryption
* Network isolation
* Secure environment variables
* Database access control
* File permissions management
* Regular security updates

## 🌐 Networking
* Custom Docker network
* Inter-container communication
* Port mapping
* Domain configuration
* SSL/TLS termination

## 💾 Data Persistence
* WordPress content volume
* Database volume
* Configuration volumes
* Backup management
* Data recovery procedures

## 🧠 Learning Outcomes
This project provided experience in:
* Docker containerization
* Infrastructure as Code
* Network security
* Database management
* Web server configuration
* SSL/TLS implementation
* Service orchestration
* Configuration management

## 🔍 Testing
* Container health checks
* Service availability testing
* SSL/TLS verification
* Database connectivity
* WordPress functionality
* Backup/restore procedures

## 🤝 Best Practices
* Use of environment variables
* Container isolation
* Resource management
* Security configuration
* Logging and monitoring
* Backup strategies

## 📝 License
This project is part of the 42 school curriculum.

## 🌟 Acknowledgments
* Docker Documentation
* NGINX Documentation
* WordPress Documentation
* MariaDB Documentation
* 42 School

## 🤝 Contributors
- **Lisa Ciullo** - [@lciullo](https://github.com/lciullo)
