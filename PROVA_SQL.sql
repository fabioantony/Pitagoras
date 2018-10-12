-- 3.1) criando usuários
drop user if exists 'fabio'@'localhost';
drop user if exists 'julio'@'localhost';
drop user if exists 'diego'@'localhost';
create user if not exists 'fabio'@'localhost' identified by 'senha';
create user if not exists 'julio'@'localhost' identified by 'senha';
create user if not exists 'diego'@'localhost' identified by 'senha';

-- 3.3) Concedendo acesso em todos os privilegios para todo o database employees
grant all on employees.* to 'fabio'@'localhost';
grant all on employees.* to 'julio'@'localhost';
grant all on employees.* to 'diego'@'localhost';

-- 3.3) removendo acesso do diego
show grants for 'diego'@'localhost';
revoke SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, CREATE VIEW, CREATE ROUTINE, CREATE TEMPORARY TABLES, LOCK TABLES, ALTER ROUTINE, EXECUTE, EVENT, TRIGGER on employees.salaries from 'diego'@'localhost';
show grants for 'diego'@'localhost';

