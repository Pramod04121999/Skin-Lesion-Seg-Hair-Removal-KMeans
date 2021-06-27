# Skin-Lesion-Seg-Hair-Removal-KMeans

### Methodology 
Algorithm based on Berkeley wavelet transform, k-means clustering, and morphological operations for the border detection and segmentation of skin lesion or neoplasm, which help dermatologists improve and facilitate skin diagnosis lesion as early as possible. Dermoscopic images undergoing the Berkeley wavelet transformation stand out for their ability to show the transition from lesion-to-non-lesion regions. In addition to the clustering of similar regions using K-means clustering, morphological operations are utilized to extract skin lesions from the clustered image
### Preprocessing - Hair Removal
Dermoscopic Image is decomposed into R G B Channels. Using the blue channel as the starting point, a grayscale image can be obtained from a dermoscopic image. To identify the dark locations of hair in the dermoscopic image, the acquired grayscale image is subtracted from the image formed by morphologically closing the grayscale image (Bottom-Hat Operation). Obtained hair locations are cleaned using morphological(imerode and imdilate) operations, replaced the hair pixels by neighbouring non-hair pixels(using regionfill which internally uses inward interpolation operation).

#### Channel Decompostion of Dermoscopic Image:
<p align="center">
  <img src="https://user-images.githubusercontent.com/63542593/123533924-e8ddfc00-d736-11eb-87d0-5d5815128116.png" width="450">
  <img src="https://user-images.githubusercontent.com/63542593/123533923-e7accf00-d736-11eb-90d6-dadeeec6ed0b.png" width="450">
  </p>

###### &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Dermoscopic Image &nbsp; &nbsp; &nbsp; Extracted Blue Channel &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; Hair Locations &nbsp; &nbsp; &nbsp; &nbsp; Enhanced Hair Locations &nbsp; &nbsp; &nbsp; Hair Removed  
  <p align="center">
  <img src="https://user-images.githubusercontent.com/63542593/123533611-62c0b600-d734-11eb-813e-4bab8c88adf4.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533614-66543d00-d734-11eb-8834-86c2f286bda1.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533616-681e0080-d734-11eb-99d0-7b031268abd3.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533618-6b18f100-d734-11eb-88d9-ef5322231fac.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533623-6eac7800-d734-11eb-8c63-00cae3c2df1a.png" width="150">
</p>

### KMeans Clustering
KMeans clustering algorithm was adopted to classify the BWT feature map image(data points) into k clusters so that every pixel belongs to the cluster with the nearest mean. 
<p align="center">
<img src="https://user-images.githubusercontent.com/63542593/123534728-ca7aff00-d73c-11eb-9b90-45c98ae045de.png">   
</p>

### Quantitative Segmentation Results

<p align="center">
  
| Dataset  | Sensitivity | Accuracy | Dice | Jaccard Similarity | 
| :---: | :---: | :---: | :---: | :---: |
|    [PH2](https://ieeexplore.ieee.org/document/6610779)    | 99.10 | 98.49  | 96.80  | 93.79  |
</p>

#### Segmentation Visualization Results
<p align="center">
<img src="https://user-images.githubusercontent.com/63542593/123534258-89352000-d739-11eb-8e5a-062f839ff6c9.png" width="700">             
</p>
<p align="left">
Segmentation and border detection results of the proposed method on PH2 dataset: 
(row-1): dermatoscopic images,(row-2): BWT decomposed images, 
(row-3): Grayscale decomposed image (row-4): morphologically segmented images, 
(row-5): ground truth images, (row-6): lesion border detected           
</p>

