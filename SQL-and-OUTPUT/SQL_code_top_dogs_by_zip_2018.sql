select
  ZipCode,
  BreedName,
  topdawgs
from
  (
    select
      zipCode,
      BreedName,
      max(dogs) as topdawgs
    from
      (
        select
          ZipCode,
          BreedName,
          count (BreedName) as dogs
        from
          NYC_Dog_Licensing_Dataset_2018
        where
          BreedName is not "Unknown"
        group by
          ZipCode,
          BreedName
        order by
          count(BreedName) desc
      )
    group by
      ZipCode
  )
where
  topdawgs > 2