---
layout: people
title: Ayaan Shaikh
cover: /assets/images/dnam.png
profile:
  align: right
  image: dnam.png
paper_title: Cancer Classification Using DNA Methylation Profiles
youtube: https://www.youtube.com/embed/CIACVc3U7Xo
poster: dnam.pdf
abstract: DNA methylation influences cancer by reducing methylation in tumor suppressor genes and increasing it in oncogenes. This study used machine learning to classify cancer types based on DNA methylation profiles. Data from eight cancers in the Cancer Genome Atlas were used to train Random Forest and SVM models. The Stacked Ensemble model performed the best, with 99.49% accuracy. Our results indicate that a Stacked Ensemble model, composed of Logistic Regression, SVM, and Random Forest models, can effectively classify cancer types from DNA methylation profiles, although further work is needed to reduce overfitting.
summary: My project focuses on using advanced computer models to help identify different types of cancer by analyzing specific patterns in DNA. We found that combining several models gives us highly accurate results, but we still need to improve to make sure the system works well for all cancer types.
excerpt_title: Q&A
---
**Bios:** [Ayaan Shaikh](https://jlevy44.github.io/levylab/people/HS_Ayaan_Shaikh)

**Program Track:** Skills Development

**GitHub Username:**  

AShaikh62
*-Ayaan Shaikh*


**What was your favorite seminar? Why?**  

The Multimodal Analysis seminar was my favorite because it was fascinating to see how combining different types of data can enhance machine learning applications and be applied in the real world.
*-Ayaan Shaikh*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

During my summer internship at Dartmouth's EDIT Lab with Dr. Levy, I had a transformative and unique experience using AI and ML to turn complex cancer data into life-changing solutions.
*-Ayaan Shaikh*

<h2>Blog Post</h2>
<br>

**Emerging Diagnostic and Investigative Technologies**
**Department of Pathology, Dartmouth Hitchcock Medical Center Levy Lab**

**Cancer Classification Using DNA Methylation Profiles**

**By: Ayaan Shaikh**

**Introduction**
The study of DNA methylation has become very important in understanding cancer. Over the years, scientists discovered that this process, where small chemical groups are added to DNA, plays a key role in turning genes on or off. In cancer, abnormal DNA methylation can either silence tumor-suppressing genes or activate genes that start cancer growth. This has led to the concept of pan-cancer clustering, where we compare DNA methylation patterns across different types of cancer to find commonalities and differences. These patterns are valuable for diagnosing and treating cancer more effectively.

DNA methylation is important because it can be used as a biomarker to detect various cancers, such as colon, breast, ovarian, and cervical cancer, with minimal invasion. The use of machine learning to analyze these methylation patterns allows for more accurate classification of cancer types, leading to better, more personalized treatments. This combination of genetic understanding and advanced technology is pushing cancer research and treatment into a new era.

My research focuses on using machine learning to study DNA methylation patterns across different cancers. By identifying specific methylation signatures associated with various cancers, I aim to improve early diagnosis and create more effective, personalized treatment plans.

**Data & Methods**
In this study, DNA methylation beta values were utilized to classify cancer types, leveraging data from the National Cancer Institute's Cancer Genome Atlas. We specifically analyzed DNA methylation profiles across eight different cancer types, using beta values ranging from 0 to 1—where values closer to 0 indicate low methylation levels, and those closer to 1 indicate high methylation. Only methylation sites common across all eight cancer types were included.

Machine learning models, including SVM, Random Forest, Stacked Ensemble, XGBoost, LightGBM, KNN, Neural Network, and Logistic Regression were employed to achieve high classification accuracy, with the Stacked Ensemble model performing the best.

**Results**

The study revealed that the Stacked Ensemble model, combining Logistic Regression, SVM, and Random Forest, excelled in classifying cancer types based on DNA methylation profiles, achieving a 99.49% accuracy. The model performance was further validated by near-perfect AUC values, demonstrating its effectiveness in distinguishing between different cancers.

While the results are promising, potential overfitting due to imbalances in the data suggests that further refinement is necessary to ensure the model's robustness across diverse datasets.

**Conclusion**
This research highlights the promise of using DNA methylation profiles for accurately classifying cancer types, with the Stacked Ensemble model showing impressive results. However, there's still work to be done to address overfitting and ensure the model performs consistently across different datasets. Moving forward, we plan to refine the model further and explore new machine learning techniques to make it more reliable and applicable in real-world clinical settings.

**What did I learn?**
This summer, I started on a journey to explore the potential of DNA methylation profiles in cancer classification, despite being new to machine learning. I quickly picked up skills in Python, Jupyter notebooks, and advanced machine learning techniques, ultimately developing a Stacked Ensemble model that showed impressive accuracy. While I identified areas for improvement, this experience not only contributed to cancer research but also provided me with a strong foundation in machine learning that will benefit me in future endeavors.

**Acknowledgements**
I would like to thank Dr. Joshua Levy, Dr. Khang Le, Onyi Owo, Akshat Alok, ZoëFaith Caraballo-Bobea for their assistance in completing this project.