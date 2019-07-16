CREATE DEFINER=`root`@`localhost` PROCEDURE `myproce`()
BEGIN
	start transaction;
    BEGIN
    INSERT INTO student VALUES (8, 'daoo');
    savepoint savepoint1;
    INSERT INTO student VALUES (9, 'abc');
    savepoint savepoint2;
    DELETE FROM student WHERE ID = 3;
    rollback to savepoint savepoint2;
    DELETE FROM student WHERE ID = 6;
    END;
    commit;
    
END