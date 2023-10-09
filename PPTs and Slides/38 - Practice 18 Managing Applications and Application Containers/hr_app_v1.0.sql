-- **********************************************************
-- *			SEQUENCES			    *
-- **********************************************************

--
-- DEPARTMENTS_SEQ  (Sequence) 
--
CREATE SEQUENCE HR.DEPARTMENTS_SEQ sharing=metadata
  START WITH 280
  INCREMENT BY 10
  MAXVALUE 9990
  MINVALUE 1;


--
-- EMPLOYEES_SEQ  (Sequence) 
--
CREATE SEQUENCE HR.EMPLOYEES_SEQ  sharing=metadata
  START WITH 207
  MAXVALUE 999999999999999999
  MINVALUE 1;


--
-- LOCATIONS_SEQ  (Sequence) 
--
CREATE SEQUENCE HR.LOCATIONS_SEQ sharing=metadata
  START WITH 3300
  INCREMENT BY 100
  MAXVALUE 9900
  MINVALUE 1;




-- **********************************************************
-- *			TABLES				    *
-- **********************************************************

--
-- JOBS  (Table) 
--
CREATE TABLE HR.JOBS SHARING=EXTENDED DATA
(
  JOB_ID      VARCHAR2(10 BYTE),
  JOB_TITLE   VARCHAR2(35 BYTE) ,
  MIN_SALARY  NUMBER(6),
  MAX_SALARY  NUMBER(6)
)
;


--
-- REGIONS  (Table) 
--
CREATE TABLE HR.REGIONS SHARING=DATA
(
  REGION_ID    NUMBER ,
  REGION_NAME  VARCHAR2(25 BYTE)
);



--
-- COUNTRIES  (Table) 
--
CREATE TABLE HR.COUNTRIES SHARING=DATA
(
  COUNTRY_ID    CHAR(2 BYTE) ,
  COUNTRY_NAME  VARCHAR2(40 BYTE),
  REGION_ID     NUMBER, 
  CONSTRAINT COUNTRY_C_ID_PK PRIMARY KEY (COUNTRY_ID) ENABLE VALIDATE
);


--
-- LOCATIONS  (Table) 
--
CREATE TABLE HR.LOCATIONS sharing=extended data
(
  LOCATION_ID     NUMBER(4),
  STREET_ADDRESS  VARCHAR2(40 BYTE),
  POSTAL_CODE     VARCHAR2(12 BYTE),
  CITY            VARCHAR2(30 BYTE) ,
  STATE_PROVINCE  VARCHAR2(25 BYTE),
  COUNTRY_ID      CHAR(2 BYTE)
);




--
-- DEPARTMENTS  (Table) 
--
CREATE TABLE HR.DEPARTMENTS SHARING=METADATA
(
  DEPARTMENT_ID    NUMBER(4),
  DEPARTMENT_NAME  VARCHAR2(30 BYTE) ,
  MANAGER_ID       NUMBER(6),
  LOCATION_ID      NUMBER(4)
);


--
-- EMPLOYEES  (Table) 
--
CREATE TABLE HR.EMPLOYEES SHARING=METADATA
(
  EMPLOYEE_ID     NUMBER(6),
  FIRST_NAME      VARCHAR2(20 BYTE),
  LAST_NAME       VARCHAR2(25 BYTE) ,
  EMAIL           VARCHAR2(25 BYTE) ,
  PHONE_NUMBER    VARCHAR2(20 BYTE),
  HIRE_DATE       DATE ,
  JOB_ID          VARCHAR2(10 BYTE) ,
  SALARY          NUMBER(8,2),
  COMMISSION_PCT  NUMBER(2,2),
  MANAGER_ID      NUMBER(6),
  DEPARTMENT_ID   NUMBER(4)
);



-- **********************************************************
-- *			SHARED DATA			    *
-- **********************************************************
SET DEFINE OFF;

Insert into HR.REGIONS
   (REGION_ID, REGION_NAME)
 Values
   (1, 'Europe');
Insert into HR.REGIONS
   (REGION_ID, REGION_NAME)
 Values
   (2, 'Americas');
Insert into HR.REGIONS
   (REGION_ID, REGION_NAME)
 Values
   (3, 'Asia');
Insert into HR.REGIONS
   (REGION_ID, REGION_NAME)
 Values
   (4, 'Middle East and Africa');
COMMIT;


Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('AD_PRES', 'President', 20080, 40000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('AD_VP', 'Administration Vice President', 15000, 30000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('AD_ASST', 'Administration Assistant', 3000, 6000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('FI_MGR', 'Finance Manager', 8200, 16000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('FI_ACCOUNT', 'Accountant', 4200, 9000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('AC_MGR', 'Accounting Manager', 8200, 16000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('SA_MAN', 'Sales Manager', 10000, 20080);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('SA_REP', 'Sales Representative', 6000, 12008);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('PU_MAN', 'Purchasing Manager', 8000, 15000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('ST_MAN', 'Stock Manager', 5500, 8500);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('ST_CLERK', 'Stock Clerk', 2008, 5000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('SH_CLERK', 'Shipping Clerk', 2500, 5500);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('IT_PROG', 'Programmer', 4000, 10000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('MK_MAN', 'Marketing Manager', 9000, 15000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('MK_REP', 'Marketing Representative', 4000, 9000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('HR_REP', 'Human Resources Representative', 4000, 9000);
Insert into HR.JOBS
   (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
 Values
   ('PR_REP', 'Public Relations Representative', 4500, 10500);
COMMIT;



Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('AR', 'Argentina', 2);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('AU', 'Australia', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('BE', 'Belgium', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('BR', 'Brazil', 2);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('CA', 'Canada', 2);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('CH', 'Switzerland', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('CN', 'China', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('DE', 'Germany', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('DK', 'Denmark', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('EG', 'Egypt', 4);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('FR', 'France', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('IL', 'Israel', 4);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('IN', 'India', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('IT', 'Italy', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('JP', 'Japan', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('KW', 'Kuwait', 4);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('ML', 'Malaysia', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('MX', 'Mexico', 2);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('NG', 'Nigeria', 4);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('NL', 'Netherlands', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('SG', 'Singapore', 3);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('UK', 'United Kingdom', 1);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('US', 'United States of America', 2);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('ZM', 'Zambia', 4);
Insert into HR.COUNTRIES
   (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
 Values
   ('ZW', 'Zimbabwe', 4);
COMMIT;


Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, COUNTRY_ID)
 Values
   (1000, '1297 Via Cola di Rie', '00989', 'Roma', 'IT');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, COUNTRY_ID)
 Values
   (1100, '93091 Calle della Testa', '10934', 'Venice', 'IT');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 
    'JP');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, COUNTRY_ID)
 Values
   (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', 'JP');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 
    'US');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 
    'US');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 
    'US');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 
    'US');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 
    'CA');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 
    'CA');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, COUNTRY_ID)
 Values
   (2000, '40-5-12 Laogianggen', '190518', 'Beijing', 'CN');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 
    'IN');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 
    'AU');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, COUNTRY_ID)
 Values
   (2300, '198 Clementi North', '540198', 'Singapore', 'SG');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, CITY, COUNTRY_ID)
 Values
   (2400, '8204 Arthur St', 'London', 'UK');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 
    'UK');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 
    'UK');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 
    'DE');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 
    'BR');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 
    'CH');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 
    'CH');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 
    'NL');
Insert into HR.LOCATIONS
   (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
    COUNTRY_ID)
 Values
   (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 
    'MX');
COMMIT;
