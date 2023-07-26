CREATE TABLE member(
    member_id INT PRIMARY KEY auto_increment,
        member_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role CHAR(10) NOT NULL
    /*role (normal, admin)*/
);

CREATE TABLE board(
    board_id INT PRIMARY KEY AUTO_INCREMENT;
    board_name VARCHAR(50) NOT NULL,
);

CREATE TABLE post(
    post_id INT PRIMARY KEY auto_increment;
    member_id INT NOT NULL,
    board_id INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    content TEXT,
    creation_date TIMESTAMP CURRENT_TIMESTAMP,

    FOREIGN KEY(member_id) REFERENCES member(member_id),
    FOREIGN KEY(board_id) REFERENCES board(board_id)
);