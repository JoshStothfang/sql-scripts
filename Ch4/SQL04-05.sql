SELECT v.VendorName Vendor, i.InvoiceDate Date, i.InvoiceNumber Number, li.InvoiceSequence #, li.InvoiceLineItemAmount LineItem
FROM Vendors v
JOIN Invoices i
    ON i.VendorID = v.VendorID
JOIN InvoiceLineItems li
    ON li.InvoiceID = i.InvoiceID
ORDER BY Vendor, Date, Number, #