/* -------------------------------- */
/*           SEQUENCES              */
/* -------------------------------- */

CREATE SEQUENCE SEQ_OFFICE
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE;
  
CREATE SEQUENCE SEQ_DEPARTMENT
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE SEQ_DEPGROUP
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE;
 
CREATE SEQUENCE SEQ_EMPLOYEE
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE;

 CREATE SEQUENCE SEQ_POSITION
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE; 
  
CREATE SEQUENCE SEQ_SUBORDINATE
  START WITH     100
  INCREMENT BY   1
  NOCACHE
  NOCYCLE;   
 
/* -------------------------------- */
/*           TABLES                 */
/* -------------------------------- */
 
CREATE TABLE OFFICE
(
  ID        NUMBER         NOT NULL,
  NAME      VARCHAR2(255),
  ADRESS    VARCHAR2(255),
  USER_NAME VARCHAR2(30)   NOT NULL,
  USER_DATE DATE           NOT NULL
);

CREATE TABLE DEPARTMENT
(
  ID          NUMBER         NOT NULL,
  NAME        VARCHAR2(255),
  USER_NAME   VARCHAR2(30)   NOT NULL,
  USER_DATE   DATE           NOT NULL
);

CREATE TABLE DEPGROUP
(
  ID            NUMBER         NOT NULL,
  ID_DEP        NUMBER         NOT NULL,
  NAME          VARCHAR2(255),
  USER_NAME     VARCHAR2(30)   NOT NULL,
  USER_DATE     DATE           NOT NULL
);

CREATE TABLE TITLE
(
  ID        NUMBER         NOT NULL,
  NAME      VARCHAR2(255),
  CAPTION   VARCHAR2(255),
  USER_NAME VARCHAR2(30)   NOT NULL,
  USER_DATE DATE           NOT NULL
);

CREATE TABLE EMPLOYEE
(
  ID          NUMBER         NOT NULL,
  FIRST_NAME  VARCHAR2(255),
  MIDDLE_NAME VARCHAR2(255),
  SECOND_NAME VARCHAR2(255),
  ADRESS      VARCHAR2(255),
  PHONE       VARCHAR2(255),
  USER_NAME   VARCHAR2(30)   NOT NULL,
  USER_DATE   DATE           NOT NULL
);

CREATE TABLE POSITION
(
  ID            NUMBER         NOT NULL,
  ID_OFFICE     NUMBER         NOT NULL,
  ID_CHIEF      NUMBER,
  ID_TITLE      NUMBER         NOT NULL,
  ID_EMPLOYEE   NUMBER         NOT NULL,
  PHONE         VARCHAR2(255),
  PAYMENT_TYPE  VARCHAR(255),
  PAYMENT_VALUE NUMBER,
  USER_NAME     VARCHAR2(30)   NOT NULL,
  USER_DATE     DATE           NOT NULL
);

CREATE TABLE SUBORDINATE
(
  ID            NUMBER         NOT NULL,
  ID_DEPARTMENT NUMBER,
  ID_DEPGROUP   NUMBER,
  ID_POSITION   NUMBER         NOT NULL,
  IS_DIRECT     NUMBER(1)      NOT NULL, 
  USER_NAME     VARCHAR2(30)   NOT NULL,
  USER_DATE     DATE           NOT NULL
);

/* -------------------------------- */
/*           PRIMARY KEYS           */
/* -------------------------------- */

ALTER TABLE OFFICE      ADD CONSTRAINT OFFICE$ID      PRIMARY KEY (ID);
ALTER TABLE DEPARTMENT  ADD CONSTRAINT DEPARTMENT$ID  PRIMARY KEY (ID);
ALTER TABLE DEPGROUP    ADD CONSTRAINT DEPGROUP$ID    PRIMARY KEY (ID);
ALTER TABLE TITLE       ADD CONSTRAINT TITLE$ID       PRIMARY KEY (ID);
ALTER TABLE EMPLOYEE    ADD CONSTRAINT EMPLOYEE$ID    PRIMARY KEY (ID);
ALTER TABLE POSITION    ADD CONSTRAINT POSITION$ID    PRIMARY KEY (ID);
ALTER TABLE SUBORDINATE ADD CONSTRAINT SUBORDINATE$ID PRIMARY KEY (ID);


