CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudent`()
BEGIN
   SELECT *  FROM student;
   END