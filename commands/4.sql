select u.user_name, p.playlist_name, p.description from (
`Playlists` p
inner join `usersToPlaylist` utp
    on p.playlist_id = utp.playlist_id
inner join `Users` u
    on u.user_id = utp.user_id) where u.user_name like '%Sasha%';
