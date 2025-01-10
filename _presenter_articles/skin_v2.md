---
layout: people
title: Ewan Ward
cover: /assets/images/skin_v2.jpg
profile:
  align: right
  image: skin_v2.jpg
paper_title: Preprocessing of Skin Cancer Whole Slide Images to Predict Five-Year Survival 
youtube: https://www.youtube.com/embed/kwjdN_9e69U
poster: skin_v2.pdf
abstract: The purpose of this project was to develop a method for preprocessing Whole Slide Images (WSI) of skin cancer samples for us in training a Graph Convolutional Network (GCN) to predict 5-year survival based on features found in each image. In order to prepare the data for use in a machine learning model, several steps were carried out. First, whole slide images from The Cancer Genome Atlas (TCGA) were acquired, along with additional data about each slide. Each record was assessed to determine whether the slide represented a patient who had survived for 5 years, or had a death date within 5 years of the date when the sample was taken. Each slide was then assigned a binary label for “survived” or “not survived.” Next each WSI was divided into tiles made up of small segments of the original image. More than 24,000 tiles were created from each of 40 selected WSI. The tiles were then evaluated by the code to discard any slides that consisted of primarily white space. The remaining tiles were labeled as “survived” or “not survived” and randomly assigned to training, validation, and testing sets. The next step in the process involved extracting key features based on Haralick features (contrast and energy) and RGB color. Finally graphs were constructed where each tile represents a node and edges are defined by the proximity of each tile to its neighbors. The project did not build or train a GCN, which would be the next step in the process. 
summary: This project preprocessed whole slide images of skin cancer tissue samples for use in a graph convolutional network (GCN). While a GCN was not developed as part of this project, the objective of the GCN would be to use key features from the slide images to predict 5-year survival.
excerpt_title: Q&A
---
**Bios:** [Ewan Ward](https://jlevy44.github.io/editai_internship/people/HS_Ewan_Ward)

**Program Track:** Skills Development

**GitHub Username:**  

madscience1221
*-Ewan Ward*


**What was your favorite seminar? Why?**  

My favorite seminar was with Dr. Urbanowicz. I enjoyed his presentation, not just for being informative, but I found that I had a great deal in common with him, from a passion for music to working as an EMT. It showed me that there are many paths to find your place in the field, whether that is where you intended to end up or not.
*-Ewan Ward*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

This was an exciting, intense learning experience that opened my eyes to a whole range of possibilities about what can be done in AI and healthcare.
*-Ewan Ward*

<h2>Blog Post</h2>
<br>
**Preprocessing of Skin Cancer Whole Slide Images to Predict Five-Year
Survival**

**Ewan Ward**

EDIT AI Internship 2024

Skills Track

End of Summer Blog Post

August 17, 2024

**Summary**

This project preprocessed whole slide images of skin cancer tissue
samples for use in a graph convolutional network (GCN). While a GCN was
not developed as part of this project, the objective of the GCN would be
to use key features from the slide images to predict 5-year survival.

**Abstract**

The purpose of this project was to develop a method for preprocessing
Whole Slide Images (WSI) of skin cancer samples for us in training a
Graph Convolutional Network (GCN) to predict 5-year survival based on
features found in each image. In order to prepare the data for use in a
machine learning model, several steps were carried out. First, whole
slide images from The Cancer Genome Atlas (TCGA) were acquired, along
with additional data about each slide. Each record was assessed to
determine whether the slide represented a patient who had survived for 5
years, or had a death date within 5 years of the date when the sample
was taken. Each slide was then assigned a binary label for "survived" or
"not survived." Next each WSI was divided into tiles made up of small
segments of the original image. More than 24,000 tiles were created from
each of 40 selected WSI. The tiles were then evaluated by the code to
discard any slides that consisted of primarily white space. The
remaining tiles were labeled as "survived" or "not survived" and
randomly assigned to training, validation, and testing sets. The next
step in the process involved extracting key features based on Haralick
features (contrast and energy) and RGB color. Finally graphs were
constructed where each tile represents a node and edges are defined by
the proximity of each tile to its neighbors. The project did not build
or train a GCN, which would be the next step in the process.

**Introduction**

The Centers for Disease Control (CDC) reports that approximately 6
million people in the United States are diagnosed with skin cancer each
year (CDC, 2024). Deaths from skin cancer range from 10,000 to 20,000
per year, according to the American Cancer Society (ACS, 2024). However,
according to the CDC, the 5-year survival rate for melanoma (the most
aggressive and lethal form of skin cancer) is 94% if detected early. The
recent availability of extremely high-resolution digital images of
histopathological slides has made it possible to analyze these samples
rapidly and consistently using machine learning models
(Mosquera-Zamudio, et al. 2023). One type of machine learning model that
can be applied to these whole slide images (WSI) is called a Graph
Convolutional Network (GCN). In a GCN, images are converted into graphs
based on features of the image and the spatial relationships between
features (Levy, Barwick, Christensen, & Vaickus, 2021). In order for the
GCN to analyze the WSI, several steps must be executed to convert the
image into graphs. The steps involve tiling, feature extraction, graph
construction, and splitting. Tiling involves breaking the tiles into
smaller images. These steps, and how they were executed for the current
project, are described in more detail throughout this paper.

**Methods**

As noted above, there are several components to the preprocessing
methods used for preparing whole slide images for use in a machine
learning model. In this section, each step is explained in more detail,
along with more specific details about how those steps were carried out
in this project.

**Tiling and Assignment to Subsets**

Since the WSI are high-resolution files composed of several gigabytes of
data, the tiling process splits the overall image into thousands of
smaller images, or tiles. A total of 40 WSI were selected from a set of
more than 450 slides from The Cancer Genome Atlas. A total of
approximately 24,000 tiles were generated from each slide. These tiles
were then assessed to determine if they meet specific criteria for
inclusion in the analysis. For example, tiles consisting of mostly white
space may be discarded by applying a threshold value for the average
pixel color. Once the average pixel values were calculated, they were
normalized on a scale of 0 (black) to 1 (white). All tiles with an
average value of 0.8 or higher were discarded as consisting of mostly
white space. In future iterations of the project, this value could be
modified to optimize the production of tiles from regions of interest.
In the case of the current project, each tile was also assigned a label
to identify whether the tile came from a slide representing a patient
who had survived for 5 years or who did not survive. Finally, tiles were
randomly assigned to directories for training, validation, and testing
of the GCN. The split of the data was set at 70% training, 20%
validation, 10% testing. These values could also be modified for future
iterations of the project.

**Feature Extraction**

There are many types of features that can be extracted from an image for
analysis. For this project, the features were limited to a simple set of
two Haralick features (contrast and energy) and a color histogram. The
Haralick features measure the texture of the image in two ways. First,
contrast measures the difference in intensity between neighboring
pixels, while energy measures the overall variance of the image
intensity (Brynoldsson, et al., 2017). A color histogram measures the
overall distribution of colors in the image. The Haralick features and
color histogram are combined for each tile to represent that tile in the
graph construction that represents the next and final step in the
process for this project.

**Graph Construction**

A graph is a representation of individual tiles, as nodes, and their
relationships to their neighboring tiles, as edges (Levy, et al., 2021).
By analyzing these relationships across tiles in a whole slide image, a
GCN builds a model of key features and relationships to make
predictions. In the case of the current project, the goal of the GCN
would be to accurately predict the 5-year survival of the patient based
on the WSI of their sample. In order to generate the graphs, the code
analyzes the features extracted in the previous steps, along with the
spatial relationships between individual tiles in the WSI.

**What I Learned**

My initial proposal for this summer project was to build, train, and
test a graph convolutional network (GCN) that would predict recurrence
of skin cancers based on whole slide images. Once it became clear that
the data required to carry out such an analysis would not be readily
accessible, I modified my project to predicting 5-year survival. Given
my relatively limited experience with coding in Python, high performance
computing, and machine learning, this turned out to be an overly
ambitious goal for a short summer timeline (although I hope to reach
that goal in the future). After facing and overcoming several
challenges, from learning to install and access Discovery, Python, and
Jupyter to acquiring the necessary data to working through multiple
failed iterations of preprocessing techniques, I am satisfied that I was
able to complete the preprocessing of 40 whole slide images, which could
now be used to train a future GCN. I learned how to search for code on
GitHub, look for key components of code that I could use or modify for
my own project, and troubleshoot the code when it did not execute
correctly. This was also my first experience with submitting jobs to a
shared high performance computing resource, which was another learning
opportunity for me. I have a deep appreciation for the work and skills
required to build these types of systems, as well as a curiosity to
explore other areas in which machine learning could be applied in
medicine.

I received consistent and invaluable help from Dr. Levy, my team
mentors, and other experienced members of the EDIT-AI lab. The Friday
lecture sessions were also extremely interesting. One of my favorite
sessions was an early presentation by Dr. Urbanowicz. I enjoyed his
presentation, not just for being informative, but I found that I had a
great deal in common with him, from a passion for music to working as an
EMT. It showed me that there are many paths to find your place in the
field, whether that is where you intended to end up or not.

**References**

**These are some of the articles that I found and reviewed for
information on my project. I did not cite all of these articles in my
blog post, but each of these articles contributed to my learning this
summer.**

Azher, Z. L., Suvarna, A., Chen, J. Q., Zhang, Z., Christensen, B. C.,
Salas, L. A., Vaickus, L. J., & Levy, J. J. (2023). Assessment of
emerging pretraining strategies in interpretable multimodal deep
learning for cancer prognostication. *BioData Mining*, *16*(1).
https://doi.org/10.1186/s13040-023-00338-w

Berman, A. G., Orchard, W. R., Gehrung, M., & Markowetz, F. (2023).
SliDL: A toolbox for processing whole-slide images in deep learning.
*PLoS ONE*, *18*(8 August). https://doi.org/10.1371/journal.pone.0289499

Brynolfsson, P., Nilsson, D., Torheim, T., Asklund, T., Karlsson, C. T.,
Trygg, J., Nyholm, T., & Garpebring, A. (2017). Haralick texture
features from apparent diffusion coefficient (ADC) MRI images depend on
imaging and pre-processing parameters. *Scientific Reports*, *7*(1).
https://doi.org/10.1038/s41598-017-04151-4

Chen, C. L., Chen, C. C., Yu, W. H., Chen, S. H., Chang, Y. C., Hsu, T.
I., Hsiao, M., Yeh, C. Y., & Chen, C. Y. (2021). An annotation-free
whole-slide training approach to pathological classification of lung
cancer types using deep learning. *Nature Communications*, *12*(1).
https://doi.org/10.1038/s41467-021-21467-y

Dimitriou, N., Arandjelović, O., & Caie, P. D. (2019). Deep Learning for
Whole Slide Image Analysis: An Overview. In *Frontiers in Medicine*
(Vol. 6). Frontiers Media S.A. https://doi.org/10.3389/fmed.2019.00264

Levy, J., Haudenschild, C., Barwick, C., Christensen, B., & Vaickus, L.
(2021). Topological Feature Extraction and Visualization of Whole Slide
Images using Graph Neural Networks the Creative Commons Attribution
Non-Commercial (CC BY-NC) 4.0 License. HHS Public Access. In *Pac Symp
Biocomput* (Vol. 26). https://github.com/jlevy44/WSI-GTFE

Levy, J. J., Davis, M. J., Chacko, R. S., Davis, M. J., Fu, L. J., Goel,
T., Pamal, A., Nafi, I., Angirekula, A., Suvarna, A., Vempati, R.,
Christensen, B. C., Hayden, M. S., Vaickus, L. J., & LeBoeuf, M. R.
(2024). Intraoperative margin assessment for basal cell carcinoma with
deep learning and histologic tumor mapping to surgical site. *Npj
Precision Oncology*, *8*(1). https://doi.org/10.1038/s41698-023-00477-7

Li, J., Chen, Y., Chu, H., Sun, Q., Guan, T., Han, A., & He, Y. (2024).
*Dynamic Graph Representation with Knowledge-aware Attention for
Histopathology Whole Slide Image Analysis*.
http://arxiv.org/abs/2403.07719

Ma, Y., & Zhou, X. (2024). Accurate and efficient integrative
reference-informed spatial domain detection for spatial transcriptomics.
*Nature Methods*. https://doi.org/10.1038/s41592-024-02284-9

Marcolini, A., Bussola, N., Arbitrio, E., Amgad, M., Jurman, G., &
Furlanello, C. (2022). histolab: A Python library for reproducible
Digital Pathology preprocessing with automated testing. *SoftwareX*,
*20*, 101237. https://doi.org/10.24433/CO.1456165.v2

Mosquera-Zamudio, A., Launet, L., Tabatabaei, Z., Parra-Medina, R.,
Colomer, A., Oliver Moll, J., Monteagudo, C., Janssen, E., & Naranjo, V.
(2023). Deep Learning for Skin Melanocytic Tumors in Whole-Slide Images:
A Systematic Review. In *Cancers* (Vol. 15, Issue 1). MDPI.
https://doi.org/10.3390/cancers15010042

Perozzi, B., Al-Rfou, R., & Skiena, S. (2014). *DeepWalk: Online
Learning of Social Representations*. https://doi.org/10.1145/2623330

Singhal, K., Azizi, S., Tu, T., Mahdavi, S. S., Wei, J., Chung, H. W.,
Scales, N., Tanwani, A., Cole-Lewis, H., Pfohl, S., Payne, P.,
Seneviratne, M., Gamble, P., Kelly, C., Babiker, A., Schärli, N.,
Chowdhery, A., Mansfield, P., Demner-Fushman, D., ... Natarajan, V.
(2023). Large language models encode clinical knowledge. *Nature*,
*620*(7972), 172--180. https://doi.org/10.1038/s41586-023-06291-2

Zheng, Y., Gindra, R. H., Green, E. J., Burks, E. J., Betke, M., Beane,
J. E., & Kolachalama, V. B. (2022). A Graph-Transformer for Whole Slide
Image Classification. *IEEE Transactions on Medical Imaging*, *41*(11),
3003--3015. https://doi.org/10.1109/TMI.2022.3176598
