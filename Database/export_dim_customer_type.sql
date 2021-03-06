--------------------------------------------------------
--  File created - Wednesday-April-22-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DIM_CUSTOMER_TYPE
--------------------------------------------------------

  CREATE TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" 
   (	"CUSTOMER_TYPE_KEY" NUMBER, 
	"CUSTOMER_TYPE_CODE" VARCHAR2(1 BYTE), 
	"CUSTOMER_TYPE_NAME" VARCHAR2(50 BYTE), 
	"CREATED_DTTM" TIMESTAMP (6), 
	"UPDATED_DTTM" TIMESTAMP (6)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DW" ;
REM INSERTING into EXAT_DWH.DIM_CUSTOMER_TYPE
SET DEFINE OFF;
Insert into EXAT_DWH.DIM_CUSTOMER_TYPE (CUSTOMER_TYPE_KEY,CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME,CREATED_DTTM,UPDATED_DTTM) values (0,'0','ไม่พบข้อมูล',to_timestamp('20-NOV-14 01.20.36.377000000 PM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('20-NOV-14 01.20.40.109000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into EXAT_DWH.DIM_CUSTOMER_TYPE (CUSTOMER_TYPE_KEY,CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME,CREATED_DTTM,UPDATED_DTTM) values (1,'D','Dummy',to_timestamp('17-OCT-14 01.53.09.837000000 PM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-NOV-14 06.53.31.538000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into EXAT_DWH.DIM_CUSTOMER_TYPE (CUSTOMER_TYPE_KEY,CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME,CREATED_DTTM,UPDATED_DTTM) values (2,'F','Fleet',to_timestamp('17-OCT-14 01.53.09.838000000 PM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-NOV-14 06.53.31.538000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into EXAT_DWH.DIM_CUSTOMER_TYPE (CUSTOMER_TYPE_KEY,CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME,CREATED_DTTM,UPDATED_DTTM) values (3,'C','นิติบุคคล',to_timestamp('17-OCT-14 01.53.09.838000000 PM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-NOV-14 06.53.31.538000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
Insert into EXAT_DWH.DIM_CUSTOMER_TYPE (CUSTOMER_TYPE_KEY,CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME,CREATED_DTTM,UPDATED_DTTM) values (4,'P','บุคคลธธรรมดา',to_timestamp('17-OCT-14 01.53.09.838000000 PM','DD-MON-RR HH.MI.SS.FF AM'),to_timestamp('10-NOV-14 06.53.31.538000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
--------------------------------------------------------
--  DDL for Index SYS_C0010385
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXAT_DWH"."SYS_C0010385" ON "EXAT_DWH"."DIM_CUSTOMER_TYPE" ("CUSTOMER_TYPE_KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DW" ;
--------------------------------------------------------
--  Constraints for Table DIM_CUSTOMER_TYPE
--------------------------------------------------------

  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" ADD PRIMARY KEY ("CUSTOMER_TYPE_KEY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_DW"  ENABLE;
  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" MODIFY ("UPDATED_DTTM" NOT NULL ENABLE);
  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" MODIFY ("CREATED_DTTM" NOT NULL ENABLE);
  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" MODIFY ("CUSTOMER_TYPE_NAME" NOT NULL ENABLE);
  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" MODIFY ("CUSTOMER_TYPE_CODE" NOT NULL ENABLE);
  ALTER TABLE "EXAT_DWH"."DIM_CUSTOMER_TYPE" MODIFY ("CUSTOMER_TYPE_KEY" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger CUSTOMER_TYPE_KEY_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "EXAT_DWH"."CUSTOMER_TYPE_KEY_TRIGGER" BEFORE INSERT ON DIM_CUSTOMER_TYPE
for each row
BEGIN
  select CUSTOMER_TYPE_KEY_SEQ.nextval into :new.CUSTOMER_TYPE_KEY from dual;
END;
/
ALTER TRIGGER "EXAT_DWH"."CUSTOMER_TYPE_KEY_TRIGGER" ENABLE;
