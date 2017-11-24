/*************************************/
/*PIVOT HOUSING DATA TO JOIN ON DATE*/
/*************************************/

--Use the original housing data and average the dates so it can be grouped by Local Authority Name 
select
      [Local authority name]
      ,AVG([Year ending Dec 1995]) AS [Dec 1995]
      ,AVG([Year ending Mar 1996]) AS [Mar 1996]
      ,AVG([Year ending Jun 1996]) AS [Jun 1996]
      ,AVG([Year ending Sep 1996]) AS [Sep 1996]
      ,AVG([Year ending Dec 1996]) AS [Dec 1996]
      ,AVG([Year ending Mar 1997]) AS [Mar 1997]
      ,AVG([Year ending Jun 1997]) AS [Jun 1997]
      ,AVG([Year ending Sep 1997]) AS [Sep 1997]
      ,AVG([Year ending Dec 1997]) AS [Dec 1997]
      ,AVG([Year ending Mar 1998]) AS [Mar 1998]
      ,AVG([Year ending Jun 1998]) AS [Jun 1998]
      ,AVG([Year ending Sep 1998]) AS [Sep 1998]
      ,AVG([Year ending Dec 1998]) AS [Dec 1998]
      ,AVG([Year ending Mar 1999]) AS [Mar 1999]
      ,AVG([Year ending Jun 1999]) AS [Jun 1999]
      ,AVG([Year ending Sep 1999]) AS [Sep 1999]
      ,AVG([Year ending Dec 1999]) AS [Dec 1999]
      ,AVG([Year ending Mar 2000]) AS [Mar 2000]
      ,AVG([Year ending Jun 2000]) AS [Jun 2000]
      ,AVG([Year ending Sep 2000]) AS [Sep 2000]
      ,AVG([Year ending Dec 2000]) AS [Dec 2000]
      ,AVG([Year ending Mar 2001]) AS [Mar 2001]
      ,AVG([Year ending Jun 2001]) AS [Jun 2001]
      ,AVG([Year ending Sep 2001]) AS [Sep 2001]
      ,AVG([Year ending Dec 2001]) AS [Dec 2001]
      ,AVG([Year ending Mar 2002]) AS [Mar 2002]
      ,AVG([Year ending Jun 2002]) AS [Jun 2002]
      ,AVG([Year ending Sep 2002]) AS [Sep 2002]
      ,AVG([Year ending Dec 2002]) AS [Dec 2002]
      ,AVG([Year ending Mar 2003]) AS [Mar 2003]
      ,AVG([Year ending Jun 2003]) AS [Jun 2003]
      ,AVG([Year ending Sep 2003]) AS [Sep 2003]
      ,AVG([Year ending Dec 2003]) AS [Dec 2003]
      ,AVG([Year ending Mar 2004]) AS [Mar 2004]
      ,AVG([Year ending Jun 2004]) AS [Jun 2004]
      ,AVG([Year ending Sep 2004]) AS [Sep 2004]
      ,AVG([Year ending Dec 2004]) AS [Dec 2004]
      ,AVG([Year ending Mar 2005]) AS [Mar 2005]
      ,AVG([Year ending Jun 2005]) AS [Jun 2005]
      ,AVG([Year ending Sep 2005]) AS [Sep 2005]
      ,AVG([Year ending Dec 2005]) AS [Dec 2005]
      ,AVG([Year ending Mar 2006]) AS [Mar 2006]
      ,AVG([Year ending Jun 2006]) AS [Jun 2006]
      ,AVG([Year ending Sep 2006]) AS [Sep 2006]
      ,AVG([Year ending Dec 2006]) AS [Dec 2006]
      ,AVG([Year ending Mar 2007]) AS [Mar 2007]
      ,AVG([Year ending Jun 2007]) AS [Jun 2007]
      ,AVG([Year ending Sep 2007]) AS [Sep 2007]
      ,AVG([Year ending Dec 2007]) AS [Dec 2007]
      ,AVG([Year ending Mar 2008]) AS [Mar 2008]
      ,AVG([Year ending Jun 2008]) AS [Jun 2008]
      ,AVG([Year ending Sep 2008]) AS [Sep 2008]
      ,AVG([Year ending Dec 2008]) AS [Dec 2008]
      ,AVG([Year ending Mar 2009]) AS [Mar 2009]
      ,AVG([Year ending Jun 2009]) AS [Jun 2009]
      ,AVG([Year ending Sep 2009]) AS [Sep 2009]
      ,AVG([Year ending Dec 2009]) AS [Dec 2009]
      ,AVG([Year ending Mar 2010]) AS [Mar 2010]
      ,AVG([Year ending Jun 2010]) AS [Jun 2010]
      ,AVG([Year ending Sep 2010]) AS [Sep 2010]
      ,AVG([Year ending Dec 2010]) AS [Dec 2010]
      ,AVG([Year ending Mar 2011]) AS [Mar 2011]
      ,AVG([Year ending Jun 2011]) AS [Jun 2011]
      ,AVG([Year ending Sep 2011]) AS [Sep 2011]
      ,AVG([Year ending Dec 2011]) AS [Dec 2011]
      ,AVG([Year ending Mar 2012]) AS [Mar 2012]
      ,AVG([Year ending Jun 2012]) AS [Jun 2012]
      ,AVG([Year ending Sep 2012]) AS [Sep 2012]
      ,AVG([Year ending Dec 2012]) AS [Dec 2012]
      ,AVG([Year ending Mar 2013]) AS [Mar 2013]
      ,AVG([Year ending Jun 2013]) AS [Jun 2013]
      ,AVG([Year ending Sep 2013]) AS [Sep 2013]
      ,AVG([Year ending Dec 2013]) AS [Dec 2013]
      ,AVG([Year ending Mar 2014]) AS [Mar 2014]
      ,AVG([Year ending Jun 2014]) AS [Jun 2014]
      ,AVG([Year ending Sep 2014]) AS [Sep 2014]
      ,AVG([Year ending Dec 2014]) AS [Dec 2014]
      ,AVG([Year ending Mar 2015]) AS [Mar 2015]
      ,AVG([Year ending Jun 2015]) AS [Jun 2015]
      ,AVG([Year ending Sep 2015]) AS [Sep 2015]
      ,AVG([Year ending Dec 2015]) AS [Dec 2015]
      ,AVG([Year ending Mar 2016]) AS [Mar 2016]
      ,AVG([Year ending Jun 2016]) AS [Jun 2016]
      ,AVG([Year ending Sep 2016]) AS [Sep 2016]
      ,AVG([Year ending Dec 2016]) AS [Dec 2016]
      ,AVG([Year ending Mar 2017]) AS [Mar 2017]
