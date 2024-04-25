/*
*   First tasks : Beginner Level
*/

-- Create Database name z_project.
CREATE DATABASE z_project;
USE z_project;

-- Create three tables name users, posts and profile.
-- In table users, must have id, first_name, last_name, and email. 
-- Every tables must have column created_at. The created_at must be filled by current timestamp.
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- For posts, must have id, author_id, title, and content'.
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_id INT REFERENCES users(id),
    title VARCHAR(255),
    content TEXT,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- In table profile, must have id, user_id, image_path, and nationality.
-- The user_id in table profile IS NOT a Foreign Key.
CREATE TABLE profile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    image_path VARCHAR(255),
    nationality TINYTEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Show CRUD operation inside the users table
-- Sulaiman : Create users
INSERT INTO users (first_name, last_name, email)
VALUES
('sulaiman', 'misri', 'sulaiman@email.com'),
('fulana', 'fulan', 'fulana@email.com'),
('ahmad', 'albab', 'ahmad@albab.com');

-- Sulaiman : Read the user data
SELECT * FROM users;
SELECT * FROM users WHERE id = 1;
SELECT * FROM users WHERE first_name = 'sulaiman';
SELECT * FROM users WHERE first_name LIKE '%fulan%';

-- Sulaiman : Update the user data
UPDATE users SET email = 'fulanafulan@email.com' WHERE id = 2;

-- Sulaiman : Delete the user
DELETE FROM users WHERE id = 2;

-- Show CRUD operation inside the posts table
-- Sulaiman : Create posts
INSERT INTO posts (author_id, title, content)
VALUES
(1, 'psychology of money', 'ABCDE'),
(3, 'dunia tanpa tembok 1', 'FGHIJ'),
(3, 'dunia tanpa tembok 2', 'KLMNO'),
(1, 'dunia tanpa tembok 3', 'PQRST'),
(3, 'mastering sales process', 'UVWXY');

-- Sulaiman : Read the post data
SELECT * FROM posts;
SELECT * FROM posts WHERE id = 1;
SELECT * FROM posts WHERE title = 'dunia tanpa tembok 1';
SELECT * FROM posts WHERE title LIKE '%tembok%';

-- Sulaiman : Update the post data
UPDATE posts SET title = 'the manager path' WHERE id = 2;

-- Sulaiman : Delete the post
DELETE FROM posts WHERE id = 2;

-- SHOW CRUD operation inside the profile table
-- Sulaiman : Create profile
INSERT INTO profile (user_id, image_path, nationality)
VALUES
(1, 'sulaiman.png', 'malaysian'),
(2, 'fulana.png', 'malaysian'),
(3, 'ahmad.jpg', 'zimbabwe');

-- Sulaiman : Read the profile data
SELECT * FROM profile;
SELECT * FROM profile WHERE id = 1;
SELECT * FROM profile WHERE nationality = 'malaysian';
SELECT * FROM profile WHERE image_path LIKE '%png%';

-- Sulaiman : Update the user data
UPDATE profile SET image_path = 'sulaiman.gif' WHERE id = 1;

-- Sulaiman : Delete the user
DELETE FROM profile WHERE id = 3;

-- Demonstrate how to Delete the whole table
DROP TABLE profile;
DROP TABLE posts;
DROP TABLE users;
