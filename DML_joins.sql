-- 4.
CREATE VIEW DisplayDept AS
SELECT DNAME, DEPTNO, LOC
FROM DEPT;

-- 1.
CREATE VIEW DisplayEmp AS
SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP;
-- Q1
-- 1)
SELECT d.DNAME, EMPNO, e.ENAME, e.JOB, e.MGR
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO;

-- OUTPUT

-- 2)
SELECT d.DNAME, EMPNO, e.ENAME, e.JOB, e.MGR
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO;

-- 3)
SELECT d.DNAME, COUNT(*)
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME;

-- 4)
SELECT d.DNAME, COUNT(*)
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME
HAVING d.DNAME = 'SALES';

-- 5)
SELECT d.DNAME, COUNT(*)
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME
HAVING COUNT(d.DNAME) >= 5
ORDER BY d.DNAME ASC;

-- OUTPUT

-- 6)
SELECT d.DNAME, SUM(SAL)
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME;

-- 7)
SELECT d.*, e.*
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO;

-- 8)
SELECT D.*
FROM EMP e INNER JOIN EMP d
ON e.EMPNO(+) = d.MGR;

-- OUTPUT

-- 9)
SELECT e.*
FROM EMP e
INNER JOIN EMP m 
ON e.mgr = m.empno
WHERE e.sal > m.sal;

-- 10)
SELECT COUNT(*), e.mgr
FROM EMP e
INNER JOIN EMP m 
ON e.mgr = m.empno
GROUP BY e.mgr;

-- 13
SELECT P.P_DESCRIPT, I.INV_INT, I.INV_DATE
FROM CUSTOMER C, INVOICE I, PRODUCT P
WHERE I.CUS_CODE = C.CUS_CODE AND I.CUS_CODE = C.CUS_CODE;

-- 13
-- .drop view DisplayDept;
-- drop view DisplayEmp;
