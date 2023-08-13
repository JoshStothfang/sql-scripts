SELECT v.VendorName, g.AccountDescription, Count(*) AS LineItemCount, Sum(il.InvoiceLineItemAmount) AS LineItemSum
FROM InvoiceLineItems il
JOIN GLAccounts g
    ON il.AccountNo = g.AccountNo
JOIN Invoices i
    ON il.InvoiceID = i.InvoiceID
JOIN Vendors v
    ON i.VendorID = v.VendorID
GROUP BY v.VendorName, g.AccountDescription
ORDER BY v.VendorName, g.AccountDescription

