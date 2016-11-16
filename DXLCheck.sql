

-- Item list
select top 10000 * from DXLItem

-- Japanese Security-Lending Data Items
select top 100 * from DXLJpData

-- Security information
-- DataRegionCode: 1=All regions, 5=Japan, 2=Asia ex Japan, 3=Australia, 4=Europe, 6=North America, 7=Others
select top 10000 * from DXLSecInfo where DataRegionCode=5 order by Quick
