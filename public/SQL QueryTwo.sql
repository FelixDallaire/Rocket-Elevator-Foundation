SELECT to_char(creation_date, 'YYYY-MM') as leads, COUNT(email) as Email
FROM factquotes
GROUP BY leads
ORDER BY leads
