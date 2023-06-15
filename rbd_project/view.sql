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
