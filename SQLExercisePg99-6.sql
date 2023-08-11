SELECT CONCAT_WS(', ', VendorContactLName, VendorContactFName) AS 'Full Name'
FROM Vendors
WHERE VendorContactLName LIKE '[A-E]%' AND VendorContactLName NOT LIKE 'D%'
ORDER BY VendorContactLName, VendorContactFName