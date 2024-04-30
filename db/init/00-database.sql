/*Connecting to the database automatically creates it*/
\connect forum_example;

/*Create user table in public schema*/
CREATE TABLE public.user (
    id SERIAL PRIMARY KEY,
    username TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE public.user IS
'Forum users.';

/*Create post table in public schema*/
CREATE TABLE public.post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    body TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author_id INTEGER NOT NULL REFERENCES public.user(id)
);

COMMENT ON TABLE public.post IS
'Forum posts written by a user.';


/*Create post table in public schema*/
CREATE TABLE public.website (
    id SERIAL PRIMARY KEY,
    title TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    post_id INTEGER NOT NULL REFERENCES public.post(id)
);

COMMENT ON TABLE public.post IS
'Website where the post is published.';