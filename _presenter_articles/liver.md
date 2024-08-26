---
layout: people
title: Prannav Murukesh & Adharsh Laguduva
cover: /assets/images/liver.png
profile:
  align: right
  image: liver.png
paper_title: Using Deep Learning for Accurate Tumor Localization in Liver Cancer Using CT Scans
youtube: https://www.youtube.com/embed/AbTCKYwutAw
poster: liver.pdf
abstract: The goal of this research project is to improve early identification of liver cancer, a disease with a high death rate and a poor prognosis because of late-stage diagnosis. To this end, machine learning and computer vision techniques are being applied. The majority of current diagnostic techniques rely on the manual interpretation of CT scans, which can be time-consuming and subject to human error.. This study intends to increase the consistency and speed of diagnosis by creating a machine learning model that can accurately identify liver cancers in CT scans. With the use of sophisticated image processing techniques, the suggested model analyzes and segments liver tissues to more accurately identify tumorous areas. This strategy could help with ongoing patient monitoring for those who are at risk of recurrence in addition to increasing the rate of early identification, providing physicians with a more dependable weapon in the fight against liver cancer.
summary: Our project uses advanced computer technology to help doctors detect liver tumors in medical images more accurately and quickly. By training computers to identify liver tumors in CT scans, we're making it easier for doctors to catch cancer early and provide timely treatment.
excerpt_title: Q&A
---
**Bios:** [Prannav Murukesh](https://jlevy44.github.io/levylab/people/HS_Prannav_Murukesh),[Adharsh Laguduva](https://jlevy44.github.io/levylab/people/HS_Adharsh_Laguduva)

**Program Track:** Skills Development

**GitHub Username:**  

imLockedIn
*-Prannav Murukesh*

adharsh-prajith
*-Adharsh Laguduva*


**What was your favorite seminar? Why?**  

My favorite seminar was the new where we were taught on how to present our projects and how to answer questions and be preferred for them. This was my favorite one as it was extremely helpful for the future as I would need those methods to successful present the project and present it to the public.
*-Prannav Murukesh*

My favorite seminar was the sminar on Open AI by Jason Wei
*-Adharsh Laguduva*


**If you were to summarize your summer internship experience in one sentence, what would it be?**  

It was extremely knowledgable and I learned a lot of new information about machine learning and AI.
*-Prannav Murukesh*

An opportunity to apply the skills that I have been learning over the past few years into the medical field and into a real world project.
*-Adharsh Laguduva*

<h2>Blog Post</h2>
<br>
Abstract:

The goal of this research project is to improve early identification of
liver cancer, a disease with a high death rate and a poor prognosis
because of late-stage diagnosis. To this end, machine learning and
computer vision techniques are being applied. The majority of current
diagnostic techniques rely on the manual interpretation of CT scans,
which can be time-consuming and subject to human error.. This study
intends to increase the consistency and speed of diagnosis by creating a
machine learning model that can accurately identify liver cancers in CT
scans. With the use of sophisticated image processing techniques, the
suggested model analyzes and segments liver tissues to more accurately
identify tumorous areas. This strategy could help with ongoing patient
monitoring for those who are at risk of recurrence in addition to
increasing the rate of early identification, providing physicians with a
more dependable weapon in the fight against liver cancer.

Blog

Scientific premise:

The goal of this project is to develop a machine learning model that is
able to detect tumors in the liver in CT scans. The model aims to
improve early stage liver cancer detection by creating a model using
deep learning algorithms.

Aims/goals:

-   Develop a robust machine learning model capable of accurately
    detecting liver tumors in CT scans.

-   Utilize deep learning techniques to train the model on a diverse set
    of annotated liver CT images.

-   Evaluate the model\'s performance through rigorous testing and
    validation, using metrics such as Dice coefficient, precision, and
    recall.

-   Optimize the model\'s accuracy by iterating on its architecture,
    hyperparameters, and training data.

#### Our approach: Image Segmentation with Preprocessing

#### Data Collection and Preparation

-   Data Gathering: We collected liver CT scans and their corresponding
    tumor labels from http://medicaldecathlon.com/

-   Preprocessing: We used a custom data generator to load and prepare
    the images. This involved normalizing the images, resizing them to
    512x512 pixels, and selecting random slices to increase variety in
    the training data.

#### Model Development

-   Custom Model: We created a U-Net model designed to identify and
    highlight tumors in 2D images.

    -   Encoder : The model first compresses the image to capture
        important features.

    -   Bottleneck: A middle layer further processes these features to
        understand the most crucial parts of the image.

    -   Decoder: The model then rebuilds the image, focusing on
        identifying tumor regions with the help of the encoded features.

#### Training and Optimization

-   Training Process: We trained the model to learn from the images
    using a loss function that balances both pixel accuracy and the
    overall ability to segment tumors..

#### Validation and Testing

-   Testing: After training, we tested the model on separate data to
    ensure it works well on new images. We measured its accuracy using
    metrics like the Dice coefficient.

Deliverables

-   A trained segmentation model that can accurately detect and localize
    liver tumors in CT scans.

Conclusion:

The research project developed a machine learning model for detecting
liver tumors in CT scans, achieving a moderate success rate. The model
was able to identify some tumorous regions but still requires
significant optimization. While the results are promising, further
refinement and additional training data are needed to improve accuracy
and reliability.

-   
