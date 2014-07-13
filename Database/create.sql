Create Database Budget_Managment
GO

use Budget_Managment
Go

Create Table Item(
	TBL_ID int identity(0,1) Primary Key Not null,
	Name			nvarchar(100),
	ExpenseType 	nvarchar(40),
	Category 		nvarchar(70),
	Price			money,
	[Date]			date,
	Budget_FK		int
)

Create Table Budget(
	BDGT_ID int identity(0,1) Primary Key Not null,
	[Current] 		money,
	BeginTotal 		money,
	[Date]			date
)

Create Table Income(
	INCM_ID int identity(0,1) Primary Key Not null,
	[Type] 			nvarchar(70),
	Gain 			money
	[Date]			date,
	Budget_FK		int
)

ALTER TABLE Income
ADD CONSTRAINT Income_Budget_FK FOREIGN KEY ( Budget_FK ) REFERENCES Budget (BDGT_ID);

ALTER TABLE Item
ADD CONSTRAINT Item_Budget_FK FOREIGN KEY ( Budget_FK ) REFERENCES Budget (BDGT_ID);