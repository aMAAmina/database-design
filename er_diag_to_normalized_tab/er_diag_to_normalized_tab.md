## Scenario: (ERD to SQL tables)
You're building a schema for a Freelancer Job Marketplace Entities:
- Client
- Freelancer
- JobPost
- Application
- Review

### Steps:
1. Draw an ER diagram connecting those entities with their attributes
   - Client(client_id, client_name, client_add)
   - Freelancer(freelancer_id, freelancer_name, freelancer_rating, client_id)
   - JobPost(job_id, job_title, job_desc, client_id, freelancer_id NULL)
   - Application(application_id, application_state, freelancer_id, job_id)
   - Review(review_id, review_stars, review_desc, freelancer_id, client_id)
2. Identify all relationships (1:M, M:M) and decide on foreign keys
   - Client -> freelancer (0,n)
   - Client -> JobPost (0,n)
   - JobPost -> Freelancer (0,1)
   - JobPost -> Application (0,n)
   - Review -> Client (0,n)
   - Review -> freelancer_id (0,n)
3. Normalize the design to 3NF
    Third Normal Form (3NF) is a database normalization rule that ensures:

    - The table is in Second Normal Form (2NF).
    - All non-key attributes are directly dependent only on the primary         key, there are no transitive dependencies (i.e., no non-key attribute depends on another non-key attribute).

4. Write SQL CREATE TABLE statements for all 5 entities
- [er_to_norm_tab_script](er_to_norm_tab_script.sql)