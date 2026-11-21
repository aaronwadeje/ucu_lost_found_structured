
CREATE DATABASE ucu_lost_found;

USE ucu_lost_found;


USE ucu_lost_found;

CREATE TABLE  items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    type VARCHAR(20),
    title VARCHAR(200),
    category VARCHAR(50),
    description TEXT,
    date DATE,
    location VARCHAR(100),
    photo_url VARCHAR(255),
    status VARCHAR(20) DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'student'
);


CREATE TABLE claims (
    id INT AUTO_INCREMENT PRIMARY KEY,

    item_id INT,
    claimant_id INT,

    evidence TEXT,
    admin_reason TEXT,
    message TEXT,

    status VARCHAR(20) DEFAULT 'pending',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_claims_item
    FOREIGN KEY (item_id)
    REFERENCES items(id)
    ON DELETE SET NULL,

    CONSTRAINT fk_claims_user
    FOREIGN KEY (claimant_id)
    REFERENCES users(id)
    ON DELETE SET NULL
);


SELECT * FROM users;

SELECT * FROM items;

SELECT * FROM claims;

DESCRIBE users;

DESCRIBE items;

DESCRIBE claims;


SELECT DATABASE();
use ucu_lost_found;
show tables;

