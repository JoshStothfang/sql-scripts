SELECT V.VendorName, I.InvoiceNumber, I.InvoiceDate, I.InvoiceTotal - I.PaymentTotal - I.CreditTotal Balance
FROM Vendors V, Invoices I
WHERE I.VendorID = V.VendorID
AND NOT I.InvoiceTotal - I.PaymentTotal - I.CreditTotal = 0
ORDER BY VendorName