--INTO dbo.HousePrices
FROM [LAHousePrices]
GROUP BY [Local authority name]
go



With unpivotedcte
as
(
select
[Local authority name], CAST([Date] as date) as [Date], Price
--These are the columns we want in the new pivoted table
from
(
select * from dbo.HousePrices
) 
AS SourceTable

UNPIVOT

(
Price FOR [Date] in

([Dec 1995]
,[Mar 1996]
,[Jun 1996]
,[Sep 1996]
,[Dec 1996]
,[Mar 1997]
,[Jun 1997]
,[Sep 1997]
,[Dec 1997]
,[Mar 1998]
,[Jun 1998]
,[Sep 1998]
,[Dec 1998]
,[Mar 1999]
,[Jun 1999]
,[Sep 1999]
,[Dec 1999]
,[Mar 2000]
,[Jun 2000]
,[Sep 2000]
,[Dec 2000]
,[Mar 2001]
,[Jun 2001]
,[Sep 2001]
,[Dec 2001]
,[Mar 2002]
,[Jun 2002]
,[Sep 2002]
,[Dec 2002]
,[Mar 2003]
,[Jun 2003]
,[Sep 2003]
,[Dec 2003]
,[Mar 2004]
,[Jun 2004]
,[Sep 2004]
,[Dec 2004]
,[Mar 2005]
,[Jun 2005]
,[Sep 2005]
,[Dec 2005]
,[Mar 2006]
,[Jun 2006]
,[Sep 2006]
,[Dec 2006]
,[Mar 2007]
,[Jun 2007]
,[Sep 2007]
,[Dec 2007]
,[Mar 2008]
,[Jun 2008]
,[Sep 2008]
,[Dec 2008]
,[Mar 2009]
,[Jun 2009]
,[Sep 2009]
,[Dec 2009]
,[Mar 2010]
,[Jun 2010]
,[Sep 2010]
,[Dec 2010]
,[Mar 2011]
,[Jun 2011]
,[Sep 2011]
,[Dec 2011]
,[Mar 2012]
,[Jun 2012]
,[Sep 2012]
,[Dec 2012]
,[Mar 2013]
,[Jun 2013]
,[Sep 2013]
,[Dec 2013]
,[Mar 2014]
,[Jun 2014]
,[Sep 2014]
,[Dec 2014]
,[Mar 2015]
,[Jun 2015]
,[Sep 2015]
,[Dec 2015]
,[Mar 2016]
,[Jun 2016]
,[Sep 2016]
,[Dec 2016]
,[Mar 2017]))

AS End_Table
)

select
[Local authority name],
[Date],
[Price]
into dbo.HousePricesPivot
from unpivotedcte

--This is to check the table is now pivoted with 3 columns
select
*
from dbo.HousePricesPivot
