SELECT G.AccountDescription, COUNT(*) LineItemCount, SUM(I.InvoiceLineItemAmount) LineItemSum
FROM InvoiceLineItems I
JOIN GLAccounts G
    ON G.AccountNo = I.AccountNo
GROUP BY G.AccountDescription
HAVING Count(*) > 1
ORDER BY LineItemCount DESC