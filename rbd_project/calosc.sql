CREATE SCHEMA data;
CREATE TABLE data.address
(
    id               SERIAL      NOT NULL,
    street           varchar(30) NOT NULL,
    postcode         char(6)     NOT NULL,
    city             varchar(30) NOT NULL,
    region           varchar(30) NOT NULL,
    building_number  int         NOT NULL,
    apartment_number int         NOT NULL,
    CONSTRAINT address_pk PRIMARY KEY (id)
);

CREATE TABLE data.category
(
    id            SERIAL      NOT NULL,
    category_name varchar(30) NOT NULL,
    CONSTRAINT category_pk PRIMARY KEY (id)
);

CREATE TABLE data.customer
(
    id               SERIAL      NOT NULL,
    pesel            varchar(255)    NOT NULL,
    personal_data_id int         NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (id)
);

CREATE TABLE data.description
(
    id       SERIAL          NOT NULL,
    price    decimal(12, 2)  NOT NULL,
    name     varchar(255)    NOT NULL,
    image    bytea           NOT NULL,
    material varchar(30)     NOT NULL,
    width    varchar(30)     NOT NULL,
    weight   varchar(30)     NOT NULL,
    height   varchar(30)     NOT NULL,
    CONSTRAINT description_pk PRIMARY KEY (id)
);

CREATE TABLE data.extra_article
(
    id             SERIAL      NOT NULL,
    description_id int         NOT NULL,
    CONSTRAINT extra_article_pk PRIMARY KEY (id)
);

CREATE TABLE data.monument
(
    id             SERIAL      NOT NULL,
    supplier_id    int         NOT NULL,
    category_id    int         NOT NULL,
    description_id int         NOT NULL,
    CONSTRAINT monument_pk PRIMARY KEY (id)
);

CREATE TABLE data."order"
(
    id                SERIAL          NOT NULL,
    order_date        date            NOT NULL,
    customer_id       int             NOT NULL,
    address_id        int             NOT NULL,
    service_id        int             NOT NULL,
    extra_articles_id int             NOT NULL,
    payment_method_id int             NOT NULL,
    CONSTRAINT order_pk PRIMARY KEY (id)
);

CREATE TABLE data.order_item
(
    id          SERIAL      NOT NULL,
    quantity    int          NOT NULL,
    order_id    int          NOT NULL,
    monument_id int          NOT NULL,
    CONSTRAINT order_item_pk PRIMARY KEY (id)
);

CREATE TABLE data.payment_method
(
    id   SERIAL      NOT NULL,
    name varchar(30) NOT NULL,
    CONSTRAINT payment_method_pk PRIMARY KEY (id)
);

CREATE TABLE data.personal_data
(
    id           SERIAL       NOT NULL,
    full_name    varchar(255) NOT NULL,
    email        varchar(255) NOT NULL,
    phone_number varchar(30)  NOT NULL,
    CONSTRAINT personal_data_pk PRIMARY KEY (id)
);

CREATE TABLE data.service
(
    id          SERIAL       NOT NULL,
    name        varchar(40)  NOT NULL,
    description varchar(255) NOT NULL,
    CONSTRAINT service_pk PRIMARY KEY (id)
);

CREATE TABLE data.supplier
(
    id               SERIAL       NOT NULL,
    contact_person   varchar(40)  NOT NULL,
    personal_data_id int          NOT NULL,
    CONSTRAINT supplier_pk PRIMARY KEY (id)
);

