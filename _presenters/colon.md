---
layout: people
title: Scott Chen & Arav Srivastava
cover: /assets/images/colon.jpg
profile:
  align: right
  image: colon.jpg
paper_title: Using Machine Learning to Predict Colon Cancer Tumors 
youtube: https://www.youtube.com/embed/zMDhgpm_-98
poster: colon.pdf
abstract: Today, Colon cancer is one of the leading causes of cancer-related death, with approximately 1.9 million cases in the year 2022, 930,000 being deaths. Early detection and proper diagnosis play very important roles in improving patient outcome and survival rate. However, the diagnostic procedure falls heavily on the manual interpretation of Whole Slide Images (WSI) by pathologists,which can be very time-consuming. The main goal of this project is oriented toward developing a machine learning model which integrates Convolutional Neural Networks (CNN) with Graph Neural Networks (GNN) for the prediction of colon cancer tumor outcomes from Whole Slide Images. The proposed models use the application of The CNN arctitecture, ResNet50, to extract features from the Whole Slide Images, the derived features are submitted to a GNN workflow to further refine predictions based on the structual relationships of detected features. The combination of the two techniques helps improve accuracy and stability in the detection of tumors, which ultimately aims to provide a reliable colon cancer diagnosis tool to assist pathologists. This, in turn, settles more emphasis on researching how to streamline the analysis of WSIs to reduce the workload on pathologists, scale up to accommodate large data sets, and increase diagnostic consistency. The application of this project could significantly contribute to the early detection and treatment of colon cancer, ultimately improving patient outcomes. 
summary: Our project uses advanced computer algorithms to help doctors detect colon tumors more accurately and quickly. By analyzing medical images with machine learning, we're improving the chances of finding and treating colon cancer. 
excerpt_title: Q&A
---
**Bios:** [Scott Chen](https://jlevy44.github.io/levylab/people/HS_Scott_Chen),[Arav Srivastava](https://jlevy44.github.io/levylab/people/HS_Arav_Srivastava)

**Program Track:** Skills Development

**GitHub Username:**  

scottchen7
*-Scott Chen*

UnSospiro123lol
*-Arav Srivastava*


**What was your favorite seminar? Why?**  

I found Jason Wei's seminar on Large language models very interesting as it was very in depth and engaging. 
*-Scott Chen*

My favorite seminar was the one of Aruesha Srivastava as I think that metals are important and interesting to future cancer research. Also Aruesha’s project was and is the reason that I wanted to be a part of this wonderful lab.
*-Arav Srivastava*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

An internship that allows you to work and learn at your own pace, while working with many amazing mentors and fellow students. 
*-Scott Chen*

It was all in all a new experience and a nice introduction to the world of machine learning.
*-Arav Srivastava*

<h2>Blog Post</h2>
<br>
Using Machine Learning to Predict Colon Cancer
>
Scott Chen and Arav Srivastava
>
**Introduction**
>
Colorectal cancer is one of the most common and lethal cancers
globally, with 1.9 million new cases in world countries (932,500
deaths) this year. Timely detection and correct diagnosis are critical
in saving lives of patients. Up to now, colorectal cancer
classification depended largely on pathologists manually interpreting
Whole Slide Images (WSIs). This method although successful, is very
time consuming carries the risk of human error. To meet these
challenges, we leverage machine learning using Convolutional Neural
Networks (CNNs) asnd Graph Neural Network to build a model that allows
us to predict colons cancer tumors accurately from whole-slide images.
>
**Methods**
>
Data Collection: The project used Whole Slide Images (WSIs) from
Dartmouth Hitchcock Medical Center. The high-resolution photos give a
view of every tissue as something like the input for training a
machine learning model.
>
Model Architecture: The authors use CNN and GNN which are the most
powerful machine learning techniques. First, we used (ResNet-50)
architecture in CNN part to generate feature maps from WSIs. The model
is ResNet-50, famous for its very deep layers and residual learning
framework that enables the capturing of complex patterns in image
data. Next, implement a basic GNN processing workflow to examine
structual relationships.
>
Model training: This is a supervised learning task and the model was
trained with labeled WSIs. To increase the accuracy and stability of
our model over multiple training iterations. We refined the feature
extractor of the CNN and optimised how these features are interpreted
by the GNN to be relevant.
>
Model Testing and Performance Metrics: The final model was tested for
performance using separate WSI sets which the model has not seen
before during training. The primary performance measure was accuracy
with a goal of achieving 80% or higher.
>
**Results**
>
The CNN-GNN model achieved powerful performance on the tumor detection
in colon cancer WSIs only. Accuracy of model was \>80% and
demonstrated the potential for use as an accurate diagnostic tool.
Here, especially the forming of GNN-CNN was quite effective and
allowed to represent models with accurate predictions. Additionally,
The processing time as well was within reasonable ranges, indicating
strong potential for real-world clinical applications of this model.
>
**Conclusion and Discussion**
>
The successful development of a machine learning model that integrates
CNNs and GNNs to predict colon cancer tumors from WSIs marks a
significant step forward. In addition to\
increasing the accuracy of tumor identification, this method is a
simplified diagnosis process that lightens pathologists\' workload and
provides consistency. However, there are a number of challenges that
still need to be overcome. Performance of the model is largely
influenced by the quality and variation within training data.
Therefore, to increase the accuracy and\
generalizability of our method we need even bigger dataset with more
variety. Furthermore, the danger of making false predictions
underscores how important it is that these models are continually
tuned and tested with real-world data.
