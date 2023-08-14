SELECT i.InvoiceNumber, i.InvoiceTotal
FROM Invoices i
WHERE PaymentTotal > ALL (SELECT TOP 50 PERCENT i2.PaymentTotal
                        FROM Invoices i2
                        WHERE i2.InvoiceTotal - i2.PaymentTotal - i2.CreditTotal = 0
                        ORDER BY i2.PaymentTotal)