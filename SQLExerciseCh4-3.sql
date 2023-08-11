SELECT V.VendorName, V.DefaultAccountNo, G.AccountDescription
FROM Vendors V
JOIN GLAccounts G
    ON V.DefaultAccountNo = G.AccountNo
ORDER BY AccountDescription, VendorName