CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    role TEXT NOT NULL CHECK (role IN ('admin', 'customer'))
);

CREATE TABLE fruits (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    prefix CHAR(1) NOT NULL UNIQUE,
    price NUMERIC(6, 2) NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE carts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE cart_items (
    id SERIAL PRIMARY KEY,
    cart_id INTEGER REFERENCES carts(id),
    fruit_id INTEGER REFERENCES fruits(id),
    quantity INTEGER NOT NULL
);
