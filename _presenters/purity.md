---
layout: people
title: Neil Daniel, Neha Ranjith, Edward Kim & Alim A. Oraz
cover: /assets/images/purity.png
profile:
  align: right
  image: purity.png
paper_title: Localized Tumor Purity Prediction from Hematoxylin & Eosin Stained Whole Slide Images using Cell Type Proportions from Cell-type Deconvolution Methods
youtube: https://www.youtube.com/embed/UH01u8QWQgM
poster: purity.pdf
abstract: The tumor microenvironment is highly complex and consists of multiple cell types. This results in genomic profiles of the microenvironment plagued by a variety of interfering signals. This makes DNA sequencing of tumors notoriously challenging. Knowledge of the purity of a tumor, the proportion of total cells within a tumor that is cancerous, can aid not only in interpreting the reliability of tumor DNA sequencing but can provide insights into the likelihood of survival for patients as well as help determine the feasibility of pembrolizumab and other broad immunotherapy treatment methods. Thus, the determination of tumor purity is a crucial task. Many methods for determining tumor purity exist. However, these methods are either inefficient or expensive. We propose a novel approach to tumor purity estimation using spatial transcriptomics data. Namely, we rely on visium, a method of collecting gene expression data at various locations within a tissue, each called visium spots. We use cell2location, a cell-type deconvolution method that estimates the cell-type proportions within a visium spot by finding a combination of different cell types that would result in the net gene expression data of the visium spot. We then derive the tumor purity at the visium spots by calculating the proportion of epithelial cells that are labeled as tumor epithelial cells. The corresponding patch of a hematoxylin and eosin (H&E) stained image can be extracted from the coordinates of a visium spot. We train a convolutional neural network (CNN) on these H&E image patches, using the cell-type deconvolution-based tumor purity estimates as a ground truth. We find that the trained CNN provides accurate localized tumor purity estimates. The model can thus be used to estimate purity at the whole slide image level as well, providing a novel tumor purity estimation method that can easily be applied to a host of tissue samples.
summary: The purity of a tumor refers to the proportion of cells in a tumor that are actually cancerous and is a crucial metric for medical professionals to understand patient treatment options as well as survival outcomes. We present a novel automated approach to estimating tumor purity from images of the tumor tissue using machine learning techniques.
excerpt_title: Q&A
---
**Bios:** [Neil Daniel](https://jlevy44.github.io/levylab/people/HS_Neil_Daniel),[Neha Ranjith](https://jlevy44.github.io/levylab/people/HS_Neha_Ranjith),[Edward Kim](https://jlevy44.github.io/levylab/people/),[Alim A. Oraz](https://jlevy44.github.io/levylab/people/HS_Alim_Oraz)

**Program Track:** Advanced Research

**GitHub Username:**  

NeilDaniel07
*-Neil Daniel*

neharanjith
*-Neha Ranjith*

onceandtwice2
*-Edward Kim*

https://github.com/PhantomPrince07
*-Alim A. Oraz*


**What was your favorite seminar? Why?**  

I enjoyed our very first seminar, given by Dr. Vaickus. His introduction to pathology, with which I had no past experience, fueled by excitement throughout the rest of the EDIT program. It was really interesting to hear about the specific uses of segmentation models in the field of clinical pathology as many of them are use cases I had never thought about. 
*-Neil Daniel*

The one with Chris Jackson and virtual staining because it closely related to our project which made it more interesting for me.
*-Neha Ranjith*

My favorite seminar was Gokul's. This was my favorite seminar because of how ambitious and wide-reaching his idea would be.
*-Edward Kim*

I thoroughly enjoyed Gokul Srinivasan's seminar on Spatial Transcriptomics (ST) Inference, particularly his forward-thinking vision for a unified ST analysis platform. The concept of a model library tailored to different tissue types, which researchers can access by simply uploading their tissue sample images, is incredibly innovative and addresses a significant need in the scientific community. Gokul's idea of making advanced ST inference models accessible to a broader audience through an automated Inference/Analysis Platform could democratize access to cutting-edge research tools, enabling greater insights into disease etiopathogenesis. The visual representation in his slide, showing how clinical trial samples could be processed through this platform with integrated analyses such as Synthetic ST data, Automatic Histology Detection, and Differential Gene Expression and Pathway Analysis, was particularly impactful. This holistic approach to data analysis promises to revolutionize how researchers understand and investigate disease mechanisms. Gokul's seminar resonated with me because it provided a clear, actionable vision for the future of ST, emphasizing both accessibility and analytical power, which could significantly impact the field.
*-Alim A. Oraz*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

A research experience where I explored a completely new approach, learning through experimentation and enjoying the risks and challenges that came with it.
*-Neil Daniel*

The internship really enhanced my knowledge of machine learning, and stimulated a work flow that I will need later in life.
*-Neha Ranjith*

A fast-paced learning experience that I won't forget.
*-Edward Kim*

My EDIT AI summer internship was a deeply inspiring and truly transformative experience where I demonstrated unwavering perseverance by engaging in PhD-level learning and research, especially in advanced AI applications, tackling complex challenges head-on, and never giving up - even when faced with unexpected difficulties such as suddenly losing three teammates on the Stage 2 of our research project. Professor Joshua Levy’s tireless dedication to guiding students, never getting tired of our questions or setbacks, was a constant source of motivation that will continually fuel my lifetime commitment to advancing global health and medical investigations & diagnostics through novel science and breakthrough technologies.
*-Alim A. Oraz*

