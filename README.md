# OracleSQL
Welcome to my practice page of OracleSQL. 

The order for running the scripts is

1.  run the create script - it removes any previous copy of the tables you might have.
>>>> @vets_creates.sql

2.  run the inserts script - it deletes any data from the tables and then do the inserts.
>>>> @vets_inserts.sql

3.  run the .sql file on the page of GitHub and save the outputs as a .LST file.
>>>> spool (name_of_file).LST
>>>> @(name_of_file).sql
>>>> spool off


