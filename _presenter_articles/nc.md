---
layout: people
title: Joshua Wijaya
cover: /assets/images/nc.png
profile:
  align: right
  image: nc.png
paper_title: Using Machine Learning to Predict Changes of a Nuclear-Cytoplasmic Ratio to Assess Potential Malignancy
youtube: https://www.youtube.com/embed/fnsOy_er35g
poster: nc.pdf
abstract: This research project explores the efficiency of using a machine-learning model to classify benign and malignant lung cells, which in turn is of use as high rates of lung cancer have been present as 1 in 16 males and 1 in 17 females seem to develop this cancer. Identifying malignant cells consists of taking samples of lung cells and creating whole slide images by scanning different areas of the retrieved cells. As malignancy of cells may be easily identified by researchers by looking at the nuclear-cytoplasmic ratios of cells, the sheer quantity of cells the researchers must work with is vast. Utilization of a machine-learning model can be used to diagnose all regions of malignancy from images provided to the model to decrease the amount of time necessary to identify regions of malignancy and potentially reduce the number of casualties by having information on exact locations of cells in a short duration.
summary: I created and trained a machine-learning model to be able to classify benign and malignant cancer cells. Although additional time will be needed to be able to identify such cells through their nuclear-cytoplasmic ratios, the model will be trained using over 10,000 images, and will undergo testing with an additional 3,000 images to ensure an effective model analysis of cells.
excerpt_title: Q&A
---
**Bios:** [Joshua Wijaya](https://jlevy44.github.io/levylab/people/HS_Joshua_Wijaya)

**Program Track:** Skills Development

**GitHub Username:**  

joshuawijaya29
*-Joshua Wijaya*


**What was your favorite seminar? Why?**  

My favorite seminar was at the end of June when we Christopher Sue presented on commercialization; I just found it interesting that the process to making things public was longer than I expected it to be, and it's possible that people or groups may have conflicts in the process.
*-Joshua Wijaya*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

A fulfilling opportunity of "deep learning" into computer science with a hint of biology to gain and learn more about a valuable skill.
*-Joshua Wijaya*

<h2>Blog Post</h2>
<br>
Abstract: This research project explores the efficiency of using a
machine-learning model to classify benign and malignant lung cells,
which in turn is of use as high rates of lung cancer have been present
as 1 in 16 males and 1 in 17 females seem to develop this cancer.
Identifying malignant cells consists of taking samples of lung cells and
creating whole slide images by scanning different areas of the retrieved
cells. As malignancy of cells may be easily identified by researchers by
looking at the nuclear-cytoplasmic ratios of cells, the sheer quantity
of cells the researchers must work with is vast. Utilization of a
machine-learning model can be used to diagnose all regions of malignancy
from images provided to the model to decrease the amount of time
necessary to identify regions of malignancy and potentially reduce the
number of casualties by having information on exact locations of cells
in a short duration.

Process: To create a model, images were first obtained from an online
source, Kaggle, which provided 15,000 images of lung cells, specifically
benign, adenocarcinoma, and squamous cell carcinoma cells where the
former of the three is the only non-cancerous cell. Although resizing
and editing the images to differentiate cells would have been helpful,
the sizing and clarity of the images allowed a conclusion that
annotation may not be necessary for this particular project. However, a
resizing did occur to shrink a 768x768 image to 256x256 pixels, while
also converting the images to RGB so the model can interpret the images.
To prepare the images for training and validation, the 80-20 rule was
followed for the data, in which 80% of images were used for training and
validation, while the remaining 20% were to be used for testing the
model to ensure accuracy. Setting up the training phase, 12,000 out of
the 15,000 images were randomly selected and placed into five different
folders in the training section to be used to train the model. Training
of a pre-built model is about to begin, but that is as far as I was able
to reach for the time given during the internship. The figures below
showcase the code written and the tasks performed by the code.

![](media/image1.png){width="7.242457349081365in"
height="8.07812554680665in"}

![](media/image2.png){width="6.5in" height="3.1944444444444446in"}
