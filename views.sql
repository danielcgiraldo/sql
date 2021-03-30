drop view if exists citydetails;
create view citydetails as
    select
        c.code as ccode, c.name as cname, c.state as scode, s.name as sname
            from cities as c
            join states as s on c.state=s.code;