SELECT V.VendorName, COUNT(*) InvoiceCount, SUM(InvoiceTotal) InvoiceSum
FROM Invoices I
JOIN Vendors V
    ON I.VendorID = V.VendorID
GROUP BY V.VendorName
ORDER BY InvoiceCount DESC