USE user_english;

CREATE TABLE user_english
(
	id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(300),
    email VARCHAR(400),
    login VARCHAR(300),
    haslo VARCHAR(300)
);

SELECT *FROM user_english;

DELETE FROM user_english WHERE id= 4;