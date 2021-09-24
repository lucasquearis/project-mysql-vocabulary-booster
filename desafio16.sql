DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (emailInput varchar(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total INT;
	SELECT 
    COUNT(*)
FROM
    job_history AS jh
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE CONCAT('%', emailInput, '%') INTO total;
    RETURN total;
END $$

DELIMITER ;
