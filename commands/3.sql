select a.name, a.genre, p.playlist_name from (
`Playlists` p
inner join `animeToPlaylist` atp
    on p.playlist_id = atp.playlist_id
inner join `Anime` a
    on a.anime_id = atp.anime_id)
