DELIMITER $$
CREATE TRIGGER inputOrderDate
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