insert into data.description (id, price, name, image , material, width, weight, height) values (1, 86844.06, 'Monument(1)', 'http://dummyimage.com/195x100.png/ff4444/ffffff', 'Granite', 283.09, 89.95, 143.37);
insert into data.description (id, price, name, image , material, width, weight, height) values (2, 59125.27, 'Monument(2)', 'http://dummyimage.com/209x100.png/cc0000/ffffff', 'Stone', 78.85, 97.39, 56.31);
insert into data.description (id, price, name, image , material, width, weight, height) values (3, 44339.42, 'Monument(3)', 'http://dummyimage.com/239x100.png/dddddd/000000', 'Granite', 240.98, 42.92, 47.3);
insert into data.description (id, price, name, image , material, width, weight, height) values (4, 10986.95, 'Monument(4)', 'http://dummyimage.com/240x100.png/cc0000/ffffff', 'Limestone', 93.81, 142.55, 60.64);
insert into data.description (id, price, name, image , material, width, weight, height) values (5, 93800.43, 'Monument(5)', 'http://dummyimage.com/219x100.png/cc0000/ffffff', 'Granite', 89.17, 161.12, 125.53);
insert into data.description (id, price, name, image , material, width, weight, height) values (6, 44727.42, 'Monument(6)', 'http://dummyimage.com/160x100.png/5fa2dd/ffffff', 'Sandstone', 134.09, 108.71, 74.75);
insert into data.description (id, price, name, image , material, width, weight, height) values (7, 69238.59, 'Monument(7)', 'http://dummyimage.com/201x100.png/ff4444/ffffff', 'Onyx', 241.66, 34.59, 89.94);
insert into data.description (id, price, name, image , material, width, weight, height) values (8, 50384.02, 'Monument(8)', 'http://dummyimage.com/236x100.png/cc0000/ffffff', 'Marble', 153.67, 179.13, 95.05);
insert into data.description (id, price, name, image , material, width, weight, height) values (9, 30399.89, 'Monument(9)', 'http://dummyimage.com/224x100.png/dddddd/000000', 'Marble', 129.51, 95.0, 92.92);
insert into data.description (id, price, name, image , material, width, weight, height) values (10, 16226.34, 'Monument(10)', 'http://dummyimage.com/211x100.png/ff4444/ffffff', 'Marble', 136.75, 149.3, 60.27);
insert into data.description (id, price, name, image , material, width, weight, height) values (11, 78468.58, 'Monument(11)', 'http://dummyimage.com/195x100.png/5fa2dd/ffffff', 'Brass', 259.01, 47.33, 89.35);
insert into data.description (id, price, name, image , material, width, weight, height) values (12, 73549.89, 'Monument(12)', 'http://dummyimage.com/240x100.png/dddddd/000000', 'Slate', 143.65, 176.67, 101.7);
insert into data.description (id, price, name, image , material, width, weight, height) values (13, 8704.01, 'Monument(13)', 'http://dummyimage.com/131x100.png/ff4444/ffffff', 'Bronze', 60.91, 172.3, 118.56);
insert into data.description (id, price, name, image , material, width, weight, height) values (14, 76796.27, 'Monumet(14)', 'http://dummyimage.com/231x100.png/ff4444/ffffff', 'Granite', 227.38, 179.38, 46.81);
insert into data.description (id, price, name, image , material, width, weight, height) values (15, 47129.91, 'Monument(15)', 'http://dummyimage.com/247x100.png/5fa2dd/ffffff', 'Granite', 282.54, 183.91, 115.34);
insert into data.description (id, price, name, image , material, width, weight, height) values (16, 54963.51, 'Monument(16)', 'http://dummyimage.com/138x100.png/cc0000/ffffff', 'Stone', 265.45, 136.29, 68.0);
insert into data.description (id, price, name, image , material, width, weight, height) values (17, 17664.46, 'Monument(17)', 'http://dummyimage.com/246x100.png/dddddd/000000', 'Onyx', 205.24, 120.5, 132.97);
insert into data.description (id, price, name, image , material, width, weight, height) values (18, 91462.65, 'Monument(18)', 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', 'Marble', 54.7, 141.11, 84.8);
insert into data.description (id, price, name, image , material, width, weight, height) values (19, 11196.98, 'Monument(19)', 'http://dummyimage.com/100x100.png/5fa2dd/ffffff', 'Bronze', 204.6, 157.03, 72.53);
insert into data.description (id, price, name, image , material, width, weight, height) values (20, 15747.34, 'Monument(20)', 'http://dummyimage.com/192x100.png/dddddd/000000', 'Granite', 259.77, 89.5, 93.95);
insert into data.description (id, price, name, image , material, width, weight, height) values (21, 92204.27, 'Monument(21)', 'http://dummyimage.com/191x100.png/cc0000/ffffff', 'Granite', 115.31, 33.78, 67.3);
insert into data.description (id, price, name, image , material, width, weight, height) values (22, 69781.58, 'Monument(22)', 'http://dummyimage.com/135x100.png/dddddd/000000', 'Stone', 258.1, 26.16, 138.12);
insert into data.description (id, price, name, image , material, width, weight, height) values (23, 82217.89, 'Monument(23)', 'http://dummyimage.com/183x100.png/ff4444/ffffff', 'Granite', 128.1, 198.33, 45.81);
insert into data.description (id, price, name, image , material, width, weight, height) values (24, 59800.67, 'Monument(24)', 'http://dummyimage.com/135x100.png/ff4444/ffffff', 'Granite', 60.95, 52.62, 119.69);
insert into data.description (id, price, name, image , material, width, weight, height) values (25, 53092.16, 'Monument(25)', 'http://dummyimage.com/223x100.png/ff4444/ffffff', 'Granite', 104.54, 104.64, 68.88);
insert into data.description (id, price, name, image , material, width, weight, height) values (26, 4067.71, 'Monument(26)', 'http://dummyimage.com/128x100.png/ff4444/ffffff', 'Stone', 101.95, 47.69, 103.7);
insert into data.description (id, price, name, image , material, width, weight, height) values (27, 98518.95, 'Monument(27)', 'http://dummyimage.com/180x100.png/5fa2dd/ffffff', 'Granite', 68.12, 78.42, 79.86);
insert into data.description (id, price, name, image , material, width, weight, height) values (28, 22809.79, 'Monument(28)', 'http://dummyimage.com/174x100.png/ff4444/ffffff', 'Granite', 159.2, 126.96, 121.12);
insert into data.description (id, price, name, image , material, width, weight, height) values (29, 19658.66, 'Monument(29)', 'http://dummyimage.com/163x100.png/ff4444/ffffff', 'Onyx', 202.5, 143.27, 93.23);
insert into data.description (id, price, name, image , material, width, weight, height) values (30, 30170.58, 'Monument(30)', 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Bronze', 295.43, 26.5, 94.61);
insert into data.description (id, price, name, image , material, width, weight, height) values (31, 12170.58, 'Pedestal(1)', 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Bronze', 78.43, 26.5, 20.61);

insert into data.description (id, price, name, image , material, width, weight, height) values (32, 11170.58, 'Pedestal(2)', 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Granite', 195.43, 23.5, 15.61);

insert into data.description (id, price, name, image , material, width, weight, height) values (33, 10170.58, 'Pedestal(3)', 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Granite', 105.43, 29.5, 19.61);

insert into data.description (id, price, name, image , material, width, weight, height) values (34, 9170.58, 'Pedestal(4)', 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Onyx', 100.43, 40.5, 15.61);

















insert into data.description (id, price, name, image , material, width, weight, height) values (35, 10948.3, 'Pedestal(5)', 'http://dummyimage.com/242x100.png/cc0000/ffffff', 'Granite', 58.43, 28.85, 3.15);
insert into data.description (id, price, name, image , material, width, weight, height) values (36, 6182.32, 'Plinth(1)', 'http://dummyimage.com/184x100.png/ff4444/ffffff', 'Granite', 97.11, 21.07, 10.86);
insert into data.description (id, price, name, image , material, width, weight, height) values (37, 3317.74, 'Column(1)', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'Granite', 55.8, 29.44, 10.79);
insert into data.description (id, price, name, image , material, width, weight, height) values (38, 7125.34, 'Column(2)', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'Granite', 67.87, 20.81, 25.95);
insert into data.description (id, price, name, image , material, width, weight, height) values (39, 14477.28, 'Pedestal(6)', 'http://dummyimage.com/172x100.png/cc0000/ffffff', 'Granite', 93.0, 29.84, 29.37);
insert into data.description (id, price, name, image , material, width, weight, height) values (40, 6918.96, 'Plinth(2)', 'http://dummyimage.com/194x100.png/ff4444/ffffff', 'Granite', 63.15, 27.61, 13.41);
insert into data.description (id, price, name, image , material, width, weight, height) values (41, 14362.95, 'Column(3)', 'http://dummyimage.com/168x100.png/cc0000/ffffff', 'Granite', 69.22, 25.83, 10.82);
insert into data.description (id, price, name, image , material, width, weight, height) values (42, 12960.67, 'Pedestal(7)', 'http://dummyimage.com/206x100.png/cc0000/ffffff', 'Granite', 76.73, 22.53, 18.43);
insert into data.description (id, price, name, image , material, width, weight, height) values (43, 2899.06, 'Column(4)', 'http://dummyimage.com/129x100.png/ff4444/ffffff', 'Granite', 78.04, 24.14, 34.11);
insert into data.description (id, price, name, image , material, width, weight, height) values (44, 8339.49, 'Pedestal(8)', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', 'Granite', 67.42, 20.86, 22.08);
insert into data.description (id, price, name, image , material, width, weight, height) values (45, 10482.2, 'Column(5)', 'http://dummyimage.com/131x100.png/5fa2dd/ffffff', 'Onyx', 64.87, 28.92, 18.21);
insert into data.description (id, price, name, image , material, width, weight, height) values (46, 7213.32, 'Plinth(3)', 'http://dummyimage.com/201x100.png/cc0000/ffffff', 'Onyx', 80.36, 27.11, 18.17);
insert into data.description (id, price, name, image , material, width, weight, height) values (47, 7618.18, 'Plinth(4)', 'http://dummyimage.com/132x100.png/cc0000/ffffff', 'Onyx', 54.52, 27.26, 30.59);
insert into data.description (id, price, name, image , material, width, weight, height) values (48, 14907.13, 'Pedestal(9)', 'http://dummyimage.com/151x100.png/dddddd/000000', 'Onyx', 50.93, 23.99, 9.62);
insert into data.description (id, price, name, image , material, width, weight, height) values (49, 15846.44, 'Pedestal(10)', 'http://dummyimage.com/172x100.png/5fa2dd/ffffff', 'Onyx', 60.07, 22.0, 32.19);
insert into data.description (id, price, name, image , material, width, weight, height) values (50, 2746.49, 'Pedestal(11)', 'http://dummyimage.com/190x100.png/cc0000/ffffff', 'Granite', 91.0, 23.6, 5.41);
insert into data.description (id, price, name, image , material, width, weight, height) values (60, 15938.48, 'Pedestal(12)', 'http://dummyimage.com/109x100.png/dddddd/000000', 'Aluminum', 82.11, 21.82, 26.26);
insert into data.description (id, price, name, image , material, width, weight, height) values (61, 12236.88, 'Pedestal(13)', 'http://dummyimage.com/214x100.png/ff4444/ffffff', 'Stone', 55.88, 25.43, 25.11);
insert into data.description (id, price, name, image , material, width, weight, height) values (62, 18384.87, 'Pedestal(14)', 'http://dummyimage.com/166x100.png/cc0000/ffffff', 'Onyx', 58.23, 27.42, 12.13);
insert into data.description (id, price, name, image , material, width, weight, height) values (63, 9948.67, 'Plinth(5)', 'http://dummyimage.com/241x100.png/cc0000/ffffff', 'Bronze', 73.71, 29.62, 3.28);
insert into data.description (id, price, name, image , material, width, weight, height) values (64, 6039.66, 'Column(6)', 'http://dummyimage.com/161x100.png/5fa2dd/ffffff', 'Brass', 92.55, 21.46, 8.63);
insert into data.description (id, price, name, image , material, width, weight, height) values (67, 9487.88, 'Plinth(6)', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', 'Bronze', 99.14, 22.21, 10.79);
insert into data.description (id, price, name, image , material, width, weight, height) values (68, 6810.54, 'Column(7)', 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'Bronze', 93.95, 23.96, 31.82);
insert into data.description (id, price, name, image , material, width, weight, height) values (69, 10651.67, 'Plinth(7)', 'http://dummyimage.com/189x100.png/ff4444/ffffff', 'Stone', 75.34, 22.06, 23.11);
insert into data.description (id, price, name, image , material, width, weight, height) values (70, 10343.43, 'Plinth(8)', 'http://dummyimage.com/102x100.png/5fa2dd/ffffff', 'Bronze', 76.07, 23.25, 31.87);
insert into data.description (id, price, name, image , material, width, weight, height) values (71, 13875.12, 'Plinth(9)', 'http://dummyimage.com/222x100.png/dddddd/000000', 'Granite', 77.26, 26.88, 16.25);
insert into data.description (id, price, name, image , material, width, weight, height) values (72, 8398.58, 'Column(8)', 'http://dummyimage.com/146x100.png/5fa2dd/ffffff', 'Stone', 76.77, 23.27, 23.05);
insert into data.description (id, price, name, image , material, width, weight, height) values (73, 6953.29, 'Column(9)', 'http://dummyimage.com/240x100.png/dddddd/000000', 'Granite', 84.76, 25.85, 37.06);
insert into data.description (id, price, name, image , material, width, weight, height) values (74, 8411.61, 'Column(10)', 'http://dummyimage.com/114x100.png/dddddd/000000', 'Bronze', 89.93, 24.1, 23.06);
insert into data.description (id, price, name, image , material, width, weight, height) values (75, 4217.26, 'Column(11)',
'http://dummyimage.com/220x100.png/dddddd/000000', 'Bronze', 87.77, 28.7, 7.66);

insert into data.extra_article (id, description_id) values (1,31);
insert into data.extra_article (id, description_id) values (2,32);
insert into data.extra_article (id, description_id) values (3,33);
insert into data.extra_article (id, description_id) values (4,34);
insert into data.extra_article (id, description_id) values (5,35);
insert into data.extra_article (id, description_id) values (6,36);
insert into data.extra_article (id, description_id) values (7,37);
insert into data.extra_article (id, description_id) values (8,38);
insert into data.extra_article (id, description_id) values (9,39);
insert into data.extra_article (id, description_id) values (10,40);
insert into data.extra_article (id, description_id) values (11,41);
insert into data.extra_article (id, description_id) values (12,42);
insert into data.extra_article (id, description_id) values (13,43);
insert into data.extra_article (id, description_id) values (14,44);
insert into data.extra_article (id, description_id) values (15,45);
insert into data.extra_article (id, description_id) values (16,46);
insert into data.extra_article (id, description_id) values (17,47);
insert into data.extra_article (id, description_id) values (18,48);
insert into data.extra_article (id, description_id) values (19,49);
insert into data.extra_article (id, description_id) values (20,50);
insert into data.extra_article (id, description_id) values (21,60);
insert into data.extra_article (id, description_id) values (22,61);
insert into data.extra_article (id, description_id) values (23,62);
insert into data.extra_article (id, description_id) values (24,63);
insert into data.extra_article (id, description_id) values (25,64);
insert into data.extra_article (id, description_id) values (26,67);
insert into data.extra_article (id, description_id) values (27,68);
insert into data.extra_article (id, description_id) values (28,69);
insert into data.extra_article (id, description_id) values (29,70);
insert into data.extra_article (id, description_id) values (30,71);
insert into data.extra_article (id, description_id) values (31,72);
insert into data.extra_article (id, description_id) values (32,73);
insert into data.extra_article (id, description_id) values (33,74);
insert into data.extra_article (id, description_id) values (34,75);

INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (1, 'Eloise Dunne', 'edunne0@forbedata.com', '872-471-7353');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (2, 'Tristam Terris', 'tterris1@elegantthemedata.com', '707-486-5446');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (3, 'Worthington Yitshak', 'wyitshak2@myspace.com', '521-747-4770');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (4, 'Mordy Erdely', 'merdely3@acquirethisname.com', '338-490-0781');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (5, 'Lonni Ivanyutin', 'livanyutin4@github.com', '650-494-0053');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (6, 'Dorthea Baford', 'dbaford5@flickr.com', '772-129-3242');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (7, 'Adelbert Hurley', 'ahurley6@icq.com', '990-532-7451');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (8, 'Ulrick Walsh', 'uwalsh7@vkontakte.ru', '328-983-7332');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (9, 'Gregoor Beeho', 'gbeeho8@nba.com', '432-962-4386');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (10, 'Clyde Ruger', 'cruger9@zimbio.com', '428-829-3462');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (11, 'Greta Alvares', 'galvaresa@constantcontact.com', '251-364-2895');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (12, 'Erminia Armatage', 'earmatageb@ycombinator.com', '502-785-7038');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (13, 'Niel Shobbrook', 'nshobbrookc@printfriendly.com', '354-439-4530');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (14, 'Sybilla Huxtable', 'shuxtabled@gmpg.org', '653-378-2370');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (15, 'Rollo Swinfon', 'rswinfone@godaddy.com', '601-811-7909');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (16, 'Jany Vollam', 'jvollamf@hud.gov', '931-721-4523');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (17, 'Nadiya Proughten', 'nproughteng@biblegateway.com', '333-689-6422');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (18, 'Lars Hilary', 'lhilaryh@adobe.com', '553-247-6533');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (19, 'Josepha Brushneen', 'jbrushneeni@yolasite.com', '892-656-1672');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (20, 'George Guillard', 'gguillardj@google.com.hk', '498-829-6386');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (21, 'Mitchel Savins', 'msavinsk@xing.com', '328-987-5616');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (22, 'Bentley Walding', 'bwaldingl@foxnewdata.com', '708-277-1548');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (23, 'Aurelea Guilford', 'aguilfordm@edublogdata.org', '969-753-2831');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (24, 'Margit Benkin', 'mbenkinn@nyu.edu', '148-734-0225');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (25, 'Salomi Novotni', 'snovotnio@wiley.com', '840-217-7997');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (26, 'Shandy Sutlieff', 'ssutlieffp@multiply.com', '620-699-1625');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (27, 'Cello Goncaves', 'cgoncavesq@umich.edu', '402-797-7638');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (28, 'Joella Kondratowicz', 'jkondratowiczr@twitter.com', '210-379-1910');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (29, 'Barri Kemish', 'bkemishs@hhdata.gov', '914-937-6879');
INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES (30, 'Tommie Glenwright', 'tglenwrightt@g.co', '537-945-5730');

insert into data.service (id, name, description) values (1, 'Tombstone design', 'Designing personalized tombstones according to the clients preferences, including the shape, material, inscriptions, ornaments, etc.');
insert into data.service (id, name, description) values (2, 'Custom tombstone production', 'Creating custom-made tombstones');
insert into data.service (id, name, description) values (3, 'Preservation of tombstones', 'Preservation of existing tombstones');
insert into data.service (id, name, description) values (4, 'Consultation and support', 'We can provide guidance and support to clients in choosing the right tombstone, materials, designs, etc.');
insert into data.service (id, name, description) values (5, 'Restoration', 'Restoration and preservation of existing tombstonedata.');
insert into data.service (id, name, description) values (6, 'Transportation and installation', 'We can can take care of transporting tombstones to the burial site and professionally installing them.');

insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (1, 'Anderson', '32277', 'Jacksonville', 'United States', 31, 10);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (2, 'Jackson', '5009', 'Anilao', 'Philippines', 65, 86);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (3, 'Anzinger', '4429', 'Ymittos', 'Greece', 40, 4);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (4, 'Redwing', '6954', 'Warnes', 'Bolivia', 99, 28);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (5, 'Sundown', '7750', 'Domingos', 'Portugal', 6, 16);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (6, 'Gina', '30342', 'Uvarovka', 'Russia', 65, 63);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (7, 'Sullivan', '518-5', 'Rumoi', 'Japan', 91, 51);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (8, 'Comanche', '88628', 'Kota Kinabalu', 'Malaysia', 35, 28);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (9, 'Alpine', '3025', 'Halmstad', 'Sweden', 5, 107);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (10, 'Union', '2621', 'Guinsadan', 'Philippines', 86, 19);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (11, 'Rowland', '3632', 'Dianya', 'China', 32, 59);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (12, 'Spohn', '14461', 'Vishnyakovskiye Dachi', 'Russia', 98, 37);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (13, 'Everett', '6284', 'Rikitea', 'French Polynesia', 85, 139);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (14, 'Brickson Park', '32842', 'Sumberpinang Satu', 'Indonesia', 94, 9);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (15, 'Tennyson', '45872', 'Vondrozo', 'Madagascar', 6, 119);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (16, 'Vidon', '10953', 'Chakari', 'Zimbabwe', 2, 96);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (17, 'Village Green', '47-451', 'Borucin', 'Poland', 4, 11);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (18, 'South', '28345', 'Hadakewa', 'Indonesia', 66, 153);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (19, 'Carpenter', '3445', 'Zhaocun', 'China', 82, 166);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (20, 'Messerschmidt', '5234', 'Xinjian', 'China', 68, 108);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (21, 'Oak Valley', '73354', 'Shahrud', 'Iran', 23, 18);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (22, 'Del Sol', '496320', 'Cortinhas', 'Portugal', 36, 26);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (23, 'Warrior', '17860', 'Pacaembu', 'Brazil', 24, 170);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (24, 'Doe Crossing', '7345', 'Lebak', 'Indonesia', 95, 105);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (25, 'Vidon', '8673', 'Chahannao', 'China', 81, 25);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (26, 'Rowland', '03854', 'Pacaraos', 'Peru', 64, 86);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (27, 'Shoshone', '6384', 'Curepipe', 'Mauritius', 6, 87);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (28, 'Debs', '82743', 'Gbawe', 'Ghana', 50, 95);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (29, 'Rieder', '7621', 'PГ©cs', 'Hungary', 3, 53);
insert into data.address (id, street, postcode, city, region, building_number, apartment_number) values (30, 'Golf', '2937', 'Sonzacate', 'El Salvador', 69, 167);

insert into data.payment_method (id, name) values (1, 'Card');
insert into data.payment_method (id, name) values (2, 'Cash');
insert into data.payment_method (id, name) values (3, 'Transfer');

insert into data.category (id, category_name) values (1, 'Single');
insert into data.category (id, category_name) values (2, 'Double');
insert into data.category (id, category_name) values (3, 'Children');
insert into data.category (id, category_name) values (4, 'Family');

INSERT INTO data.personal_data (id, full_name, email, phone_number) VALUES
(31, 'Isadora Larkham', 'ilarkham1e@twitpic.com', '632-862-1163'),
(32, 'Hobey Brislane', 'hbrislane1f@drupal.org', '442-924-7279'),
(33, 'Valaria Riguard', 'vriguard1g@webnode.com', '978-238-8041'),
(34, 'Loy Hurdman', 'lhurdman1h@posteroudata.com', '564-989-3154'),
(35, 'Miran Mole', 'mmole1i@hatena.ne.jp', '103-687-9375'),
(36, 'Adolf Pykerman', 'apykerman1j@discuz.net', '261-238-2767'),
(37, 'Yardley Cock', 'ycock1k@tmall.com', '890-811-5478'),
(38, 'Otha Wasmuth', 'owasmuth1l@gizmodo.com', '689-523-2299'),
(39, 'Blythe Elgood', 'belgood1m@delicioudata.com', '216-980-5708'),
(40, 'Lilyan Kneebone', 'lkneebone1n@dedecmdata.com', '851-356-4660'),
(41, 'Wes Redpath', 'wredpath1o@psu.edu', '342-569-9893'),
(42, 'Blancha Denington', 'bdenington1p@163.com', '505-724-3884'),
(43, 'Talyah Tobitt', 'ttobitt1q@blogger.com', '780-167-8221'),
(44, 'Bili Deville', 'bdeville1r@nasa.gov', '407-992-4336'),
(45, 'Isidro Daeuble', 'idaeuble1s@geocitiedata.jp', '529-784-2769'),
(46, 'Leonie Hallyburton', 'lhallyburton1t@jugem.jp', '641-645-5910'),
(47, 'Gualterio Mapp', 'gmapp1u@mozilla.org', '823-830-2643'),
(48, 'Hobart Crawforth', 'hcrawforth1v@angelfire.com', '968-447-3126'),
(49, 'Lester Seaborne', 'lseaborne1w@yandex.ru', '192-477-8765'),
(50, 'Randy Madrell', 'rmadrell1x@goo.ne.jp', '724-421-9691'),
(51, 'Netta McInulty', 'nmcinulty1y@tuttocitta.it', '577-938-1992'),
(52, 'Alida Frostdick', 'afrostdick1z@house.gov', '421-673-2686'),
(53, 'Mariel Blackaller', 'mblackaller20@independent.co.uk', '818-671-5263'),
(54, 'Benito Baffin', 'bbaffin21@prweb.com', '162-950-8834'),
(55, 'Dorothy Gerge', 'dgerge22@ning.com', '476-344-1657'),
(56, 'Eleni Joanic', 'ejoanic23@newsvine.com', '899-225-9310'),
(57, 'Cathie Snedden', 'csnedden24@hc360.com', '597-333-4082'),
(58, 'Felicio Quincey', 'fquincey25@i2i.jp', '842-770-2895'),
(59, 'Benoit Whartonby', 'bwhartonby26@photobucket.com', '529-410-5332'),
(60, 'Pris Blodg', 'pblodg27@uol.com.br', '734-177-2466');

insert into data.customer (id, pesel, personal_data_id) values (1, 98278456737, 1);
insert into data.customer (id, pesel, personal_data_id) values (2, 28415768030, 2);
insert into data.customer (id, pesel, personal_data_id) values (3, 76258933824, 3);
insert into data.customer (id, pesel, personal_data_id) values (4, 83335569656, 4);
insert into data.customer (id, pesel, personal_data_id) values (5, 94718529545, 5);
insert into data.customer (id, pesel, personal_data_id) values (6, 26888401169, 6);
insert into data.customer (id, pesel, personal_data_id) values (7, 28760660712, 7);
insert into data.customer (id, pesel, personal_data_id) values (8, 96453633555, 8);
insert into data.customer (id, pesel, personal_data_id) values (9, 68309516830, 9);
insert into data.customer (id, pesel, personal_data_id) values (10, 45073133963, 10);
insert into data.customer (id, pesel, personal_data_id) values (11, 92606797539, 11);
insert into data.customer (id, pesel, personal_data_id) values (12, 38020309293, 12);
insert into data.customer (id, pesel, personal_data_id) values (13, 28562810338, 13);
insert into data.customer (id, pesel, personal_data_id) values (14, 37725429663, 14);
insert into data.customer (id, pesel, personal_data_id) values (15, 39976025933, 15);
insert into data.customer (id, pesel, personal_data_id) values (16, 54585129994, 16);
insert into data.customer (id, pesel, personal_data_id) values (17, 99596600526, 17);
insert into data.customer (id, pesel, personal_data_id) values (18, 48711606021, 18);
insert into data.customer (id, pesel, personal_data_id) values (19, 25327407588, 19);
insert into data.customer (id, pesel, personal_data_id) values (20, 54966913150, 20);
insert into data.customer (id, pesel, personal_data_id) values (21, 66317433311, 21);
insert into data.customer (id, pesel, personal_data_id) values (22, 98251325453, 22);
insert into data.customer (id, pesel, personal_data_id) values (23, 36363073704, 23);
insert into data.customer (id, pesel, personal_data_id) values (24, 86224866012, 24);
insert into data.customer (id, pesel, personal_data_id) values (25, 19574235709, 25);
insert into data.customer (id, pesel, personal_data_id) values (26, 44554546029, 26);
insert into data.customer (id, pesel, personal_data_id) values (27, 74570076703, 27);
insert into data.customer (id, pesel, personal_data_id) values (28, 68193593610, 28);
insert into data.customer (id, pesel, personal_data_id) values (29, 33824697004, 29);
insert into data.customer (id, pesel, personal_data_id) values (30, 45424710048, 30);

insert into data.supplier (id, contact_person, personal_data_id) values (1, 'Winston Poulglais', 31);
insert into data.supplier (id, contact_person, personal_data_id) values (2, 'Michel Vella', 32);
insert into data.supplier (id, contact_person, personal_data_id) values (3, 'Gunilla Dummett', 33);
insert into data.supplier (id, contact_person, personal_data_id) values (4, 'Reilly Doyley', 34);
insert into data.supplier (id, contact_person, personal_data_id) values (5, 'Danica McGillreich', 35);
insert into data.supplier (id, contact_person, personal_data_id) values (6, 'Nickie Carlozzi', 36);
insert into data.supplier (id, contact_person, personal_data_id) values (7, 'Maris Bewicke', 37);
insert into data.supplier (id, contact_person, personal_data_id) values (8, 'Sibel Imm', 38);
insert into data.supplier (id, contact_person, personal_data_id) values (9, 'Mose Van Schafflaer', 39);
insert into data.supplier (id, contact_person, personal_data_id) values (10, 'Delila Bance', 40);
insert into data.supplier (id, contact_person, personal_data_id) values (11, 'Clive Martignoni', 41);
insert into data.supplier (id, contact_person, personal_data_id) values (12, 'Almeda Cowley', 42);
insert into data.supplier (id, contact_person, personal_data_id) values (13, 'Katharine Vause', 43);
insert into data.supplier (id, contact_person, personal_data_id) values (14, 'Hammad O''Hanley', 44);
insert into data.supplier (id, contact_person, personal_data_id) values (15, 'Pietrek Caukill', 45);
insert into data.supplier (id, contact_person, personal_data_id) values (16, 'Merry Gergolet', 46);
insert into data.supplier (id, contact_person, personal_data_id) values (17, 'Grannie Pietruszka', 47);
insert into data.supplier (id, contact_person, personal_data_id) values (18, 'Deana Buncher', 48);
insert into data.supplier (id, contact_person, personal_data_id) values (19, 'Robb Orridge', 49);
insert into data.supplier (id, contact_person, personal_data_id) values (20, 'Devora Glascott', 50);
insert into data.supplier (id, contact_person, personal_data_id) values (21, 'Augustine Kilbey', 51);
insert into data.supplier (id, contact_person, personal_data_id) values (22, 'Buddy Minter', 52);
insert into data.supplier (id, contact_person, personal_data_id) values (23, 'Raul Chelam', 53);
insert into data.supplier (id, contact_person, personal_data_id) values (24, 'Randi Czyz', 54);
insert into data.supplier (id, contact_person, personal_data_id) values (25, 'Orazio Bumpus', 55);
insert into data.supplier (id, contact_person, personal_data_id) values (26, 'Nell Paske', 56);
insert into data.supplier (id, contact_person, personal_data_id) values (27, 'Lamond Rutley', 57);
insert into data.supplier (id, contact_person, personal_data_id) values (28, 'Sandy Habgood', 58);
insert into data.supplier (id, contact_person, personal_data_id) values (29, 'Ulrika Mocker', 59);
insert into data.supplier (id, contact_person, personal_data_id) values (30, 'Lilia Blazy', 60);

insert into data.monument (id, supplier_id, category_id, description_id) values (1, 1, 4, 1);
insert into data.monument (id, supplier_id, category_id, description_id) values (2, 2, 1, 2);
insert into data.monument (id, supplier_id, category_id, description_id) values (3, 3, 1, 3);
insert into data.monument (id, supplier_id, category_id, description_id) values (4, 4, 4, 4);
insert into data.monument (id, supplier_id, category_id, description_id) values (5, 5, 4, 5);
insert into data.monument (id, supplier_id, category_id, description_id) values (6, 6, 3, 6);
insert into data.monument (id, supplier_id, category_id, description_id) values (7, 7, 4, 7);
insert into data.monument (id, supplier_id, category_id, description_id) values (8, 8, 2, 8);
insert into data.monument (id, supplier_id, category_id, description_id) values (9, 9, 1, 9);
insert into data.monument (id, supplier_id, category_id, description_id) values (10, 10, 1, 10);
insert into data.monument (id, supplier_id, category_id, description_id) values (11, 11, 1, 11);
insert into data.monument (id, supplier_id, category_id, description_id) values (12, 12, 3, 12);
insert into data.monument (id, supplier_id, category_id, description_id) values (13, 13, 3, 13);
insert into data.monument (id, supplier_id, category_id, description_id) values (14, 14, 4, 14);
insert into data.monument (id, supplier_id, category_id, description_id) values (15, 15, 1, 15);
insert into data.monument (id, supplier_id, category_id, description_id) values (16, 16, 3, 16);
insert into data.monument (id, supplier_id, category_id, description_id) values (17, 17, 2, 17);
insert into data.monument (id, supplier_id, category_id, description_id) values (18, 18, 3, 18);
insert into data.monument (id, supplier_id, category_id, description_id) values (19, 19, 3, 19);
insert into data.monument (id, supplier_id, category_id, description_id) values (20, 20, 1, 20);
insert into data.monument (id, supplier_id, category_id, description_id) values (21, 21, 3, 21);
insert into data.monument (id, supplier_id, category_id, description_id) values (22, 22, 2, 22);
insert into data.monument (id, supplier_id, category_id, description_id) values (23, 23, 2, 23);
insert into data.monument (id, supplier_id, category_id, description_id) values (24, 24, 3, 24);
insert into data.monument (id, supplier_id, category_id, description_id) values (25, 25, 4, 25);
insert into data.monument (id, supplier_id, category_id, description_id) values (26, 26, 4, 26);
insert into data.monument (id, supplier_id, category_id, description_id) values (27, 27, 1, 27);
insert into data.monument (id, supplier_id, category_id, description_id) values (28, 28, 3, 28);
insert into data.monument (id, supplier_id, category_id, description_id) values (29, 29, 4, 29);
insert into data.monument (id, supplier_id, category_id, description_id) values (30, 30, 2, 30);


insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (1, '2022-10-08 19:39:08', 1, 1, 3, 14, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (2, '2022-03-17 22:18:58', 2, 2, 6, 23, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (3, '2020-07-26 15:38:23', 3, 3, 3, 14, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (4, '2020-10-24 23:39:37', 4, 4, 5, 2, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (5, '2022-08-12 12:16:08', 5, 5, 4, 23, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (6, '2020-05-23 06:25:50', 6, 6, 3, 4, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (7, '2022-10-23 22:40:03', 7, 7, 5, 26, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (8, '2022-10-26 07:03:02', 8, 8, 3, 11, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (9, '2021-06-10 12:13:06', 9, 9, 6, 19, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (10, '2022-10-15 22:28:42', 10, 10, 2, 6, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (11, '2021-07-17 13:54:09', 11, 11, 2, 10, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (12, '2020-05-21 00:02:02', 12, 12, 1, 9, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (13, '2021-01-09 23:50:54', 13, 13, 6, 26, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (14, '2021-12-17 16:35:04', 14, 14, 2, 22, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (15, '2022-01-03 10:24:31', 15, 15, 4, 6, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (16, '2020-11-18 13:17:19', 16, 16, 1, 7, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (17, '2023-02-20 22:20:41', 17, 17, 1, 2, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (18, '2022-11-17 17:00:05', 18, 18, 2, 18, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (19, '2021-07-19 12:22:09', 19, 19, 4, 30, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (20, '2022-07-02 07:13:24', 20, 20, 3, 27, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (21, '2020-11-23 21:56:04', 21, 21, 3, 3, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (22, '2023-04-03 08:40:32', 22, 22, 3, 34, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (23, '2021-09-28 16:19:07', 23, 23, 3, 29, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (24, '2022-01-04 12:36:58', 24, 24, 6, 6, 3);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (25, '2020-12-25 06:25:46', 25, 25, 1, 22, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (26, '2023-04-18 01:59:51', 26, 26, 3, 21, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (27, '2022-08-26 23:17:01', 27, 27, 3, 33, 2);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (28, '2023-02-02 08:24:54', 28, 28, 6, 4, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (29, '2022-01-10 13:19:10', 29, 29, 6, 32, 1);
insert into data.order (id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id) values (30, '2023-06-05 21:41:08', 30, 30, 6, 23, 3);

insert into data.order_item (id, quantity,  order_id, monument_id) values (1, 2, 1, 1);
insert into data.order_item (id, quantity,  order_id, monument_id) values (2, 1, 2, 2);
insert into data.order_item (id, quantity,  order_id, monument_id) values (3, 2, 3, 3);
insert into data.order_item (id, quantity,  order_id, monument_id) values (4, 3, 4, 4);
insert into data.order_item (id, quantity,  order_id, monument_id) values (5, 5, 5, 5);
insert into data.order_item (id, quantity,  order_id, monument_id) values (6, 5, 6, 6);
insert into data.order_item (id, quantity,  order_id, monument_id) values (7, 3, 7, 7);
insert into data.order_item (id, quantity,  order_id, monument_id) values (8, 2, 8, 8);
insert into data.order_item (id, quantity,  order_id, monument_id) values (9, 5, 9, 9);
insert into data.order_item (id, quantity,  order_id, monument_id) values (10, 1, 10, 10);
insert into data.order_item (id, quantity,  order_id, monument_id) values (11, 3, 11, 11);
insert into data.order_item (id, quantity,  order_id, monument_id) values (12, 5, 12, 12);
insert into data.order_item (id, quantity,  order_id, monument_id) values (13, 2, 13, 13);
insert into data.order_item (id, quantity,  order_id, monument_id) values (14, 3, 14, 14);
insert into data.order_item (id, quantity,  order_id, monument_id) values (15, 5, 15, 15);
insert into data.order_item (id, quantity,  order_id, monument_id) values (16, 1, 16, 16);
insert into data.order_item (id, quantity,  order_id, monument_id) values (17, 2, 17, 17);
insert into data.order_item (id, quantity,  order_id, monument_id) values (18, 3, 18, 18);
insert into data.order_item (id, quantity,  order_id, monument_id) values (19, 1, 19, 19);
insert into data.order_item (id, quantity,  order_id, monument_id) values (20, 2, 20, 20);
insert into data.order_item (id, quantity,  order_id, monument_id) values (21, 3, 21, 21);
insert into data.order_item (id, quantity,  order_id, monument_id) values (22, 1, 22, 22);
insert into data.order_item (id, quantity,  order_id, monument_id) values (23, 1, 23, 23);
insert into data.order_item (id, quantity,  order_id, monument_id) values (24, 4, 24, 24);
insert into data.order_item (id, quantity,  order_id, monument_id) values (25, 5, 25, 25);
insert into data.order_item (id, quantity,  order_id, monument_id) values (26, 3, 26, 26);
insert into data.order_item (id, quantity,  order_id, monument_id) values (27, 5, 27, 27);
insert into data.order_item (id, quantity,  order_id, monument_id) values (28, 1, 28, 28);
insert into data.order_item (id, quantity,  order_id, monument_id) values (29, 2, 29, 29);
insert into data.order_item (id, quantity,  order_id, monument_id) values (30, 2, 30, 30);

ALTER TABLE data.customer
    ADD CONSTRAINT customer_personal_data
        FOREIGN KEY (personal_data_id)
            REFERENCES data.personal_data (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.extra_article
    ADD CONSTRAINT extra_articles_description
        FOREIGN KEY (description_id)
            REFERENCES data.description (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.monument
    ADD CONSTRAINT monument_category
        FOREIGN KEY (category_id)
            REFERENCES data.category (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.monument
    ADD CONSTRAINT monument_description
        FOREIGN KEY (description_id)
            REFERENCES data.description (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.monument
    ADD CONSTRAINT monument_supplier
        FOREIGN KEY (supplier_id)
            REFERENCES data.supplier (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data."order"
    ADD CONSTRAINT order_address
        FOREIGN KEY (address_id)
            REFERENCES data.address (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data."order"
    ADD CONSTRAINT order_customer
        FOREIGN KEY (customer_id)
            REFERENCES data.customer (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data."order"
    ADD CONSTRAINT order_extra_articles
        FOREIGN KEY (extra_articles_id)
            REFERENCES data.extra_article (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.order_item
    ADD CONSTRAINT order_item_monument
        FOREIGN KEY (monument_id)
            REFERENCES data.monument (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.order_item
    ADD CONSTRAINT order_item_order
        FOREIGN KEY (order_id)
            REFERENCES data."order" (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data."order"
    ADD CONSTRAINT order_payment_method
        FOREIGN KEY (payment_method_id)
            REFERENCES data.payment_method (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data."order"
    ADD CONSTRAINT order_service
        FOREIGN KEY (service_id)
            REFERENCES data.service (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

ALTER TABLE data.supplier
    ADD CONSTRAINT supplier_personal_data
        FOREIGN KEY (personal_data_id)
            REFERENCES data.personal_data (id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;


CREATE VIEW data.customer_personal_data_view AS
SELECT c.id AS customer_id, c.pesel, pd.full_name, pd.email
FROM data.customer c
         INNER JOIN data.personal_data pd ON c.personal_data_id = pd.id;


CREATE VIEW data.order_customer_address_view AS
SELECT o.id AS order_id, o.order_date, c.pesel, a.city, a.street
FROM data."order" o
         JOIN data.customer c ON o.customer_id = c.id
         LEFT JOIN data.address a ON o.address_id = a.id;


CREATE VIEW data.order_order_item_description_view AS
SELECT o.id AS order_id, oi.id AS order_item_id, oi.quantity, d.name, d.price
FROM data."order" o
         INNER JOIN data.order_item oi ON o.id = oi.order_id
         INNER JOIN data.description d ON oi.id = d.id;


CREATE VIEW data.customer_personal_data_view1 AS
SELECT c.id AS customer_id, c.pesel, pd.full_name, pd.email
FROM data.customer c
         RIGHT JOIN data.personal_data pd ON c.personal_data_id = pd.id;


CREATE VIEW data.order_customer_address_view1 AS
SELECT o.id AS order_id, o.order_date, c.pesel, a.city, a.street
FROM data."order" o
         FULL JOIN data.customer c ON o.customer_id = c.id
         FULL JOIN data.address a ON o.address_id = a.id;




CREATE VIEW data.order_customer_address_view2 AS
SELECT c.id, c.category_name, COUNT(m.id)
FROM data.category c
         LEFT JOIN data.monument m ON c.id = m.id
GROUP BY c.id, c.category_name, c.id
HAVING COUNT(m.id) > (SELECT AVG(product_count)
                      FROM (SELECT id, COUNT(id) AS product_count FROM data.monument GROUP BY id, id) AS subquery);



CREATE VIEW data.order_customer_address_view3 AS
SELECT c.id AS customer_id, c.pesel, o.id AS order_id, o.order_date
FROM data.customer c
FULL JOIN data."order" o ON c.id = o.customer_id
ORDER BY c.id
OFFSET 10 LIMIT 5;


CREATE VIEW data.order_customer_address_view4 AS
SELECT full_name, email, phone_number
FROM data.personal_data
         JOIN (SELECT id, personal_data_id
               FROM data.customer
               UNION
               SELECT id, personal_data_id
               FROM data.supplier) AS merged_table ON merged_table.personal_data_id = data.personal_data.id;


CREATE VIEW data.order_customer_address_view5 AS
SELECT full_name, email, phone_number
FROM data.personal_data
         JOIN (SELECT id, personal_data_id
               FROM data.customer
               INTERSECT
               SELECT id, personal_data_id
               FROM data.supplier) AS merged_table ON merged_table.personal_data_id = data.personal_data.id;


CREATE VIEW data.order_customer_address_view6 AS
SELECT full_name, email, phone_number
FROM data.personal_data
         JOIN (SELECT id, personal_data_id
               FROM data.customer
               EXCEPT
               SELECT id, personal_data_id
               FROM data.supplier) AS merged_table ON merged_table.personal_data_id = data.personal_data.id;


CREATE VIEW data.customer_personal_data_view7 AS
SELECT id
FROM data.personal_data where phone_number='772-129-3242';

CREATE ROLE username
    LOGIN
    PASSWORD '';

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA data TO username;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA data TO username;

CREATE OR REPLACE PROCEDURE insert_order(
    p_order_id           INT,
    p_order_date         DATE,
    p_customer_id        INT,
    p_address_id         INT,
    p_service_id         INT,
    p_extra_articles_id  INT,
    p_payment_method_id  INT
)
AS $$
BEGIN
    INSERT INTO data."order" (
        id, order_date, customer_id, address_id, service_id, extra_articles_id, payment_method_id
    )
    VALUES (
        p_order_id, p_order_date, p_customer_id, p_address_id, p_service_id, p_extra_articles_id, p_payment_method_id
    );
END;
$$ LANGUAGE plpgsql;


CALL insert_order(40, '2023-06-15', 1, 1, 1, 1, 1);

CREATE OR REPLACE FUNCTION data.validate_customer_personal_data()
    RETURNS TRIGGER AS
$$
BEGIN
    IF CHAR_LENGTH(NEW.pesel) <> 11 THEN
        RAISE EXCEPTION 'PESEL must be 11 characters long.';
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER validate_customer_personal_data_trigger
    BEFORE INSERT
    ON data.customer
    FOR EACH ROW
EXECUTE FUNCTION data.validate_customer_personal_data();
insert into data.customer(id, pesel, personal_data_id) values ('31', '12345', '31');

--sprawdzilismy insertem, ze trigger dziala i nie mozemy dodac peselu, ktory ma mniej kub wiecej niz 11 cyfr.

CREATE OR REPLACE FUNCTION insert_customer(p_id INT, p_pesel VARCHAR(255), p_personal_data_id INT)
RETURNS VOID AS $$
BEGIN
  INSERT INTO data.customer (id, pesel, personal_data_id)
  VALUES (p_id, p_pesel, p_personal_data_id);
END;
$$ LANGUAGE plpgsql;

SELECT insert_customer(31, '12345678901', 2);