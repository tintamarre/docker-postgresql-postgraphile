\connect forum_example;

/*Create some dummy users*/
INSERT INTO public.user (username) VALUES
('Benjie'),
('Singingwolfboy'),
('Lexius');

/*Create some dummy posts*/
INSERT INTO public.post (title, body, author_id) VALUES
('First post example', 'Lorem ipsum dolor sit amet', 1),
('Second post example', 'Consectetur adipiscing elit', 2),
('Third post example', 'Aenean blandit felis sodales', 3);

/*Create some dummy posts*/
INSERT INTO public.website (title, post_id) VALUES
('First website example', 1),
('Second website example', 2),
('Third website example', 3);