/* -------------------------------- */
/*           FOREIGN                */
/* -------------------------------- */

ALTER TABLE DEPGROUP    ADD CONSTRAINT DEPGROUP$DEPARTMENT    FOREIGN KEY (ID_DEP)        REFERENCES DEPARTMENT (ID);

ALTER TABLE POSITION    ADD CONSTRAINT POSITION$POSITION      FOREIGN KEY (ID_CHIEF)      REFERENCES POSITION   (ID);
ALTER TABLE POSITION    ADD CONSTRAINT POSITION$OFFICE        FOREIGN KEY (ID_OFFICE)     REFERENCES OFFICE     (ID);
ALTER TABLE POSITION    ADD CONSTRAINT POSITION$TITLE         FOREIGN KEY (ID_TITLE)      REFERENCES TITLE      (ID);
ALTER TABLE POSITION    ADD CONSTRAINT POSITION$EMPLOYEE       FOREIGN KEY (ID_EMPLOYEE)    REFERENCES EMPLOYEE    (ID);

ALTER TABLE SUBORDINATE ADD CONSTRAINT SUBORDINATE$DEPARTMENT FOREIGN KEY (ID_DEPARTMENT) REFERENCES DEPARTMENT (ID);
ALTER TABLE SUBORDINATE ADD CONSTRAINT SUBORDINATE$DEPGROUP   FOREIGN KEY (ID_DEPGROUP)   REFERENCES DEPGROUP (ID);
ALTER TABLE SUBORDINATE ADD CONSTRAINT SUBORDINATE$POSITION   FOREIGN KEY (ID_POSITION)   REFERENCES POSITION   (ID);

/* -------------------------------- */
/*           TRIGGERS               */
/* -------------------------------- */

CREATE OR REPLACE TRIGGER OFFICE$BI
  BEFORE INSERT ON OFFICE
  FOR EACH ROW
BEGIN
  :NEW.ID := COALESCE(:NEW.ID, SEQ_OFFICE.NEXTVAL);  
  :NEW.USER_NAME := USER;
  :NEW.USER_DATE := SYSDATE;
END; 
/
CREATE OR REPLACE TRIGGER DEPARTMENT$BI
  BEFORE INSERT ON DEPARTMENT
  FOR EACH ROW
BEGIN
  :NEW.ID := COALESCE(:NEW.ID, SEQ_DEPARTMENT.NEXTVAL);  
  :NEW.USER_NAME := USER;
  :NEW.USER_DATE := SYSDATE;
END; 
/
CREATE OR REPLACE TRIGGER DEPGROUP$BI
  BEFORE INSERT ON DEPGROUP
  FOR EACH ROW
BEGIN
  :NEW.ID := COALESCE(:NEW.ID, SEQ_DEPGROUP.NEXTVAL);  
  :NEW.USER_NAME := USER;
  :NEW.USER_DATE := SYSDATE;
END; 
/
CREATE OR REPLACE TRIGGER EMPLOYEE$BI
  BEFORE INSERT ON EMPLOYEE
  FOR EACH ROW
BEGIN
  :NEW.ID := COALESCE(:NEW.ID, SEQ_EMPLOYEE.NEXTVAL);  
  :NEW.USER_NAME := USER;
  :NEW.USER_DATE := SYSDATE;
END; 
/
CREATE OR REPLACE TRIGGER POSITION$BIU
  BEFORE INSERT ON POSITION
  FOR EACH ROW
BEGIN
    :NEW.ID := COALESCE(:NEW.ID, SEQ_POSITION.NEXTVAL);  
    :NEW.USER_NAME := USER;
    :NEW.USER_DATE := SYSDATE;
END; 
/
CREATE OR REPLACE TRIGGER SUBORDINATE$BI
  BEFORE INSERT ON SUBORDINATE
  FOR EACH ROW
BEGIN
  :NEW.ID := COALESCE(:NEW.ID, SEQ_SUBORDINATE.NEXTVAL);  
  :NEW.USER_NAME := USER;
  :NEW.USER_DATE := SYSDATE;
END; 
/
EXIT SQL.SQLCODE
