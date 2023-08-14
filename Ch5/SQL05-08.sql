SELECT v.VendorName, Count(DISTINCT il.AccountNo) AS NumAccounts
FROM InvoiceLineItems il
JOIN Invoices i
    ON il.InvoiceID = i.InvoiceID
JOIN Vendors v
    ON i.VendorID = v.VendorID
GROUP BY v.VendorName
HAVING Count(DISTINCT il.AccountNo) > 1
ORDER BY v.VendorName