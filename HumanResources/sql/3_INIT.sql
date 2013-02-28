/* -------------------------------- */
/*           SYSTEM INIT            */
/* -------------------------------- */

INSERT INTO TITLE (ID, NAME, CAPTION, USER_NAME, USER_DATE) VALUES (1, 'staff',    'штатный сотрудник', USER, SYSDATE);
INSERT INTO TITLE (ID, NAME, CAPTION, USER_NAME, USER_DATE) VALUES (2, 'manager',  'менеджер',          USER, SYSDATE);
INSERT INTO TITLE (ID, NAME, CAPTION, USER_NAME, USER_DATE) VALUES (3, 'director', 'директор',          USER, SYSDATE);
INSERT INTO TITLE (ID, NAME, CAPTION, USER_NAME, USER_DATE) VALUES (4, 'president','президент',         USER, SYSDATE);

/* -------------------------------- */
/*           TEST INIT              */
/* -------------------------------- */

INSERT INTO OFFICE (ID, NAME, ADRESS) VALUES (1, 'Главный офис',   'ул. Васильковская, 16, Киев, 01330');
INSERT INTO OFFICE (ID, NAME, ADRESS) VALUES (2, 'Дарницкий офис', 'ул. Здолбуновская, 9, Киев, 02030');
INSERT INTO OFFICE (ID, NAME, ADRESS) VALUES (3, 'Склад',          'ул. Петропаловская, 23, Киев, 03240');

INSERT INTO DEPARTMENT (ID, NAME) VALUES (1, 'Програмных решений');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (2, 'Серверных решений');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (3, 'Бухгалтерия');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (4, 'Отдел кадров');

INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (1, 1, 'Статистики');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (2, 1, 'Анализа');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (3, 1, 'WEB');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (4, 2, 'Поддержки');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (5, 2, 'Связи');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (6, 4, 'Подбора персонала');
INSERT INTO DEPGROUP (ID, ID_DEP, NAME) VALUES (7, 4, 'Обслуживания персонала');

INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (1,  'Белькевич',  'Петр',      'Петрович',     'ул. Шквченко, 14, Киев, 02240',           '673-23-70');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (2,  'Киров',      'Василий',   'Васильевич',   'ул. Шербакова, 24, Киев, 03240',          '623-63-23');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (3,  'Кирилов',    'Александр', 'Михайлович',   'бул. Леси Лкраинки, 34, Киев, 02640',     '634-33-20');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (4,  'Шевченко',   'Максим',    'Алексеейвич',  'ул. Либедская, 8, Киев, 02540',           '643-43-23');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (5,  'Швецов',     'Иван',      'Петрович',     'ул. Григоренка, 6, Киев, 05240',          '657-53-71');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (6,  'Орлов',      'Юрий',      'Владимирович', 'ул. Льва толстого, 44, Киев, 02240',      '663-63-23');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (7,  'Гусев',      'Иван',      'Сергеевич',    'ул. Строителей, 4, Киев, 02240',          '777-27-22');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (8,  'Дурнов',     'Иван',      'Андреевич',    'ул. Машиностроительная, 74, Киев, 02240', '873-28-73');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (9,  'Иванов',     'Евгений',   'Иванович',     'ул. Радунская, 74, Киев, 02240',          '977-43-23');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (10, 'Шовковский', 'Павел',     'Иванович',     'ул. Сабурова, 73, Киев, 02240',           '573-53-73');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (11, 'Дуров',      'Иван',      'Юрьевич',      'ул. Киквидзе, 52, Киев, 02240',           '373-73-23');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (12, 'Иванов',     'Алексей',   'Алексеевич',   'ул. Харьковская, 74, Киев, 02240',        '477-83-26');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (13, 'Никтин',     'Иван',      'Иванович',     'ул. Одесская, 46, Киев, 02240',           '573-23-83');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (14, 'Каладзе',    'Сергей',    'Васильевич',   'ул. Николаесвская, 34, Киев, 02240',      '373-23-24');
INSERT INTO EMPLOYEE (ID, FIRST_NAME, MIDDLE_NAME, SECOND_NAME, ADRESS, PHONE) VALUES (15, 'Ребров',     'Василий',   'Иванович',     'ул. Какаето, 34, Киев, 02240',            '673-23-23');

INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (1,  1, NULL,  4,  1, '23-45');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (2,  1,    1,  3,  2, '43-54');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (3,  1,    1,  3,  3, '42-24');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (4,  1,    2,  2,  4, '42-24');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (5,  1,    2,  2,  5, '42-24');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (6,  1,    4,  1,  6, '51-16');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (7,  1,    5,  1,  7, '53-26');

INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (8,  2,    1,  3,  8, '45-33');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (9,  2,    9,  2,  9, '62-22');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (10, 2,    9,  2, 10, '28-12');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (11, 2,   10,  1, 11, '44-54');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (12, 2,   11,  1, 12, '71-72');

INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (13, 3,   10,  1, 13, '32-14');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (14, 3,   10,  1, 14, '35-64');
INSERT INTO POSITION (ID, ID_OFFICE, ID_CHIEF, ID_TITLE, ID_EMPLOYEE, PHONE) VALUES (15, 3,   10,  1, 15, '35-64');

INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 2,    1, NULL, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 3,    2, NULL, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 8,    3, NULL, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 8,    4, NULL, 1);

INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 4, NULL,    1, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 5, NULL,    2, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 9, NULL,    6, 1);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (10, NULL,    7, 1);

INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 6, NULL, 1,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES ( 7, NULL, 2,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (11, NULL, 6,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (12, NULL, 7,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (13, NULL, 1,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (14, NULL, 2,  0);
INSERT INTO SUBORDINATE (ID_POSITION, ID_DEPARTMENT, ID_DEPGROUP, IS_DIRECT) VALUES (15, NULL, 6,  0);


