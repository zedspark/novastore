# NovaStore

NovaStore is a backend-focused e-commerce project built with Spring Boot.

The goal of this project is not just to create a simple shop application, but to design and implement the core building blocks of a production-oriented e-commerce system. It is being developed as a portfolio project to demonstrate backend engineering skills, software design, security practices, and real-world system architecture.

## Project Goal

This project is intended to cover the backend capabilities commonly expected in a professional online store, including:

- user authentication and authorization
- product and category management
- shopping cart and checkout flow
- order lifecycle management
- payment integration concepts
- caching and performance optimization
- secure API design
- database migration and maintainability
- testability and clean architecture practices

The main focus is learning by building real features with production-style structure and decisions.

## Tech Stack

- Java 21
- Spring Boot
- Spring Web
- Spring Security
- Spring Data JPA
- PostgreSQL
- Redis
- Flyway
- MapStruct
- Lombok
- JWT
- Maven
- H2 (for testing)
- OWASP Dependency Check

## Current Architecture Direction

NovaStore is being developed with a strong focus on:

- layered architecture
- clean and maintainable code
- DTO-based API design
- entity-to-DTO mapping with MapStruct
- authentication with JWT
- role-based authorization
- database versioning with Flyway
- scalable service-oriented backend structure

## Planned Core Modules

The project is planned to include the following modules:

- Authentication and Authorization
- User Management
- Product Management
- Category Management
- Inventory Management
- Shopping Cart
- Order Management
- Payment Flow Simulation / Integration
- Discount and Coupon System
- Address Management
- Review and Rating System
- Admin Dashboard APIs
- Caching with Redis
- Logging, Validation, and Exception Handling
- API Documentation
- Testing

## Security Features

Security is one of the main concerns of this project. The implementation is planned around:

- JWT-based authentication
- role-based access control
- secure password handling
- request validation
- exception-safe API responses
- secure endpoint separation for admin and customer flows

## Development Principles

This project is being built with the following principles in mind:

- write code that is easy to extend
- prefer clarity over unnecessary complexity
- build features the way they are commonly designed in real projects
- keep security, maintainability, and scalability in consideration
- use the project as both a learning platform and a portfolio-quality codebase

## Getting Started

### Prerequisites

Make sure you have installed:

- Java 21
- Maven
- PostgreSQL
- Redis
