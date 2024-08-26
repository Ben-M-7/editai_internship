---
layout: people
title: Afya Shaikh
cover: /assets/images/nuclei_v2.png
profile:
  align: right
  image: nuclei_v2.png
paper_title: Nuclei Detection With Histopathological Images Through Machine Learning
youtube: https://www.youtube.com/embed/jfeXoGWtRp8
poster: nuclei_v2.pdf
abstract: Early and accurate cancer detection is vital for effective treatment and improved patient outcomes. In particular, skin cancers can be highly aggressive and spread quickly, making swift diagnoses crucial. Traditional histopathological methods for identifying cancerous cells can be time-consuming and prone to errors, adversely affecting patient care. This research aims to enhance the efficiency and accuracy of cancer detection through a machine-learning model that uses histopathological images. Skin cancers often involve abnormal cell nuclei that appear larger and darker due to excessive DNA. Detecting these changes early is challenging, as cancer cells may develop deep within tissues and standard diagnostic methods can be slow and error-prone. I created a machine-learning model to automate the detection of cancerous cells in histopathological images. The dataset includes 30 digitized Hematoxylin and Eosin (H&E)-stained frozen sections from ten different human organs, sourced from The Cancer Genome Atlas (TCGA). These sections cover a variety of tissue types and staining conditions, providing a comprehensive basis for training and validating the algorithm. The dataset includes over 8,000 annotated nuclei and various segmentation masks to support the development of the model. The machine learning model demonstrated significant improvements in detecting cancerous nuclei compared to traditional methods. By leveraging advanced segmentation techniques, the model increased the accuracy and speed of identifying cancerous cells in histopathological images. Automating nuclei detection with machine learning reduces the time required for analysis and minimizes the risk of errors in identifying these cancerous cells. This can lead to more precise surgical planning and better patient outcomes by facilitating early detection and accurate diagnosis. Applying machine learning to nuclei detection in histopathological images represents a promising advancement in cancer diagnostics. The improved efficiency and accuracy provided by this model can significantly enhance the detection and treatment planning for skin cancers, ultimately benefiting patient care and outcomes. 
summary: Cancerous skin tissue poses a severe threat to the body and traditional methods to detect these cancerous cells can be slow and error-prone, which can delay diagnosis and treatment. This summer I developed a machine-learning model that can rapidly and accurately identify cancerous nuclei in histopathological images,  which demonstrates how advanced algorithms can be effectively integrated into healthcare.
excerpt_title: Q&A
---
**Bios:** [Afya Shaikh](https://jlevy44.github.io/levylab/people/HS_Afya_Shaikh)

**Program Track:** Skills Development

**GitHub Username:**  

AfyaS
*-Afya Shaikh*


**What was your favorite seminar? Why?**  

My favorite seminar was definitely Louis Vaickus's series. His introductions to pathology and machine learning were so insightful and inspiring, giving me a great sense of what to expect this summer. I felt excited and prepared for what was ahead thanks to his engaging presentations.
*-Afya Shaikh*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

This internship was a supportive and inspiring experience, as it allowed me to create a project I was passionate about while receiving guidance and motivation, and learning many new topics and ideas throughout it all.
*-Afya Shaikh*

<h2>Blog Post</h2>
<br>
**Is it possible to create a machine-learning model that can detect
cancerous nuclei in tissue images?**
>
By: Afya Shaikh - EDIT ML 2024
>
**Understanding the Problem**
>
Cancerous skin tissue is a serious concern, characterized by cells
that grow\
uncontrollably and can invade other parts of the body. This
uncontrolled growth disrupts normal skin functions and can lead to
severe health issues if not detected early.
>
Traditional methods of detecting these cancerous cells---like light
microscopy and histopathology---are great methods but they come with
notable limitations. These methods can be slow, prone to errors, and
might delay diagnosis and treatment, allowing the cancer to progress
unchecked.
>
**Why I Took on This Challenge**
>
Recognizing the urgency of improving cancer detection, I decided to
develop this project this summer with a clear goal: to develop a
faster, more accurate method for spotting cancerous nuclei in
histopathological images. Traditional methods, while valuable, have
their flaws, and I aimed to address these by using the power of
machine learning.
>
**The Solution: Machine Learning Magic**
>
To tackle the problem, I created a machine-learning model designed to
identify cancerous nuclei in tissue images. Unlike traditional
methods, this model leverages the power of algorithms to analyze large
amounts of data quickly and with high precision.
>
Here's how I approached it:
>
1\. Data Collection and Preparation: I used a dataset from Kaggle,
featuring H&E-stained tissue samples from The Cancer Genome Atlas
(TCGA). This dataset included over 8,000 annotated nuclei and
segmentation masks. I standardized these images to a uniform size and
normalized the pixel values to ensure consistent and accurate
training.
>
2\. Training the Model: I built and trained the model using Jupyter
Notebook, employing a U-Net architecture with a ResNet18 encoder. This
setup is renowned for its effectiveness in image segmentation tasks.
The model was rigorously evaluated using precision, recall, and
accuracy metrics to ensure reliable performance.
>
3\. Enhancements: To improve the model's learning, I divided each
image into smaller patches, allowing the model to learn from various
regions and reducing
>
bias. I also split the dataset into training and validation sets to
ensure robust evaluation.
>
**What I Discovered**
>
The results were promising! The model achieved an impressive accuracy
rate of around 95% in detecting cancerous nuclei. Moreover, its
processing speed was notably efficient, allowing for rapid analysis of
images. These results suggest that machine learning could
significantly enhance cancer detection by providing quicker and more
accurate diagnoses.

![](media/image1.png){width="6.5in" height="2.3027777777777776in"}

Figure 1. The machine learning models precision, recall, F1-score, and
accuracy of nuclei detection.
>
**Learning Curves**
>
Taking on this project was both a personal and technical challenge.
While navigating through the complexities and occasional frustrations,
the journey proved incredibly rewarding. One of the significant
hurdles was dealing with limitations in the dataset. Ideally, a larger
and more diverse dataset would enable the creation of an even more
advanced and accurate model.
>
I also faced difficulties in ensuring that my model could effectively
interpret the images.
>
Initially, resizing the images led to substantial losses, impacting
the model's performance. However, these learning curves are an
inherent part of the process.
>
Figure 2. The machine learning models low-accuracy images of nuclei
detection.![](media/image3.png){width="12.991666666666667in"
height="6.156182195975503in"}
>
Through trial and error, I discovered that dividing the images into
smaller quarters significantly improved the model's ability to learn
from various regions of the tissue. This adjustment was a pivotal
moment, highlighting the importance of perseverance and adaptability
in overcoming technical challenges.

![](media/image2.png){width="6.5in" height="2.073611111111111in"}

Figure 3. The machine learning models high-accuracy images of nuclei
detection.
>
**What's Next?**
>
Despite the success, there's still work to be done. Future steps
include expanding the dataset to cover more diverse tissue types,
optimizing the model for even faster performance, and fine-tuning its
parameters for improved accuracy. Additionally, comparing this model
with others in the field will help refine and enhance its\
effectiveness.
