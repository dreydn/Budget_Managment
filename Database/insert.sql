Insert into Budget([Current], BeginTotal, [Date])
	Values ( 655.57, 655.57,  '01-07-2014');
	
Insert into Income([Type], Gain, Budget_FK, [Date])
	Values ('Wage', 360, 0, '02-07-2014');
	
Insert into Income([Type], Gain, Budget_FK, [Date])
	Values ('Vacation Payment', 360, 0,  '02-07-2014');
	
Insert into Item (Name, ExpenseType, Category, Price, Budget_FK, [Date])
	Values ('Pizza', 'Living Expense', 'Food', 18, 0, '13-07-2014');
	
Insert into Item (Name, ExpenseType, Category, Price, Budget_FK, [Date])
	Values ('Cola 0.5L', 'Living Expense', 'Food', 2, 0, '13-07-2014');