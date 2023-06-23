CREATE TABLE sales (
    id INT AUTO_INCREMENT,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    fiscalYear SMALLINT NOT NULL,
    fiscalMonth TINYINT NOT NULL,
    CHECK(fiscalMonth >= 1 AND fiscalMonth <= 12),
    CHECK(fiscalYear BETWEEN 2000 and 2050),
    CHECK (quantity >=0),
    UNIQUE(product, fiscalYear, fiscalMonth),
    PRIMARY KEY(id)
);

INSERT INTO sales(product, quantity, fiscalYear, fiscalMonth)
VALUES
    ('2003 Harley-Davidson Eagle Drag Bike',120, 2020,1),
    ('1969 Corvair Monza', 150,2020,1),
    ('1970 Plymouth Hemi Cuda', 200,2020,1);

DELIMITER //
create TRIGGER BEFORE_SALE_UPDATE
before update
ON sales FOR EACH ROW
begin
declare ERRORMESSAGE varchar(255);
SET ERRORMESSAGE=CONCAT('THE NEW QUANTITY',
                         NEW.QUANTITY,
                         'CANNOT BE 3 TIMES GRETER THAN THE CURRENT QUANTITY',
                         OLD.QUANTITY);
IF NEW .QUANTITY>(OLD.QUANTITY*3)THEN
   signal sqlstate '45000'
   SET message_text=ERRORMESSAGE;
   END IF;



END //

UPDATE sales 
SET quantity = 150
WHERE id = 1;

UPDATE sales 
SET quantity = 500
WHERE id = 1;