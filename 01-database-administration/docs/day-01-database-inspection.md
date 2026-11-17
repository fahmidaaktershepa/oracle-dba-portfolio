# Day 1 - Oracle Database Environment Inspection

## 1. Project Overview

**Objective:** To inspect the Oracle Database environment and understand its basic architecture.

**Environment:**
- Database: Oracle Database 19c Enterprise Edition
- Database Name: ORCL5
- Instance Name: orcl5
- Operating System: Windows 11
- Tool: SQL*Plus

## 2. Database Information

| Property | Value |
|---|---|
| Database Name | ORCL5 |
| Instance Name | orcl5 |
| Instance Status | OPEN |
| Open Mode | READ WRITE |
| CDB | NO (Non-CDB) |
| Oracle Version | 19c |

## 3. Control Files

Two control files were identified:

- CONTROL01.CTL
- CONTROL02.CTL

**Observation:** The database has two control file copies.

## 4. Datafiles

The following datafiles were identified:

| File Number | Datafile |
|---|---|
| 1 | SYSTEM01.DBF |
| 3 | SYSAUX01.DBF |
| 4 | UNDOTBS01.DBF |
| 7 | USERS01.DBF |

## 5. Online Redo Log Members

Three online redo log groups were identified.

| Group Number | Redo Log Member |
|---|---|
| 1 | REDO01.LOG |
| 2 | REDO02.LOG |
| 3 | REDO03.LOG |

Each group currently has one redo log member in the inspected output.

## 6. Redo Log Status

| Group | Thread | Sequence | Status | Size |
|---|---|---|---|---|
| 1 | 1 | 193 | INACTIVE | 200 MB |
| 2 | 1 | 194 | INACTIVE | 200 MB |
| 3 | 1 | 195 | CURRENT | 200 MB |

**Observations:**
- Total online redo log groups: 3
- Size of each group: 200 MB
- Current redo log group: 3
- Inactive redo log groups: 1 and 2

## 7. SGA Information

The `SHOW SGA` command returned:

| Component | Size in Bytes |
|---|---:|
| Total SGA | 1,073,738,560 |
| Fixed Size | 9,036,608 |
| Variable Size | 343,932,928 |
| Database Buffers | 713,031,680 |
| Redo Buffers | 7,737,344 |

Total SGA is approximately 1 GiB.

## 8. Selected Dynamic SGA Components

| Component | Size (MB) |
|---|---:|
| Shared Pool | 300 |
| Large Pool | 28 |
| Default Buffer Cache | 632 |
| Shared IO Pool | 48 |
| Java Pool | 0 |
| Streams Pool | 0 |
| In-Memory Area | 0 |

## 9. What I Learned

Through this practical exercise, I learned how to:

1. Check Oracle Database version.
2. Identify instance and database information.
3. Check database open mode.
4. Identify whether a database is a CDB or Non-CDB.
5. Locate control files and datafiles.
6. Identify online redo log groups and members.
7. Check redo log group status and size.
8. Inspect SGA memory components.

## 10. SQL Script

Environment inspection script:

`../scripts/01_database_environment_check.sql`

## 11. Conclusion

Successfully completed the basic Oracle Database environment inspection using SQL*Plus.

All inspection queries were read-only. No database configuration was changed.
