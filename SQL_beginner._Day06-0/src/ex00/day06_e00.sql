CREATE TABLE person_discounts
(
  Id BIGINT PRIMARY KEY,
  	person_id BIGINT,
  	pizzeria_id BIGINT,
    CONSTRAINT fk_person_discounts_person_id
      FOREIGN KEY (person_id)
          REFERENCES person (Id),
 	CONSTRAINT fk_person_discounts_pizzeria_id
      FOREIGN KEY (pizzeria_id)
          REFERENCES pizzeria (Id),
	discount REAL
);

