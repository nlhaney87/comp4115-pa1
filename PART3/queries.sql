select employeeNumber,firstName,lastName,reportsTo from employees;
select contactFirstName,contactLastName,checkNumber,paymentDate,amount from payments join customers on payments.customerNumber = customers.customerNumber;
select checkNumber,paymentDate,amount from payments where customerNumber = (select customerNumber from customers where contactFirstName = 'Paul' AND contactLastName = 'Henriot');
select contactFirstName,contactLastName,orderDate,shippedDate,status from orders join customers on orders.customerNumber = customers.customerNumber where orderNumber = 10157;
select productName,priceEach,quantityOrdered,quantityOrdered*priceEach as total from orderdetails join products on orderdetails.productCode = products.productCode where orderNumber = 10179;
select employeeNumber,firstName,lastName,email,jobTitle from employees where officeCode = 5;
select productCode, productName, productDescription,quantityInStock from products where quantityInStock < 1000 AND productLine = 'Classic Cars';
select customerName,contactFirstName, contactLastName,checkNumber,amount from payments join customers on customers.customerNumber = payments.customerNumber where paymentDate < '2004-12-31';
select customerName,phone from customers where creditLimit = 0;