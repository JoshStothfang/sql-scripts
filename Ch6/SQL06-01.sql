SELECT v.VendorName
FROM Vendors v
WHERE v.VendorID IN (SELECT DISTINCT i.VendorID
                    FROM Invoices i)
ORDER BY v.VendorName;