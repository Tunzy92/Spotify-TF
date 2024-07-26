resource "spotify_playlist" "nigeria_songs" {
  name = "Nollywood"
  tracks = [ "" ]
}

data "spotify_search_track" "Olamide" {
  name = "Olamide"
}

resource "spotify_playlist" "Baddo" {
  name = "Olamide"
  tracks = [data.spotify_search_track.Olamide.tracks[0].id,
  data.spotify_search_track.Olamide.tracks[1].id,
  data.spotify_search_track.Olamide.tracks[2].id]
}