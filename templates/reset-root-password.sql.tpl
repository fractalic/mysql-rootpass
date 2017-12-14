use mysql;
update user set authentication_string=PASSWORD('{{ mysql_rootpass_new }}') where user='root';
flush privileges;
