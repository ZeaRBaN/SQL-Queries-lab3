CREATE DATABASE librarymanagementSystem;

CREATE TABLE librarymanagementsystem.CATEGORY
( 
    category_id INT(255) NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);




CREATE TABLE librarymanagementsystem.PUBLISHER 
( pub_id VARCHAR(50) NOT NULL , 
  name VARCHAR(50) NOT NULL ,
  address text(255) NOT NULL ,
  PRIMARY KEY (pub_id)
);



CREATE TABLE librarymanagementsystem.MEMBER
(
      member_id VARCHAR(50) NOT NULL ,
      name VARCHAR(50) NOT NULL,
      address text(255) NOT NULL,
      join_date DATETIME NOT NULL,
      PRIMARY KEY(member_id)
);




CREATE TABLE librarymanagementsystem.BOOK
( 
 book_id INT NOT NULL AUTO_INCREMENT ,
 title VARCHAR(50) NOT NULL ,
 price FLOAT(50) NOT NULL , 
 pub_id VARCHAR(50) NOT NULL ,
 category_id INT NOT NULL ,
 PRIMARY KEY (book_id),
 FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id) ON DELETE RESTRICT ON UPDATE CASCADE,
 FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id) ON DELETE RESTRICT ON UPDATE CASCADE
); 





CREATE TABLE librarymanagementsystem.BORROWING_BOOK
(
      member_id VARCHAR(50) NOT NULL,
      book_id INT NOT NULL,
      borrow_date DATETIME NOT NULL,
      due_date DATETIME NOT NULL,
      return_date DATETIME NOT NULL,
      PRIMARY KEY(member_id,book_id,borrow_date),
      FOREIGN KEY (member_id) REFERENCES MEMBER(member_id) ON DELETE RESTRICT ON UPDATE CASCADE,
      FOREIGN KEY (book_id) REFERENCES BOOK(book_id) ON DELETE RESTRICT ON UPDATE CASCADE
);