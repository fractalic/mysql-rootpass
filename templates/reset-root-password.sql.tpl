use mysql;
update user set authentication_string=PASSWORD('{{ new_root_password }}') where user='root';
flush privileges;
