SELECT V.VendorName, I.InvoiceNumber, I.InvoiceDate, I.InvoiceTotal - I.PaymentTotal - I.CreditTotal Balance
FROM Vendors V
JOIN Invoices I
    ON I.VendorID = V.VendorID
WHERE NOT I.InvoiceTotal - I.PaymentTotal - I.CreditTotal = 0
ORDER BY VendorName