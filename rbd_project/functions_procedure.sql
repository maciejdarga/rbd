
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
