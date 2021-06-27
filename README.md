# Skin-Lesion-Seg-Hair-Removal-KMeans

## Preprocessing - Hair Removal
Dermoscopic Image is decomposed into R G B Channels. Using the blue channel as the starting point, a grayscale image can be obtained from a dermoscopic image. To identify the dark locations of hair in the dermoscopic image, the acquired grayscale image is subtracted from the image formed by morphologically closing the grayscale image (Bottom-Hat Operation). Obtained hair locations are cleaned using morphological(imerode and imdilate) operations, replaced the hair pixels by neighbouring non-hair pixels(using regionfill which internally uses inward interpolation operation).

Channel Decompostion of Dermoscopic Image:
<p align="center">
  <img src="https://user-images.githubusercontent.com/63542593/123533924-e8ddfc00-d736-11eb-87d0-5d5815128116.png" width="450">
  <img src="https://user-images.githubusercontent.com/63542593/123533923-e7accf00-d736-11eb-90d6-dadeeec6ed0b.png" width="450">
  </p>
  
  <p align="center">
  <img src="https://user-images.githubusercontent.com/63542593/123533611-62c0b600-d734-11eb-813e-4bab8c88adf4.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533614-66543d00-d734-11eb-8834-86c2f286bda1.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533616-681e0080-d734-11eb-99d0-7b031268abd3.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533618-6b18f100-d734-11eb-88d9-ef5322231fac.png" width="150">
  <img src="https://user-images.githubusercontent.com/63542593/123533623-6eac7800-d734-11eb-8c63-00cae3c2df1a.png" width="150">
</p>

###### &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Dermoscopic Image &nbsp; &nbsp; &nbsp; Extracted Blue Channel &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; Hair Locations &nbsp; &nbsp; &nbsp; &nbsp; Enhanced Hair Locations &nbsp; &nbsp; &nbsp; Hair Removed  

