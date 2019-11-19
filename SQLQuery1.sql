   DROP TABLE IF EXISTS Goods;
   DROP TABLE IF EXISTS Categoods;
   DROP TABLE IF EXISTS Categorys;
CREATE TABLE goods (
    goods_id int IDENTITY (1,1) NOT NULL CONSTRAINT PK_goods_id PRIMARY KEY ,
    goods_name varchar(255) NOT NULL,
); 

CREATE TABLE categorys (
    categorys_id int IDENTITY (1,1) NOT NULL CONSTRAINT PK_categorys_id PRIMARY KEY ,
    categorys_name varchar(255) NOT NULL,
); 

CREATE TABLE categoods(
    categoods_id int IDENTITY (1,1) NOT NULL CONSTRAINT PK_categoods_id PRIMARY KEY ,
    categorys_id integer NOT NULL,
    goods_id integer NOT NULL,
); 

INSERT INTO goods( goods_name) VALUES 
('окно'),
('дверь'),
('стол'),
('подоконник'),
('цветок')
;

INSERT INTO categorys(categorys_name) VALUES 
('дерево'),
('металл'),
('пластик'),
('стекло')
;


INSERT INTO categoods(categorys_id, goods_id) VALUES 
(1,4),
(2,2),
(2,3),
(3,1),
(3,2),
(3,4),
(4,1),
(4,2),
(4,3)
;
  ALTER TABLE CateGoods ADD CONSTRAINT FK_Categoods_goods FOREIGN KEY (goods_id) 
        REFERENCES goods (goods_id)
		ALTER TABLE Categoods ADD CONSTRAINT FK_Categoods_categorys FOREIGN KEY (categorys_id) 
        REFERENCES categorys (categorys_id)