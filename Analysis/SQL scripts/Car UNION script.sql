--UNION script joining multiple tables from different years of car data
select *
into CityTaxiData from (
SELECT
       [Licensing Authority]
      ,[Wheelchair accessible taxis ]
      ,[Other _taxis ]
      ,[Total _taxis]
      ,[Taxi only licensed drivers]
      --[Wheelchair accessible PHVs]
      ,[Total _PHVs]
      ,[Operator _licences _issued]
      ,[PHV only licenced Drivers]
      ,[Dual taxi/PHV driver licences]
      ,[Total _driver _licences _issued]
      ,[Total licensed vehicles]
      ,[End_of_Year]
  FROM [dbo].[2017]
  union
  SELECT
       [Licensing Authority]
      ,[Wheelchair accessible taxis ]
      ,[Other _taxis ]
      ,[Total _taxis]
      ,[Taxi only licensed drivers]
      --[Wheelchair accessible PHVs]
      ,[Total _PHVs]
      ,[Operator _licences _issued]
      ,[PHV only licenced Drivers]
      ,[Dual taxi/PHV driver licences]
      ,[Total _driver _licences _issued]
      ,[Total licensed vehicles]
      ,[End_of_Year]
  FROM [dbo].[2015]
  union 
  SELECT 
       [Licensing Authority]
      ,[Wheelchair accessible taxis ]
      ,[Other_taxis]
      ,[Total _taxis]
      ,[Taxi only licensed drivers]
      --[Wheelchair accessible PHVs]
      ,[Total _PHVs]
      ,[Operator _licences _issued]
      ,[PHV only Licenced Drivers]
      ,[Dual taxi/PHV driver licences]
      ,[Total _driver _licences _issued]
      ,[Total licensed vehicles]
      ,[End_of_Year]
  FROM [dbo].[2013]
  union
  SELECT 
       [Licensing Authority]
      ,[Wheelchair accessible taxis]
      ,[Other_taxis]
      ,[Total _taxis]
      ,[Taxi only licensed drivers]
      --[Wheelchair accessible PHVs]
      ,[Total _PHVs]
      ,[Operator _licences _issued]
      ,[PHV only Licenced Drivers]
      ,[Dual taxi/PHV driver licences]
      ,[Total _driver _licences _issued]
      ,[Total licensed vehicles]
      ,[End_of_Year]
  FROM [dbo].[2011]
  union
  SELECT 
       [Licensing Authority]
      ,[Wheelchair accessible taxis]
      ,[Other _taxis]
      ,[Total _taxis]
      ,[Taxi only licensed drivers]
      ,[Total _PHVs]
      ,[Operator _licences _issued]
      ,[PHV only licenced Drivers]
      ,[Dual taxi/PHV driver licences]
      ,[Total _driver _licences _issued]
      ,[Total licensed vehicles]
      ,[End_of_Year]
  FROM [dbo].[2009]
  ) a
  
 












