SELECT InvoiceTotal, InvoiceTotal * 0.1 AS '10%', InvoiceTotal * 1.1 AS 'Plus 10%'
FROM Invoices
WHERE (InvoiceTotal - (PaymentTotal + CreditTotal)) > 1000
ORDER BY InvoiceTotal DESC
