ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000);
ALTER TABLE author ADD COLUMN address VARCHAR(255);

SHOW CREATE TABLE post;
DROP TABLE post;