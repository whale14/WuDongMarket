-- USER SQL
ALTER USER "USM"
DEFAULT TABLESPACE "SYSTEM"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

-- QUOTAS

-- ROLES
ALTER USER "USM" DEFAULT ROLE "CONNECT","RESOURCE";

-- SYSTEM PRIVILEGES

