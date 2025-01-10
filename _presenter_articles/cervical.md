---
layout: people
title: Raymond Gao & Omolara Dawson
cover: /assets/images/cervical.png
profile:
  align: right
  image: cervical.png
paper_title: Using machine learning to classify if squamous cells are normal or atypical
youtube: https://www.youtube.com/embed/bsuDbmJdTnk
poster: cervical.pdf
abstract: This project involves using machine learning to classify squamous cells, which are crucial for diagnosing skin and mucous membrane conditions. We collected a dataset of annotated whole slide images. This data was then used to train our machine learning model on a discovery platform. We utilized advanced algorithms to create a model capable of accurately distinguishing between normal and abnormal squamous cells. The model is intended to aid pathologists by providing quick and precise classifications of cell images. Future plans include expanding the dataset, enhancing the model's accuracy, and integrating the tool into clinical settings to improve diagnostic efficiency and patient care. 
summary: This project uses machine learning to classify squamous cells from cervical cancer samples, helping to quickly and accurately identify normal versus abnormal cells. By training a model on annotated cell images, we aim to improve diagnostic efficiency and support better patient care in detecting cervical cancer.
excerpt_title: Q&A
---
**Bios:** [Raymond Gao](https://jlevy44.github.io/editai_internship/people/HS_Raymond_Gao),[Omolara Dawson](https://jlevy44.github.io/editai_internship/people/HS_Omolara_Dawson)

**Program Track:** Skills Development

**GitHub Username:**  

RaymondG248
*-Raymond Gao*

Laradawson07
*-Omolara Dawson*


**What was your favorite seminar? Why?**  

My favorite seminar was when Jason Wei because he talked about a path of Ai that I didn't had the opportunity to learn about. When listening to his past experience it gave me a deeper insight into the field.
*-Raymond Gao*

Louis Vaickus Even though it was earlier on in the summer and I don’t quite remember everything from it I do remember his name and how enlighted I felt after the talk. 
*-Omolara Dawson*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

The internship experience was hard at the beginning but at the end it's rewarding.
*-Raymond Gao*

Made a lot of mistakes, but I've come so far that it was worth it, and I'm forever grateful. 
*-Omolara Dawson*

<h2>Blog Post</h2>
<br>
**Team 8**

**Skills Development Track**

**Using machine learning to classify squamous cells**

How can we utilize machine learning to differentiate squamous cells from
cervical cancer samples, distinguishing normal from abnormal cells, and
how could this enhance diagnostic efficiency and patient care?

**By: Omolara Dawson and Raymond Gao**

**Introduction**

Cervical cancer remains a primary global health concern, with squamous
cell carcinoma (SCC) being the most prevalent form among cervical cancer
cases. Early and accurate diagnosis is crucial for effective treatment
and improving patient outcomes. Traditionally, the diagnosis of cervical
cancer involves pathologists manually examining cell samples obtained
from biopsies. This process is labor-intensive and highly dependent on
the pathologist\'s experience and expertise, which can lead to
variability and potential delays in diagnosis.

The limitations of manual analysis highlight the need for more efficient
and reliable diagnostic tools. Advances in machine learning offer
promising solutions by automating complex tasks and reducing human
error. Machine learning algorithms have demonstrated their potential in
various medical imaging applications, including the classification of
cancerous tissues. These algorithms can learn to identify patterns and
features in images that may be challenging for the human eye to detect,
leading to more consistent and accurate results.

Our project aims to address these challenges by applying machine
learning techniques to classify squamous cells in cervical cancer
samples. We have developed a comprehensive dataset of annotated whole
slide images, where we have marked the key characteristics of the cells.
This annotated data serves as a training ground for our machine learning
model, which is designed to differentiate between normal and abnormal
squamous cells with high precision.

By training our model on this dataset, we seek to enhance the diagnostic
process, providing pathologists with a tool that can quickly and
accurately classify cell images. This automation is expected to reduce
the time required for diagnosis, minimize variability, and support more
reliable detection of cervical cancer. Ultimately, our goal is to
integrate this machine learning tool into clinical practice, improving
diagnostic efficiency and contributing to better patient care.

The successful implementation of this project could lead to significant
advancements in the way cervical cancer is diagnosed and managed,
potentially setting a new standard for accuracy and efficiency in
medical diagnostics.

*some examples of normal and abnormal squamous cells*

![](media/image2.jpg){width="1.27in" height="1.2051093613298338in"}

*Normal*

![](media/image3.jpg){width="0.9693252405949256in"
height="1.3251531058617674in"}

*Normal*

![](media/image1.jpg){width="2.2in" height="1.1838090551181102in"}

*abnormal*

**Methods**

1\. Annotated Image Dataset:

\- Whole Slide Images (WSIs): High-resolution images of cervical cell
samples, annotated by experts, serve as the primary data for training.
Ensure the dataset includes a diverse range of normal and abnormal cells
for effective model learning.

\- \*\*Annotation Tools:\*\* Use tools like QuPath to annotate images
with detailed labels, including cell boundaries and classifications.

2\. Machine Learning Frameworks:

\- TensorFlow, PyTorch, Sciki-Learn:These popular frameworks provide
libraries and tools for building, training, and evaluating machine
learning models, particularly deep learning models.

3\. Computational Resources:

\- Graphics Processing Units (GPUs): Utilize GPUs to accelerate the
training process, especially for large datasets and complex models.

**Discussion**

Despite these advantages, there are challenges to consider. The quality
and representativeness of the annotated dataset are crucial for the
model's performance. Ensuring that the dataset includes a diverse range
of samples and accurately reflects the variability in squamous cell
appearances is essential for developing a robust model. Furthermore,
integrating the model into clinical workflows requires careful
consideration of user interface design and clinical validation to ensure
that it complements existing diagnostic practices effectively. Future
work will focus on expanding the dataset to include more diverse
samples, refining the model to improve its accuracy and
generalizability, and exploring ways to integrate the tool seamlessly
into clinical practice. Continued research and development in this area
promise to advance cervical cancer diagnosis further and potentially
extend the benefits of machine learning to other areas of medical
imaging and diagnostics.

\*\*What We Learned:\*\*

1\. \*\*Annotating Squamous Cells with QuPath:\*\*

We learned how to use QuPath, an open-source software, to efficiently
annotate squamous cells in whole slide images. This involved
familiarizing ourselves with QuPath's tools for segmenting and labeling
cell structures, which was crucial for creating a high-quality dataset
for training our machine learning model.

2\. \*\* Machine Learning:\*\*

We acquired practical experience in using machine learning algorithms
for classifying medical images. This involved understanding the
processes of data preprocessing, model training, and evaluation, which
enabled us to develop a model capable of distinguishing between normal
and abnormal squamous cells.

\*\*Conclusion:\*\*

In this project, our objective was to utilize machine learning to
enhance the classification of squamous cells from cervical cancer
samples. We employed QuPath for precise annotation and advanced machine
learning techniques to develop a model capable of accurately
distinguishing between normal and abnormal cells. This approach holds
the potential to improve diagnostic accuracy and aid pathologists in
providing reliable and timely diagnoses. Despite our advancements in
annotating images and building the model, time constraints prevented us
from fully realizing the project\'s potential. We faced challenges in
refining the model and conducting comprehensive testing, leading to the
model not achieving the expected level of performance.Our future work
will center on addressing these limitations by expanding the dataset,
further optimizing the model, and integrating it into clinical
workflows. These steps are vital for maximizing the impact of our
approach and advancing the field of medical imaging and diagnosis.

Result

We learned how to manually annotate squamous cells and were able to
distinguish between normal and abnormal squamous cells. Due to a limited
amount of time, we were unable to complete certain tasks involving
machine learning. The future we plan to complete the remaining steps we
were unable to complete.
