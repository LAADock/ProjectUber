/****** Creating a table illustrating the percentage of the population across two age groups, and the percentage difference between the two.  ******/
with t as
(
SELECT 
	   [District]
      ,[Area]
      --,[Age]
      ,[% of Pop] [25-34]   -- create a column with the percentage of the population aged 25-35
      --,[Uber?]
--into [NoUber25]
  FROM [Uber].[dbo].[DistrictDemo]
  where [Uber?] = 0    --for areas where there's no uber
  and [Age] in ('24-34')
),
f as
(
 SELECT 
	   [District]
      ,[Area]
      --,[Age]
      ,[% of Pop] [55+]   -- create a column with the percentage of the population aged 55+
      --,[Uber?]
--into [NoUber25]
  FROM [Uber].[dbo].[DistrictDemo]
  where [Uber?] = 0    --for areas where there's no uber
  and [Age] in ('54+')
)
select
	 f.[District]
	,f.[Area]
	,t.[25-34]
	,f.[55+]
	,((f.[55+] - t.[25-34])/f.[55+]) [% diff]   ---calculate the prrcentage difference between the two age groups
into [PercentDiff]
from f
inner join t 
	on f.[District] = t.[District]
    and f.[Area] = f.[Area]