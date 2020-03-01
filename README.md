# Forest-Type-Prediction


Understanding vegetation is one of the most important aspects of land management and utilization. In this program we demonstratehow Mapped multi-temporal remote sensing data from Japan can be used.
The goal is to map different forest types using spectral data.

A Deep learning classifier is used to classify land into 4 categories (water,
forest, farm, impervious).

[Full Report](https://www.dropbox.com/s/4ja5y7f2h473s0p/Predicting%20Forest%20Type%20using%20Deep%20Learning.pdf?dl=0).

## What is NDVI ?

The Normalized Difference Vegetation Index (NDVI) is a graphical indicator that is used to analyze remote sensing data which is collected via satellites or planes.

This data is used to assess whether a land area has vegetation or not. And if vegetation exists to what extent is it found and its condition. The Index is calculated using the Near Infrared Waves via remote sensing satellites. 

The NDVI values range from -1 to 1. 
With negative values corresponding to water and high values(close to 1) corresponding to tropical forests and grasslands.

The Index is used in a number areas.
For example in agriculture farmers use NDVI to measure biomass.
foresters use NDVI to quantify forest supply and leaf area index.
Furthermore, NASA states that NDVI is a good indicator of
droughts. 
When water limits vegetation growth, it has a lower relative NDVI and density of vegetation.

Since this data is collected using satellites, much of the data collection
is already automated. 
Over the years scientists have looked at these
indicators to decide the type of vegetation or land in an area.In the this program
we attempt to build a classifier that takes in NDVI for various times of the year and predicts the type of vegetation
present; without any human intervention. 

## About the Dataset
The dataset was acquired from the online machine learning repository
at the University of California Irvine. 

It contains 27 features which consist of the NDVI reading taken at different times during the year of 2015. There are a total of 10545 training examples. 

This data set contains training data from a remote sensing study which mapped different forest types based on their spectral characteristics at visible-to-near infrared wavelengths, using ASTER satellite imagery. The output (forest type map) can be used to identify and/or quantify the ecosystem services (e.g. carbon storage, erosion protection) provided by the forest.


There are a total of 4 output classes in the dataset, namely

• Water

• Forest

• Farm

• Impervious


## References
W. John, D. Herring. Measuring Vegetation (NDVI and EVI), 2000 https://earthobservatory.nasa.gov/features/MeasuringVegetation

B. Johnson Forest type mapping dataset, 2015 https://archive.ics.uci.edu/ml/datasets/Forest+type+mapping

