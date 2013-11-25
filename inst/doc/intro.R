
## ----results='show', message=FALSE, warning=FALSE------------------------
#Load the package
library(soundecology)

#Call the Wave object into memory
data(tropicalsound)

#Run the function
acoustic_complexity(tropicalsound)


## ----results='show', message=FALSE, warning=FALSE------------------------
#Analyze the file only for the frequencies below 8000 Hz
acoustic_complexity(tropicalsound, max_freq = 8000)


## ----results='show', message=FALSE, warning=FALSE------------------------
#Analyze the file with a cluster size of 10 seconds
acoustic_complexity(tropicalsound, j = 10)


## ----results='show', message=FALSE, warning=FALSE------------------------
#Analyze the file with a cluster size of 10 seconds and limiting to 6000 Hz
acoustic_complexity(tropicalsound, j = 10, max_freq = 6000)


## ----results='show', message=FALSE, warning=FALSE------------------------
library(soundecology)
#Download a wave file from the web
download.file("http://research.coquipr.com/soundecology/SM87_20080420_000000_10.wav", destfile="SM87_20080420_000000_10.wav")

#Load file as an object called soundfile
soundfile <- readWave("SM87_20080420_000000_10.wav")

#Delete the downloaded wave file
unlink("SM87_20080420_000000_10.wav")

#Run the function on this object and save the results in a new variable called "soundfile.aci"
soundfile.aci <- acoustic_complexity(soundfile)

#Print the ACI value for the left channel of the wav file, stored in soundfile.aci
print(soundfile.aci$AciTotAll_left)


## ----results='show', message=FALSE, warning=FALSE------------------------
library(soundecology)
data(tropicalsound)
result <- ndsi(tropicalsound)
print(result$ndsi_left)

summary(result)


## ----results='show', message=FALSE, warning=FALSE------------------------
library(soundecology)
data(tropicalsound)
bioindex <- bioacoustic_index(tropicalsound)
print(bioindex$left_area)

summary(bioindex)


## ----results='show', message=FALSE, warning=FALSE------------------------
library(soundecology)
data(tropicalsound)

result <- acoustic_diversity(tropicalsound)
print(result$adi_left)

summary(result)


## ----results='show', message=FALSE, warning=FALSE------------------------
library(soundecology)
data(tropicalsound)

result <- acoustic_evenness(tropicalsound)
print(result$aei_left)

summary(result)


