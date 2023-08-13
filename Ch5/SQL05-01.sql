SELECT VendorID, SUM(PaymentTotal) PaymentSum
FROM Invoices
GROUP BY VendorID
ORDER BY VendorID
