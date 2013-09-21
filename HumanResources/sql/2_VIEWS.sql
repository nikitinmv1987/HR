--- my --
CREATE OR REPLACE VIEW V_POSITION as
SELECT P.* 
  FROM POSITION P
  INNER JOIN
(SELECT 
  MAX(P.ID) ID
  FROM POSITION P
  GROUP BY P.ID_EMPLOYEE) P2 ON P2.ID = P.ID;
 
--- 1 ---
CREATE OR REPLACE VIEW V_QUERY_1 as
SELECT 
  D.NAME,
  E.FIRST_NAME,
  E.MIDDLE_NAME,
  E.SECOND_NAME
 FROM DEPARTMENT D
   LEFT JOIN SUBORDINATE S ON D.ID = S.ID_DEPARTMENT AND S.IS_DIRECT = 1
   LEFT JOIN POSITION P    ON S.ID_POSITION = P.ID
   LEFT JOIN EMPLOYEE E    ON P.ID_EMPLOYEE = E.ID;

--- 2 ---
CREATE OR REPLACE VIEW V_QUERY_2 as
SELECT 
  MAX(D.NAME) NAME,
  COUNT(G.ID) GROUPS
FROM DEPARTMENT D
  LEFT JOIN DEPGROUP G ON G.ID_DEP = D.ID
GROUP BY G.ID_DEP;

--- 3 ---
CREATE OR REPLACE VIEW V_QUERY_3 as
SELECT * FROM(
  SELECT
    MAX(D.NAME) NAME,
    COUNT(G.ID) GROUPS
  FROM DEPARTMENT D
  LEFT JOIN DEPGROUP G ON G.ID_DEP = D.ID
  GROUP BY G.ID_DEP
  ORDER BY GROUPS DESC)
 WHERE ROWNUM = 1;
 
 --- 4 ---
CREATE OR REPLACE VIEW V_QUERY_4 as
SELECT 
  MAX(D.NAME) NAME,
  COUNT(P1.ID_EMPLOYEE) COUNT
FROM
 (SELECT 
    P.ID_EMPLOYEE,
    COALESCE(MAX(S.ID_DEPARTMENT), MAX(G.ID_DEP)) ID_DEPARTMENT
  FROM POSITION P 
    INNER JOIN SUBORDINATE S ON S.ID_POSITION = P.ID
    INNER JOIN DEPGROUP G ON S.ID_DEPGROUP = G.ID
  GROUP BY P.ID_EMPLOYEE
  HAVING MIN(P.USER_DATE) < (add_months(SYSDATE, -24))) P1
  INNER JOIN DEPARTMENT D ON P1.ID_DEPARTMENT = D.ID
GROUP BY P1.ID_DEPARTMENT;

 --- 5 ---
CREATE OR REPLACE VIEW V_QUERY_5 as
SELECT 
  E.FIRST_NAME,
  E.MIDDLE_NAME,
  E.SECOND_NAME,
  P.PAYMENT_VALUE
FROM EMPLOYEE E
  INNER JOIN POSITION P ON P.ID_EMPLOYEE = E.ID
--WHERE E.ID = 15
ORDER BY E.ID, P.ID;

--- 6 ---
CREATE OR REPLACE VIEW V_QUERY_6 as
SELECT 
  E.FIRST_NAME,
  E.MIDDLE_NAME,
  E.SECOND_NAME,
  T.CAPTION
FROM EMPLOYEE E
  INNER JOIN POSITION P ON P.ID_EMPLOYEE = E.ID
  INNER JOIN TITLE T ON P.ID_TITLE = T.ID
--WHERE E.ID = 15
ORDER BY E.ID, P.ID;

--- 7 ---
CREATE OR REPLACE VIEW V_QUERY_7 as
SELECT 
  E.FIRST_NAME,
  E.MIDDLE_NAME,
  E.SECOND_NAME,
  (SELECT COUNT(ID) COUNT FROM V_POSITION WHERE ID_CHIEF = P.ID) COUNT
FROM EMPLOYEE E
  INNER JOIN V_POSITION P ON P.ID_EMPLOYEE = E.ID;
--- 8 ---
CREATE OR REPLACE VIEW V_QUERY_8 as
SELECT * FROM
(SELECT 
  E.FIRST_NAME,
  E.MIDDLE_NAME,
  E.SECOND_NAME,
  (SELECT COUNT(ID) COUNT FROM V_POSITION WHERE ID_CHIEF = P.ID) COUNT
FROM EMPLOYEE E
  INNER JOIN V_POSITION P ON P.ID_EMPLOYEE = E.ID)
WHERE COUNT > 8;
EXIT SQL.SQLCODE