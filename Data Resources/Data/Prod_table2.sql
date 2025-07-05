CREATE TABLE prod_churn_data_sql2 AS
SELECT * FROM customer_data WHERE 1 = 0;

INSERT INTO prod_churn_data_sql2
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    IFNULL(Value_Deal, 'None'),
    Phone_Service,
    IFNULL(Multiple_Lines, 'No'),
    Internet_Service,
    IFNULL(Internet_Type, 'None'),
    IFNULL(Online_Security, 'No'),
    IFNULL(Online_Backup, 'No'),
    IFNULL(Device_Protection_Plan, 'No'),
    IFNULL(Premium_Support, 'No'),
    IFNULL(Streaming_TV, 'No'),
    IFNULL(Streaming_Movies, 'No'),
    IFNULL(Streaming_Music, 'No'),
    IFNULL(Unlimited_Data, 'No'),
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    IFNULL(Churn_Category, 'Others'),
    IFNULL(Churn_Reason, 'Others')
FROM customer_data;
