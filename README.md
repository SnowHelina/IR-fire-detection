# Video Surveillance Fire Detection using YOLOv5

This project focuses on developing a fire detection system for video surveillance using the YOLOv5 deep learning model. 

The goal is to improve fire detection accuracy and efficiency in real-time scenarios, leveraging modern computer vision techniques.

 Key Features

- YOLOv5 Model: Utilizes the YOLOv5 architecture for fire detection in videos, offering high accuracy and real-time performance.

- Dataset: Trained on a dataset of ~3000 labeled fire images from Kaggle, preprocessed and converted into YOLOv5 format using Roboflow.

- Color Thresholding: For videos recorded with infrared (IR) cameras, a color-based masking method is applied to extract fire regions using MATLAB.

- Multi-Scale Detection: Employs YOLOv5's multi-scale detection strategy to enhance fire detection across varying distances and scales.

 Methodology
 
1. Dataset Preparation: Fire images were labeled and converted into YOLOv5 format using bounding boxes.

2. Model Training: YOLOv5 was trained on the dataset, with data augmentation techniques like mosaic and random affine to improve feature separation.

3. Fire Detection: The model processes video frames to detect fire regions, outputting bounding boxes around detected areas.

4. IR Video Processing: For IR videos, a color thresholding method was used to segment fire regions, followed by blob analysis for detection.

 Results
 
- The YOLOv5 model demonstrated high accuracy and speed in detecting fire in videos, though some false positives were observed.

- The color thresholding method provided a simple yet effective approach for IR video fire detection, with room for improvement using noise suppression techniques.

 Future Work
 
- Improve dataset quality and size for better model accuracy.

- Explore advanced noise suppression methods for IR video processing.

- Implement the system in real-time fire detection applications.
