
ALTER TABLE customers 
ADD COLUMN rating  integer CHECK (rating BETWEEN 1 AND 10);

ALTER TABLE artists 
ADD COLUMN country varchar(255);


INSERT INTO customers
(id, name, address, amount, rating)
VALUES
(4, 'Emre', 'Preston', 20000.00, 5),
(5, 'Saeid', null, 40000.00, 6);


INSERT INTO artists
(name, birthplace, style, dateofbirth, country)
VALUES
('Leonardo', 'Florence', 'Renaissance', '04-15-1452', 'Ita from ly'),
('Michelangelo', 'Arezzo', 'Renaissance', '03-06-1475',
'Italy'),
('Josefa', 'Seville', 'Baroque', '09-09-1630', 'Spain'),
('Hans Hofmann', 'Weisenburg', 'Modern', '02-17-1966', 'Germany'),
('John', 'San Francisco', 'Modern', '02-17-1920', 'USA'),
('Smith', 'Otawa', 'Modern', '02-17-1935', 'CANADA'),
('Picasso', 'paris', 'jazz', '02-17-1968', 'France');



INSERT INTO artworks
(title, year, type, price, artist_name)
VALUES
('Waves', 2000, null, 4000.00, 'Smith'),
('Three Musicians', 1921, 'Modern', 11000.00, 'Picasso');

INSERT INTO likeartists
(customer_id, artist_name)
VALUES
(4, 'Picasso'),
(5, 'Picasso'),
(5, 'Leonardo');





