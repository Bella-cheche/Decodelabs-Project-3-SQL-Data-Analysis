Select *
From [Dataset for Data Analytics]
Where Total_Price >= 11
and Payment_Method = 'Cash'


Select *
From [Dataset for Data Analytics]
Where Total_Price >= 1000
and Payment_Method = 'Debit Card'


Select 
Product,
Order_Status,
Payment_Method,
Referral_Source,
Sum(Total_Price) as 'Tablet_Revenue',
Count(Customer_ID) as 'Tablet_Sales'
From [Dataset for Data Analytics]
Where Product = 'Tablet'
Group By Product, Order_Status, Payment_Method, Referral_Source
Order By Tablet_Revenue Asc;


select 
    Payment_Method,
    Referral_Source,
    sum(Total_Price) as Shipped_Revenue
from [Dataset for Data Analytics]
where Order_Status = 'Shipped'
and Total_Price >= 500
and Payment_Method = 'Cash'
group by Total_Price,Payment_Method, Referral_Source
order by Shipped_Revenue Desc;


select 
    Payment_Method,
    Referral_Source,
    sum(Total_Price) as Cancelled_Revenue
from [Dataset for Data Analytics]
where Order_Status = 'Cancelled'
and Total_Price >= 500
and Payment_Method = 'Cash'
group by Total_Price,Payment_Method, Referral_Source
order by Cancelled_Revenue Desc;


select 
    Product,
    Payment_Method,
    Referral_Source,
    sum(Total_Price) as Phone_Revenue
from [Dataset for Data Analytics]
where Order_Status = 'Delivered'
and Total_Price >= 500
and Product = 'Phone'
group by Total_Price,Payment_Method, Referral_Source, Product
order by Phone_Revenue Desc;


select
    Payment_Method,
    Referral_Source,
    sum(Total_Price) as Online_Revenue
from [Dataset for Data Analytics]
where Order_Status = 'Returned'
and Total_Price >= 500
and Payment_Method = 'Online'
group by Total_Price,Payment_Method, Referral_Source
order by Online_Revenue Desc;


select 
    Payment_Method,
    Referral_Source,
    Order_Status,
    sum(Total_Price) as Pending_Revenue
from [Dataset for Data Analytics]
where Order_Status = 'Pending'
and Total_Price >= 500
and Payment_Method = 'Credit card'
group by Total_Price, Payment_Method, Referral_Source, Order_Status
order by Pending_Revenue Desc;