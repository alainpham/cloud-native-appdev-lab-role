CREATE TABLE `customer` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `product` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(10) NOT NULL,
    `price` float NOT NULL,
    `tag` varchar(500) NOT NULL,
    `pic_ref` varchar(500) NOT NULL,
    PRIMARY KEY (`id`)
);
CREATE TABLE `cart` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `customer_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `customer_id` (`customer_id`),
    CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
);
CREATE TABLE `cart_item` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `product_id` int(11) DEFAULT NULL,
    `cart_id` int(11) DEFAULT NULL,
    `quantity` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `product_id` (`product_id`),
    KEY `cart_id` (`cart_id`),
    CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
    CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
);

delete from cart_item;
delete from cart;
delete from customer;
delete from product;

INSERT INTO product (name, price, tag, pic_ref) VALUES ("Meows", 29.99,"","/static/img/cats/Meows.jpeg"); 
INSERT INTO product (name, price, tag, pic_ref) VALUES ("Loki", 39.99,"","/static/img/cats/Loki.jpeg");
INSERT INTO product (name, price, tag, pic_ref) VALUES ("Charlie", 19.50,"","/static//img/cats/Charlie.jpeg");
INSERT INTO product (name, price, tag, pic_ref) VALUES ("Carla", 25.00,"","/static/img/cats/Carla.jpeg");
