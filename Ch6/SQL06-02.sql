SELECT i.InvoiceNumber, i.InvoiceTotal
FROM Invoices i
WHERE PaymentTotal > (SELECT AVG(i2.PaymentTotal)
                        FROM Invoices i2
                        WHERE i2.InvoiceTotal - i2.PaymentTotal - i2.CreditTotal = 0)