DROP TABLE IF EXISTS claim;
CREATE TABLE claim
(
    Claim_ID_Number varchar(100) not null primary key,
    Claim_Receipt_Date date,
    Claim_Description varchar(255),
    Claimant_Birth_Date date,
    Law_Suit_Indicator char(10),
    Claimant_First_Name varchar(255),
    Claimant_Last_Name varchar(255),
    Policy_Number varchar(150),
    Claimant_Occupation varchar(255),
		Loss_Date date,
   Claim_Amount decimal(25,2),
   Claim_Paid_Amount decimal(25,2),
 Claim_Paid_Date date
);

DROP TABLE IF EXISTS customer;
CREATE TABLE customer(
    Customer_ID_Number varchar(100) not null primary key,
    Customer_First_Name varchar(255),
    Customer_Last_Name varchar(255),
    Customer_Type varchar(150),
    Business_Name varchar(255),
    Address_Street_Name_Line_One varchar(255),
    Address_City varchar(255),
   Address_State varchar(255),
   Address_Postal_Code varchar(100),
   Address_Type varchar(100),
  Customer_Birth_Date date,
  Risk_Score int
);

DROP TABLE IF EXISTS policy_detail;
CREATE TABLE policy_detail(
Customer_ID_Number varchar(100) not null,
Policy_Number varchar(100) not null,
Policy_Effective_Date date,
Policy_Expiration_Date date,
Policy_Limit decimal(15,2),
Policy_Type varchar(50),
Currency_Type char(3),
Premium_Cost decimal(25,2),
primary key(Policy_Number,Policy_Expiration_Date )
);


DROP TABLE IF EXISTS reserves;
CREATE TABLE reserves(
Customer_ID_Number varchar(100) not null,
Policy_Number varchar(100) not null,
reserved_Amount decimal(15,2),
reserved_date date not null,
primary key(Customer_ID_Number,Policy_Number,reserved_date )
);

















