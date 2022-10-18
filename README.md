# fa22-prj-pcbarko-schen176--mettler3-yc62-gianghl2

**This is the repository for the Fall 2022 STAT447 group project for:**

Patrick Barko pcbarko
Stephanie Chen schen176
Matt Mettler mettler3
Giang Ha Li gianghl2
Yongxin Cai yc62

Spotify is an audio streaming service used by *hundreds of millions* of people. 

The popularity of each song is quantified using a numeric popularity index. Each song is associated with metadata including genra, artist, several acoustic attributes:
- acousticness
- danceability
- durationms
- energy
- instrumentalness
- key
- liveness
- loudness
- mode
- speechiness
- tempo
- timesignature
- valence
- genre

We propose to model the popularity index based on the acoustic attributes and genre. There are several published Spotify datasets, but these are several years old. Our **fist objective** is to create a new, *updated* dataset of Spotify songs. We will attempt to accomplish this by generating random song IDs and using these to search the Spotify API. We anticipate this will be the most challenging aspect of the project, as Spotify does not enable bulk, random queries. Our **second objective** is to model the use song popularity (dependent variable) from acoustic attributes. Others have attempted to model popularity from the acoustic attributes and genre, but most used *linear models that did not perform well*. We plan to use alternative approaches to modeling/predicting song popualrity from acoustic attributes and compare them. 

