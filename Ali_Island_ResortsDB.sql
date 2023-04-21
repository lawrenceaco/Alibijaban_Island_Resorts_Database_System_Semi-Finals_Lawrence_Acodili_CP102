Create database AliIslandResortsDB;
Use AliIslandResortsDB;

Create Table Resort_Information(
Resort_Name varchar(50) not null,
Owner_Name varchar(50) not null,
Address varchar(50) not null,
Contact_Number varchar(20),
Email_Address varchar(60),
PRIMARY KEY (Owner_Name,Email_Address,Contact_Number)
);

Create Index idx_Owner_Name on Resort_Information(Owner_Name);
Create Index idx_Resort_Name on Resort_Information(Resort_Name);
Create Index idx_Contact_Number on Resort_Information(Contact_Number);
Create Index idx_Email_Address on Resort_Information(Email_Address);

Create Table Owner_Information(
Full_Name varchar(80) not null,
Email_Address varchar(50),
Contact_Number varchar(20),
FOREIGN KEY (Full_Name) REFERENCES Resort_Information(Owner_Name),
FOREIGN KEY (Email_Address) REFERENCES Resort_Information(Email_Address),
FOREIGN KEY (Contact_Number) REFERENCES Resort_Information(Contact_Number)
);

Create Table Resort_Description(
Resort_Name varchar(50) not null,
Owner_Name varchar(50) not null,
Capacity int,
Room_Quantity int,
Nipa_Hut_Quantity int,
Tent_Camping varchar(10) not null,
Foreign Key (Resort_Name) References Resort_Information(Resort_Name),
Foreign Key (Owner_Name) References Resort_Information(Owner_Name)
);




