create table SKOLNIEKI(
    ID number(4), 
	VARDS varchar2(25), 
	UZVARDS varchar2(25), 
	ATZIME_1 number(2), 
	ATZIME_2 number(2), 
	ATZIME_3 number(2), 
    CONSTRAINT SKOL_PK PRIMARY KEY (ID));
    
    CREATE SEQUENCE  SKOL_SEQ;

create or replace TRIGGER skol_trig 
BEFORE INSERT ON skolnieki 
FOR EACH ROW
WHEN (new.id IS NULL)
BEGIN
  :new.id := skol_seq.NEXTVAL;
END;

