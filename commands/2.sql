select a.name, u.user_name, uta.status, uta.rating from (
          `Anime` a
          inner join `usersToAnime` uta
              on a.anime_id = uta.anime_id
          inner join `Users` u
              on u.user_id = uta.user_id) where a.name like '%Берсерк%'
