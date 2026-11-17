
-- Project: Oracle Database Administration Lab
-- Script: Database Environment Check
-- Purpose: Inspect Oracle database environment

-- 1. Oracle Database Version
SELECT banner
FROM v$version;

-- 2. Instance Information
SELECT
    instance_name,
    status,
    version
FROM v$instance;

-- 3. Database Information
SELECT
    name,
    open_mode,
    cdb
FROM v$database;

-- 4. Control Files
SELECT name
FROM v$controlfile;

-- 5. Datafiles
SELECT
    file#,
    name
FROM v$datafile;

-- 6. Redo Log Members
SELECT
    group#,
    member
FROM v$logfile;
