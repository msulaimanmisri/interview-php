/*
*   Second tasks : Medium Level
*/

-- Make the author_id inside the posts table as not nullable
ALTER TABLE posts MODIFY author_id INT NOT NULL;
EXPLAIN posts;

-- Based on the table users and posts, find the the posts that belongs to the user of id 1.
-- Bonus marks will be given if you can demonstrate how to use multiple method to combine the tables.
SELECT users.id, posts.author_id, posts.title, posts.content
FROM users
INNER JOIN posts
ON users.id = posts.author_id
WHERE users.id = 1;

SELECT users.id, posts.author_id, posts.title, posts.content
FROM users
RIGHT JOIN posts
ON users.id = posts.author_id
WHERE users.id = 1;

SELECT users.id, posts.author_id, posts.title, posts.content
FROM users
LEFT JOIN posts
ON users.id = posts.author_id
WHERE users.id = 1;

-- Based on the table users and profile, find the the profile data that belongs to the user of id 1
SELECT users.id, users.name, profile.user_id, profile.nationality
FROM users
INNER JOIN profile
ON users.id = profile.user_id
WHERE users.id = 1;

-- Based on the table users and posts, find the the post data that belongs to the user of id 1
-- then, change the column `name` into `author name`
SELECT users.id, users.name AS "author name", posts.title, posts.content, posts.created_at
FROM posts
INNER JOIN users
ON users.id = posts.author_id
WHERE users.id = 1;
