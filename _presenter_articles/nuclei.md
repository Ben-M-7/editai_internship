---
layout: people
title: Ayaan Uddin
cover: /assets/images/nuclei.png
profile:
  align: right
  image: nuclei.png
paper_title: Nuclei Detection (using machine learning)
youtube: https://www.youtube.com/embed/oanJgSeUoRg
poster: nuclei.pdf
abstract: Nuclei segmentation is a critical step in the analysis of histopathological images, serving as a foundation for various diagnostic and research applications in cancer studies. Accurate segmentation of nuclei enables the precise analysis of cell and tissue structures, which is essential for understanding the progression of diseases like cancer. Traditional methods to segment nuclei often utilize manual annotation or semi-automated techniques. However, these techniques can be time-consuming, labor-intensive, expensive, and prone to error. To address these issue, the development of more advanced segmentation models is crucial. Current deep-learning models take up large amounts of space and are resource-intensive during training and predicting. This study aims to develop a machine-learning model that is not resource-intensive but can provide accurate and automatic segmentation of nuclei in histopathological images. The resulting segmentation can aid patient prognosis, morphological analysis, and other areas of histopathological research.
summary: Nuclei segmentation is a computer-based method that helps doctors and researchers automatically identify and analyze the control center of cells in tissue samples. This process is essential for diagnosing diseases like cancer and studying cell behavior. This study aims to automate this process without using resource-intensive artificial intelligence models that take up much processing power.
excerpt_title: Q&A
---
**Bios:** [Ayaan Uddin](https://jlevy44.github.io/levylab/people/HS_Ayaan_Uddin)

**Program Track:** Skills Development

**GitHub Username:**  

asuddin
*-Ayaan Uddin*


**What was your favorite seminar? Why?**  

My favorite seminar was the one with Jason Wei. I think it was cool to have someone from OpenAI talk to us because the company is so influential in AI.
*-Ayaan Uddin*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

My summer internship experience directed me toward a better future.
*-Ayaan Uddin*

<h2>Blog Post</h2>
<br>
**Introduction**
The detection and segmentation of nuclei creates the basis for many pathology image analysis. However, the manual process of segmenting nuclei is expensive and time-consuming. Creating a machine learning model can help pathologists save time and resources allowing for more time for personalized treatment.

Many machine learning models utilize deep learning that takes up lots of space and resources. As a result, our goal was to create a machine learning model that was not resource-intensive but could still give fast and accurate predictions.

**Methodology**
When we started coming up with solutions, some of the things we found and recommended were segmentation models like YOLOv8 and segmentation architecture like SegNet. As a larger group, we split up and pursued these solutions however we faced many errors and challenges in creating and training a model from scratch and unclear results and errors while training a pre-existing model. We decided to move away from more complex deep learning algorithms to more simple machine learning algorithms using computer vision, clustering algorithms, and threshold algorithms, to create 2 solutions.

**Computer Vision Method**
For the computer vision approach, the model uses preprocessed images of whole slide images (grayscaled and blurred to normalize most differences) and uses adaptive thresholding to single out any small clusters of pixels that have similar pixel intensities. Adaptive thresholding helps single out clusters of a certain size by comparing a pixel to its surroundings to determine if it is the foreground or background. The size of the nuclei varies between images, and without manually annotating each image, this method allows us to segment regions that have a different intensity than their surroundings and are not too large or small. The model then goes through and removes any lighter clusters and any extremely dark ones to segment the nuclei. The reason we only want to keep dark clusters and not anything else is because, throughout the data, whether the images were darker or lighter, the nuclei were consistently one of the darkest clusters in the image but not the darkest.

**K means Clustering**
Another way we were able to find results was by using K means clustering on our data. K means clustering groups values into clusters by reducing the difference within the clusters and maximizing the difference between clusters. We followed the hypothesis that many nuclei in a whole slide image were most likely to be some of the darkest pixels in the image. We tested this hypothesis by taking the pixels that were part of the darkest cluster. However, when we were able to look at the pixels it obtained, many dark, and often relatively large, spots weren't nuclei. We were able to filter out this undesirable data by creating code to assign groups of pixels that made up each object, whether it was a nucleus or something else. We then experimented with values that would only select the smaller nuclei by taking the sizes of the groups. We also found that linear fragments of cell membrane in an image could sometimes be identified as nuclei, as they were darker colored. We were able to mitigate these appearances by taking the standard deviation of each group and selecting only those with smaller values. This ended up returning mainly small, dark, objects that we considered nuclei.

**Accuracy**
To measure the accuracy of our computer vision method, we took our ground truth: bounding boxes from our data set around each nucleus in the whole slide images. We measured how much of our prediction overlapped with the image mask. By repeating this process across the entire data set, we were able to determine that this method had varying accuracy from 70% when nuclei were very small to 80% when nuclei were large and dark. We noticed that in cases where the accuracy was low or when the nuclei were tiny, the model was better at predicting where the nuclei were not rather than identifying them. One thing to keep in mind is that the data set also places cells not just nuclei in the image mask, so the mask is expected to contain things the predictions do not.

Measuring the accuracy of the k means method was done by using the same bounding boxes that were provided in the dataset we acquired. Though each bounding box seemed to cover a region that looked more like the boundaries of a cell, rather than the smaller, darker nuclei. Each bounding box was checked to see if a group was found in it, and that included group was marked as correct. If that condition was not satisfied, a false negative was reported. Though, due to the variation between the bounding boxes and nuclei, with multiple nuclei having the possibility to be in one bounding box, this measure was inaccurate.

Similarly, we checked each group to see if it was within a bounding box and that was also marked. If a group was not contained within a bounding box, it was marked as a false positive. This ended up giving us an accuracy of about 40%, with an AUC score of about 0.5. Seemingly, the model seemed to predict with a better accuracy when comparing. Moreover, many predicted nuclei lay just outside the bounding box, giving us more false positives. Again, this low accuracy was most likely due to the difference between the ground truth and model prediction.

**Reflection**
Some things that we found that didn't work that well for us was the use of deep learning models whether training a pre-existing model or making one from scratch. The main reason for this is that we tried to use complex algorithms without having a mastery of the fundamentals of machine learning. Because of this the switch to more basic methods was very beneficial and was what worked the best. We were able to gain a deeper understanding of machine learning algorithms. Overall, the models we have created do a good job of identifying large and dark nuclei which is an ideal image. More work can and should be done in the future so that they can identify smaller nuclei and nuclei in lighter regions as well. For this, a one-size-fits-all approach like the computer vision model will not work and must be refined by either creating multiple smaller models and combining all the results, or by using an approach that recognizes that the nuclei do not always look the same an example being deep learning models using annotated training data.

Here is an example of what the computer vision process looks like on a specific training example We can see that a lot of the missed areas are lighter regions with smaller nuclei. Total Accuracy: 78.5%

**Ground Truth (Red)**

**Model Predictions (Green)**

**Overlapping area (Blue)**

This is an example of the k-means method on another example.

**Original Image**

**Ground Truth**

**Prediction**

**Prediction, with ground truth overlayed**