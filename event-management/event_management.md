## Event Management Platform (like Meetup.com)
### Business Requirements
- Users can register for events
- Events are created by organizers
- Events have location, time, and tags
- Users can search events by tags, location, and time
- Organizers can manage their events

### Conceptual ER Diagram
- [event-management](event_management.png)
- Entities:
  - guest
  - Event
  - Organizer
  - Location
  - Tag

### logical schema
Table: User
- user_id (PK)
- username
- phone_num
- email
- first_name
- last_name
- location
- user_type_id (FK - User_type)

Table: User_type
- user_type_id
- user_type_name

Table: Event
- event_id (PK)
- event_name
- event_location
- event_organiser (FK - User)
- event_tag (FK - tag)

Table: Event_registration_history
- (user_id,event_id) (PK)
- went

Table: Event_wish_list:
- (user_id, event_id) (PK)

Table : Tag
- tag_id (PK)
- tag_name

### Implement 2 sample tables in SQL with proper types and constraints
-[event-management-script](event-management-script.sql)

### Reflection:
- What normalization challenges did you face?
  - 1NF wasnt verified with `User_type` table (used to have organiser, guest as fields)
  - 2NF wasnt verified with `User` table (used to have 2 FK for events, resolved by adding `Event_registration_history` and `Event_wish_list` tables)
- How would your schema evolve for multi-city support?
  Adding a table location: link it as an FK to user with details such as city, country...