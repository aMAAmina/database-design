## Scenario: 
You're building a platform for tracking real-time taxi rides in major cities for analytics and ML prediction.

### data includes:
- Trip metadata (start/end time, driver ID, passenger ID, distance)
- User profiles
- Vehicle information
- City zones
- Weather data
- Tip and payment info
- Geolocation logs (every 5s)

### Tasks:
1. Identify the best schema type for:
- Transactional ingestion system
- BI dashboard for city managers
2. For each, justify your schema choice (normalized, star, snowflake, or hierarchical)
- Transactional ingestion system: the system that ingests and stores the raw, real time data for tracking system, so i imagine it need to be fast and accurate since here we are talking about tracking in real time (geolocalisation logs; every 5s), so i am thinking either Hierarchical/Nested schema or star schema, but since we are talking about logging every 5s, then it must be big data, and geolocalisation in this context needs to be accurate best approach then is  `Hierarchical/Nested schema`
- BI dashboard for city managers, is BI analytics to help managers analyse their business need based on historical dat, that is usually pre_cleaned, for such a system it requires fast reporting and simple complexity in data relationship,so i am thinking `star schema` will better use this use case
3. Sketch a simplified schema for one of your choices:
- BI dashbord for city managers:

                customers     payments     vehicules       payments
                    |             |             |             |
                    V             V             V             V
                    -------------------------------------------
                                        trips
                    -------------------------------------------

### Tips:
Think from the user query perspective: What data needs to be fast?
Star is not always better than normalized. Context matters.
Nested schemas shine with clickstream, logs, and IoT data.