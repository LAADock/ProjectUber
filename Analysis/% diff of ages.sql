/****** Script for SelectTopNRows command from SSMS  ******/
with t as
(
SELECT 
	   [District]
      ,[Area]
      --,[Age]
      ,[% of Pop] [25-34]
      --,[Uber?]
--into [NoUber25]
  FROM [Uber].[dbo].[DistrictDemo]
  where [Uber?] = 0
  and [Age] in ('24-34')
),
f as
(
 SELECT 
	   [District]
      ,[Area]
      --,[Age]
      ,[% of Pop] [55+]
      --,[Uber?]
--into [NoUber25]
  FROM [Uber].[dbo].[DistrictDemo]
  where [Uber?] = 0
  and [Age] in ('54+')
)
select
	 f.[District]
	,f.[Area]
	,t.[25-34]
	,f.[55+]
	,((f.[55+] - t.[25-34])/f.[55+]) [% diff]
into [PercentDiff]
from f
inner join t 
	on f.[District] = t.[District]
    and f.[Area] = f.[Area]