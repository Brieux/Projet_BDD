create or replace 
trigger tBien
before insert or update on bien
for each row
begin
if INSERTING THEN
    if (select etat from membres where email = :new.EMAIL_CREAT) == 'INACTIVE' THEN
        raise_application_error(-20002, 'insertion impossible');  
    end if; 
end if;
if UPDATING THEN
    if (select etat from membres where email = :new.EMAIL_USER) == 'INACTIVE' THEN
        raise_application_error(-20003, 'modification impossible');  
    end if; 
end if;
end;

create or replace 
trigger tService
before insert or update on service
for each row
begin
if INSERTING THEN
    if (select etat from membres where email = :new.EMAIL_CREAT) == 'INACTIVE' THEN
        raise_application_error(-20002, 'insertion impossible');  
    end if; 
end if;
if UPDATING THEN
    if (select etat from membres where email = :new.EMAIL_USER) == 'INACTIVE' THEN
        raise_application_error(-20003, 'modification impossible');  
    end if; 
end if;
end;