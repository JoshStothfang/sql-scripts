SELECT v.VendorID, v.VendorName, CONCAT_WS(' ', v.VendorContactFName, v.VendorContactLName) Name
FROM Vendors v
JOIN Vendors v2
    ON v.VendorID != v2.VendorID
        AND v.VendorContactFName = v2.VendorContactFName
ORDER BY Name
