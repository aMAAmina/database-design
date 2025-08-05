# Designing a Scalable Database for a Smart Agriculture Platform
## Project:
You're hired as a data engineer for AgroSense, a startup building a Smart Agriculture Monitoring Platform that collects sensor data from large-scale farms to help improve crop yield, resource efficiency, and alerting. 

## Your mission: 
Design a scalable, normalized, and secure database schema that will support real-time ingestion and analytical reporting across multiple farms and user roles.

## Business Context:
AgroSense deploys IoT sensors across different farms and fields. 
The sensors report:
- Soil moisture
- Air and ground temperature
- Humidity
- pH level
- Rainfall
The system also tracks:
- Field-level metadata (location, crop type, size)
- Farm activities (planting, irrigation, harvesting)
- User roles:
  - Farmers – Manage one or more fields
  - Agronomists – Analyze sensor data across regions
  - Administrators – Manage users and farm-wide settings
It also must support:
- Alerts (e.g., low soil moisture)
- Daily reporting (aggregations per field)
- Role-based access control

## Deliverables:
Your work should simulate the design phase of a production-ready data system.


You are expected to deliver:
1. Conceptual ER Diagram
   ERD (drawn with dbdiagram.io, Lucidchart, or similar)
      - user(user_id, first_name, last_name, role_id)
      - role(role_id, role_type, permission_id NULL)
      - permission(permission_id, permission)
      - farm(farm_id, farm_name, farm_size, field_id)
      - location(location_id, longitude, latitude)
      - field(field_id, size, crop_type, farm_id, location_id)
      - activity( activity_id, activity_type, start_date, end_date)
      - sensor(sensor_id, senor_type, location_id, field_id, sensor_val_id)
      - sensor_val(sensor_val_id, value, unit, timestamp)
      - alert(alert_id, alert_type, message, date_time)
    - [ERD_arg](ERD_arg.png) : ERD by draw.io
    role -> permission (0,n)
    user -> role (0,n)
    role -> user (1,n)
    user -> farm (n,n)
    sensor -> location (1,n)
    feild -> location (1,n)
    field -> activity (n,n)
    sensor -> field (1,n)
    sensor -> sensor_val (n,1)
    sensor_val -> alert (n,1)
2. Logical Schema
Table definitions (Markdown or diagram) with PKs and FKs
1. Physical Schema
SQL CREATE TABLE scripts with indexes, constraints
1. Normalization Rationale
Written explanation up to 3NF
1. Access Model
Role matrix + description of access rights
1. Sample SQL Queries
3–5 analytics or operational queries
