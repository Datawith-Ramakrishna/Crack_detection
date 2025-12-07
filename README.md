# Crack_detection
Classical crack detection pipeline in MATLAB using preprocessing, adaptive thresholding, morphological operations, feature-based classification, and IoU evaluation on annotated surface images.
## 🔍 Overview
The goal of this project is to automatically detect crack regions in real-world surface images.  
The pipeline includes image preprocessing, thresholding, morphological operations, region classification,  
and performance evaluation using Intersection over Union (IoU).

---

## 📂 Features
- Grayscale conversion and noise reduction  
- Adaptive thresholding for crack segmentation  
- Morphological operations to refine detected regions  
- Feature extraction for crack vs. non-crack classification  
- Quantitative evaluation using IoU  
- Measurement of crack length for structural analysis  

---

## 🧠 Methodology

### 1. **Data Collection & Annotation**
- Real crack images captured from building surfaces  
- Manual annotation of crack regions for evaluation  

### 2. **Preprocessing**
- Grayscale normalization  
- Median or Gaussian filtering to remove noise  
- Contrast enhancement (optional)

### 3. **Segmentation**
- Adaptive or global thresholding  
- Edge detection (Sobel/Canny)  
- Morphological operations (dilation, erosion, opening/closing)

### 4. **Classification**
- Feature analysis of segmented regions  
- Filtering non-crack areas based on shape, area, or orientation  

### 5. **Evaluation**
- Intersection over Union (IoU)  
- Crack length measurement  
- Visual comparison of input vs. mask vs. result  

---

## 🛠️ Tech Stack
- **MATLAB**
- Image Processing Toolbox

---

## 📊 Results
- Successfully detected crack regions with reasonable IoU scores  
- Clear segmentation masks generated for evaluation  
- Length estimation provides useful structural insights  
