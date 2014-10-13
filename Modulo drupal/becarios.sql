drop database if exists becarios;
drop role if exists becarios;

CREATE USER  becarios with encrypted password '@.@becarios@.@';
CREATE DATABASE becarios WITH OWNER becarios;

\c becarios becarios

CREATE TABLE becarios_usuario (
    idusuario SERIAL NOT NULL,
    usuario TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL,
    nombre TEXT NOT NULL,
    ap_paterno TEXT NOT NULL,
    ap_materno TEXT,
    direccion TEXT,
    PRIMARY KEY (idusuario)
);


insert into becarios_usuario ( usuario,password,email,nombre,ap_paterno,ap_materno,direccion ) values('user 1','5c5fe2b5917fb6ff56100be90c4e288b','fake@fake.mx','fake n','fake ap ','fake am ','street 1');
insert into becarios_usuario ( usuario,password,email,nombre,ap_paterno,ap_materno,direccion ) values('user 2','5c5fe2b5917fb6ff56100be90c4e288b','fake@fake.mx','fake n','fake ap ','fake am ','street 2');
insert into becarios_usuario ( usuario,password,email,nombre,ap_paterno,ap_materno,direccion ) values('user 3','5c5fe2b5917fb6ff56100be90c4e288b','fake@fake.mx','fake n','fake ap ','fake am ','street 3');
insert into becarios_usuario ( usuario,password,email,nombre,ap_paterno,ap_materno,direccion ) values('user 4','5c5fe2b5917fb6ff56100be90c4e288b','fake@fake.mx','fake n','fake ap ','fake am ','street 4');
insert into becarios_usuario ( usuario,password,email,nombre,ap_paterno,ap_materno,direccion ) values('user 5','5c5fe2b5917fb6ff56100be90c4e288b','fake@fake.mx','fake n','fake ap ','fake am ','street 5');
select * from becarios_usuario;
