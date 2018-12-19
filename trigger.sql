set serveroutput on
--creation d'un table log pour retenir les modifcation
create table log (email varchar(60), date_insertion date, 
usager varchar(20),typeOperation varchar(12));

create or replace trigger tLog
after insert or update or delete on membres
for each row
begin--on veut retenir l'email du membre modifié dans la table log
if inserting--a l'insertion
then
insert into log values(:new.email,sysdate,user,'insertion');
elsif updating--a la modification
then
insert into log values(:new.email,sysdate,user,'modification');
elsif deleting--a la supression
then
insert into log values(:old.email,sysdate,user,'supression');
end if;
end;
/

create or replace trigger tBien
before delete on bien
for each row
begin
if :old.etat = 'PRIS' then --si l'objet est emprunté, on ne peut pas le supprimer
    raise_application_error(-20003,'Supression impossible');
end if;
end;
/