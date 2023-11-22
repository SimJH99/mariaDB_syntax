--  복합컬럼: index: author의 name, email, index
-- select * from author where name = 'abc' and email = 'xx'
create index email_name_index on author(email, name);