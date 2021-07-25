--show all dog breeds in nyc, ordered most to least
select BreedName, count(BreedName) as dogs
from NYC_Dog_Licensing_Dataset_2018
group by BreedName
order by  dogs desc