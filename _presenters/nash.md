---
layout: people
title: Luqmaan Shaikh
cover: /assets/images/nash.png
profile:
  align: right
  image: nash.png
paper_title: Enhanced NASH Fibrosis Staging-  Virtual Staining and Deep Ordinal Regression
youtube: https://www.youtube.com/embed/UASsSdgTgmw
poster: nash.pdf
abstract: The NASH Fibrosis Staging- Virtual Staining and Deep Ordinal Regression project aims to revolutionize the common assessment of liver fibrosis by integrating advanced digital image analysis with clinical serology data. This project focuses on the application of virtual staining techniques and deep ordinal regression models to precisely quantify fibrotic scarring and identify key biomarkers associated with non-alcoholic steatohepatitis (NASH) progression. By offering a more accurate and detailed staging of fibrosis, the project enhances the early detection and classification of chronic liver diseases, which are often marked by fibrosis. The predictive model developed  will facilitate early diagnosis and intervention, ultimately improving patient outcomes. Given that liver diseases account for over 2 million deaths globally each year, according to the World Health Organization (WHO), this project addresses a critical need for more effective and timely approaches in liver disease management.
summary: Our project, Enhanced NASH Fibrosis Staging, uses cutting-edge technology to improve the detection and understanding of liver scarring caused by chronic diseases like non-alcoholic steatohepatitis (NASH). By analyzing liver tissue images and medical data, we aim to identify early signs of liver damage, helping doctors diagnose and treat patients more effectively before the disease progresses.
excerpt_title: Q&A
---
**Bios:** [Luqmaan Shaikh ](https://jlevy44.github.io/editai_internship/people/HS_Luqmaan_Shaikh)

**Program Track:** Skills Development

**GitHub Username:**  




**What was your favorite seminar? Why?**  




**If you were to summarize your summer internship experience in one sentence, what would it be?**  



<h2>Blog Post</h2>
<br>
**Abstract:**

The NASH Fibrosis Staging: Virtual Staining and Deep Ordinal Regression
project aims to revolutionize the common assessment of liver fibrosis by
integrating advanced digital image analysis with clinical serology data.
This project focuses on the application of virtual staining techniques
and deep ordinal regression models to precisely quantify fibrotic
scarring and identify key biomarkers associated with non-alcoholic
steatohepatitis (NASH) progression. By offering a more accurate and
detailed staging of fibrosis, the project enhances the early detection
and classification of chronic liver diseases, which are often marked by
fibrosis. The predictive model developed will facilitate early diagnosis
and intervention, ultimately improving patient outcomes. Given that
liver diseases account for over 2 million deaths globally each year,
according to the World Health Organization (WHO), this project addresses
a critical need for more effective and timely approaches to liver
disease management.

**Methods:**

To develop the predictive model, whole slide images (WSI) of liver
fibrosis were obtained from Dartmouth Health and meticulously labeled by
pathologists. Given the extensive size of these images, they were
divided into smaller patches for more manageable processing. The first
step involved distinguishing liver tissue from the background by
applying an RGB filter, which allowed for the separation of the
relatively white background from the liver tissue, setting the
background to pure white for easy identification. This was essentially
to create virtual images for training, although we were also given
labeled WSI images for training as well.

An Ordinal Regression Graph Convolutional Network (GCN) model was then
trained, though at this stage, it did not yet incorporate serology data.
The model\'s accuracy in classifying fibrosis stages was limited, likely
due to the absence of serology data, the variability in whole slide
images, and occasional disagreements in pathology classifications.
Despite these challenges, the model continued to train based on epoch
data graphs.

The project reached this developmental stage within the given timeframe.
Future steps include Optimizing and refining the GCN model architecture.
Integrating serology data more effectively with imaging data,
Incorporating statistical analysis of pathologist discrepancies to
improve model accuracy, and Exploring additional deep learning
architectures and advanced techniques

While significant progress was made, further work is needed to achieve
the project\'s ultimate goal of creating a reliable model for predicting
liver fibrosis presence and severity.

**Conclusion:**

Our initial efforts to use a (GCN) for staging liver fibrosis in NASH
patients show promise, particularly in identifying broader trends within
the data. However, the model currently struggles with accurately
distinguishing intermediate fibrosis stages, as evident from our
results. These challenges highlight the need for further optimization
and development. By addressing these areas, we aim to develop a more
robust and reliable model for NASH fibrosis staging, ultimately
improving diagnostic accuracy and patient outcomes in liver disease
care. It was challenging, interesting, and fun to use machine learning
algorithms and learn about their effects on pathology as part of my
first real research experience, which I believe turned out to be an
enriching and beneficial experience.
