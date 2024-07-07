# PostgREST Playground

This project demonstrates the use of PostgREST to create a RESTful API for a sample dataset, complete with Swagger documentation. It can be run using Docker Compose or as a Visual Studio Code dev container.

## Features

- PostgREST API for a sample dataset
- Swagger UI for easy API exploration and testing
- PostgreSQL database with sample data
- Docker Compose setup for easy deployment
- VS Code dev container configuration for streamlined development

## Prerequisites

- Docker and Docker Compose

## Quick Start

### Using Docker Compose

1. Clone this repository
2. Navigate to the project directory
3. Run the following command:

```bash
docker-compose up
```

4. Access the Swagger UI at `http://localhost:8080`
5. The PostgREST API will be available at `http://localhost:3000`

### Using VS Code Dev Container

1. Clone this repository
2. Open the project folder in Visual Studio Code
3. When prompted, click "Reopen in Container" or run the "Remote-Containers: Reopen in Container" command from the command palette
4. VS Code will build and start the dev container
5. Access the Swagger UI at `http://localhost:8080`
6. The PostgREST API will be available at `http://localhost:3000`

## Project Structure

- `.devcontainer/`: VS Code dev container configuration
- `initdb/`: SQL scripts for initializing the database
- `docker-compose.yml`: Docker Compose configuration file
- `.env`: Environment variables for the project

## API Usage

Explore the API using the Swagger UI at `http://localhost:8080`. You can test various endpoints and see the full API documentation.
