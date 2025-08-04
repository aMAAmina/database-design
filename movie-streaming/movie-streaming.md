## Logical schema:

Table:User
- user_id (PK)
- username
- email
- location
- movie_watched_id (FK - Movie)
- wish_list_movie_id (FK - Movie)

Table:Movie
- movie_id (PK)
- moviename
- streaming
- date
- category
- producer_compagny
- rating_id (FK - Rating)

Table:Watch-history
- watch_id (PK- (user_id, movie_watched_id))
- watched_date

Table:Rating
- rating_id (PK)
- stars
- user_id (FK - User)
- movie_id (FK - Movie)