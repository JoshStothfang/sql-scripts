SELECT g.AccountNo, g.AccountDescription
FROM GLAccounts g
LEFT JOIN InvoiceLineItems i
    ON g.AccountNo = i.AccountNo
WHERE i.AccountNo IS NULL
ORDER BY g.AccountNo