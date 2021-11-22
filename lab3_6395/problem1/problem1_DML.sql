INSERT INTO company.`employee`(`ssn`, `fname`, `lname`, `bdate`, `address`, `gender`, `salary`, `dno`) 
VALUES ('10', 'maged', 'zearban', '2000-08-10', '108omarlotfy', 'male', '10000', '3');

INSERT INTO company.`department` (`dnumber`, `dname`, `mrg_ssn`, `mgr_start_date`)
VALUES ('3', 'compu', '10', '2020-11-10');

ALTER TABLE company.department ADD FOREIGN KEY (mrg_ssn)
REFERENCES company.employee(ssn);

ALTER TABLE company.employee ADD FOREIGN KEY (dno)
REFERENCES company.department(department);

DELETE FROM company.employee;

ALTER TABLE company.project ADD FOREIGN KEY (dno)
REFERENCES company.department(department);


INSERT INTO company.`project`(`pnumber`, `pname`, `plocation`, `dno`) VALUES ('4','test','anywhere','6');