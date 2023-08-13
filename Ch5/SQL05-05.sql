SELECT G.AccountDescription, COUNT(*) LineItemCount, SUM(I.InvoiceLineItemAmount) LineItemSum
FROM InvoiceLineItems I
JOIN GLAccounts G
    ON G.AccountNo = I.AccountNo
JOIN Invoices IV
    ON IV.InvoiceID = I.InvoiceID
WHERE IV.InvoiceDate BETWEEN '2022-10-01' AND '2022-12-31'
GROUP BY G.AccountDescription
HAVING Count(*) > 1
ORDER BY LineItemCount DESC