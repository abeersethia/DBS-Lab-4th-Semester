alter table emps 
add reports_to number(3) constraint fk_reports_to_empcode references emps;

alter table skills
add constraint starts_with_s check (skillid like('S%')); 

alter table emp_skills
add constraint pk_empno_skillid primary key(empno,skillid);

alter table prj_details
add constraint unq_prj_name unique(prjname);

alter table clients
add(email varchar2(20) constraint valid_email check(email like '%@%.___'));

alter table emps modify(phone constraint unq_phone unique);

alter table emps modify(email constraint unq_email unique);

alter table medical_policy drop constraint pk_med;
alter table medical_policy add constraint pk_med_policy primary key(empno,policyno,policydate);

alter table medical_policy drop constraint premium_greater_than_0;
alter table medical_policy add constraint premium_greater_than_1000 check (premium>1000);