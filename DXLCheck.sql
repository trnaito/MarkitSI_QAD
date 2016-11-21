

-- Item list
select top 10000 * from DXLItem



-- Security information
-- DataRegionCode: 1=All regions, 5=Japan, 2=Asia ex Japan, 3=Australia, 4=Europe, 6=North America, 7=Others
select top 10000 * from DXLSecInfo where DataRegionCode=5 and Quick is not null order by Quick

select top 10000
  jp.*
, it.*
from
    DXLJpData jp -- Japanese Security-Lending Data Items
	join DXLItem it on jp.Item = it.Item 
where
    jp.Code = 2273 -- Toyota
	--and Item=1 -- Total Demand Value
	--and Item=7 -- Utilization
	and jp.Date_ = '2016-11-16'
