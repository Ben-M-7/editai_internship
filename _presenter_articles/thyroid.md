---
layout: people
title: Aneesh Kalla, Anvith Kakkera & Anish Malepati
cover: /assets/images/thyroid.jpeg
profile:
  align: right
  image: thyroid.jpeg
paper_title: Cytological Evaluation of Papillary Thyroid Carcinoma- Deep Learning Analysis of Thyroid Fine-Needle Aspiration Biopsies
youtube: https://www.youtube.com/embed/oBJQrH8ItpE
poster: thyroid.pdf
abstract: In thyroid Fine-Needle Aspiration (FNA) biopsies, cytopathologists examine tissues from thyroid nodules under a microscope to detect Papillary Thyroid Carcinoma (PTC), a common thyroid cancer. This study introduces an advanced deep learning algorithm to predict thyroid nodule malignancy, aiming to assist doctors in providing effective treatment and avoiding unnecessary resections. The algorithm generates predictions at both the cellular and cluster levels. Connected Component Analysis (CCA) was employed to isolate follicular clusters from Whole Slide Images (WSIs) of ThinPrep-stained thyroid FNAs. YOLOv8 models, pretrained on the COCO dataset, were trained and used to segment individual cells and dense regions within these clusters; it achieved a precision of 0.75 and a recall of 0.89, indicating strong performance with some false positives. Convolutional Neural Networks (CNNs) with ResNet50 and custom architectures were trained on individual cell nuclei to predict nuclear atypia, with embedding vectors from the penultimate layer used as nodes to create graphs to train a Graph Convolutional Network (GCN). This combined CNN-GCN model had an AUC of 0.79. Additionally, ResNet50-based CNNs were trained on cluster images and giotto-tda topological data to classify for architectural atypia, achieving AUCs of 0.89 for differentiating macrofollicular from microfollicular/crowded architectures and 0.88 for differentiating microfollicular from crowded architectures. A Support Vector Machine (SVM) was used to classify patients based on cluster proportions within a WSI, converted to 2D using Principal Component Analysis (PCA). It achieved an AUC of 0.89 and effectively differentiated between benign and malignant nodules (p=0.027) and between 3A and 3C nodules according to the Bethesda System (p=0.005). Future efforts should focus on optimizing hyperparameters and integrating cluster-level predictions with surgical and molecular data to enhance diagnostic accuracy.
summary: In many cases, it’s difficult for doctors to determine if a patient has thyroid cancer or not. We developed a machine learning approach to assist doctors with this diagnosis.
excerpt_title: Q&A
---
**Bios:** [Aneesh Kalla](https://jlevy44.github.io/editai_internship/people/HS_Aneesh_Kalla),[Anvith Kakkera](https://jlevy44.github.io/editai_internship/people/HS_Anvith_Kakkera),[Anish Malepati](https://jlevy44.github.io/editai_internship/people/HS_Anish_Malepati)

**Program Track:** Mentor

**GitHub Username:**  

AneeshKalla
*-Aneesh Kalla*

AnvithK
*-Anvith Kakkera*

LightningBoltz21
*-Anish Malepati*


**What was your favorite seminar? Why?**  

I liked Zarif's seminar about using multiple types of data for classification tasks because it gave insight into the different types of medical data collected from patients.
*-Aneesh Kalla*

My favorite seminar was by Christopher Sue because he talked about how some of the biomedical tools built can be commercialized. It was such a new perspective on some of the ways the work we do at EDIT can be applied to the real world through means of a start-up or company. 
*-Anvith Kakkera*

My favorite was Zarif's seminar because I learned about opportunities for EDIT students to share their projects at conferences and how multimodal approaches could be applied to GNNs, both topics that I was interested in.
*-Anish Malepati*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

We constantly faced difficulties but it was worthwhile because of the importance of the problems that we solved, and we got to do lots of interesting programming along with it.
*-Aneesh Kalla*

Mentoring lots of students, hopping onto many zoom calls, and late-night thyroid project meetings!
*-Anvith Kakkera*

Being an EDIT AI mentor was a tougher task than I initially thought it would be—yet it was definitely worth it. 
*-Anish Malepati*

