SELECT TOP 10 VendorName, SUM(PaymentTotal) PaymentSum
FROM Invoices I
JOIN Vendors V
    ON I.VendorID = V.VendorID
GROUP BY VendorName
ORDER BY PaymentSum DESC