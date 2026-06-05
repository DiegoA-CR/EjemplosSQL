-- NOT negacion cuando "no sea"
-- AND agrega condicion " Y esto tambien se cumpla"
-- OR agega condicion " O  esto tambien se cumpla"
SELECT * FROM  users WHERE NOT email ="armando@gmail.com";

SELECT * FROM  users WHERE NOT email ="armando@gmail.com" AND edad = '20';

SELECT * FROM  users WHERE NOT email ="armando@gmail.com" OR edad = '20';
