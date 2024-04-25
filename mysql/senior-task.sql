-- Combine all data from the available table into one
SELECT users.id, users.first_name, users.last_name, profile.nationality, posts.title, posts.content, posts.created_at
FROM users
INNER JOIN profile ON users.id = profile.user_id
INNER JOIN posts ON users.id = posts.author_id;

-- Based on table posts, add Indexing at column title
CREATE INDEX post_index
ON posts (title);


SHOW INDEXES FROM posts WHERE NON_UNIQUE = 1;

SHOW INDEX FROM posts;

-- After that, Add indexing in multiple column at profile table
CREATE INDEX profile_index
ON profile ();
