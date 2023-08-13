SELECT v1.VendorName, 'CA' AS 'VendorState'
FROM Vendors v1
WHERE v1.VendorState = 'CA'
UNION
SELECT v2.VendorName, 'Outside CA' AS 'VendorState'
FROM Vendors v2
WHERE v2.VendorState != 'CA'
ORDER BY VendorName