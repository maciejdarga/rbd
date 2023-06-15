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
