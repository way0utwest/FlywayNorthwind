#Invoke-Sqlcmd -ServerInstance Aristotle\SQL2022 -Database Westwind_3_QA -Query "insert dbo.numbers (n) select max(n)+1 from numbers"
