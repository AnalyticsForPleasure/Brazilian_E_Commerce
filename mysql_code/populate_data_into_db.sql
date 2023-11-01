# In case you're using mysql workbench add this variable to the connection:
# This restriction can be removed from MySQL Workbench 8.0 in the following way. 
# Edit the connection, on the Connection tab,
# go to the 'Advanced' sub-tab, 
# and in the 'Others:' box add the line 'OPT_LOCAL_INFILE=1'.


show variables like "secure_file_priv";
show variables like "local_infile";

show tables;

# 'Timestamp', 'EventType', 'CallConnectionId'

create table product_category_name_translation
(
	product_category_name VARCHAR(120) NOT NULL,
	product_category_name_english VARCHAR(120) NOT NULL
);


-- drop table playground_table;

LOAD DATA LOCAL INFILE '/home/shay_diy/PycharmProjects/Brazilian_E_Commerce/data/product_category_name_translation.csv'
INTO TABLE product_category_name_translation
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(product_category_name,product_category_name_english);
# SET id = NULL;

select * from product_category_name_translation;