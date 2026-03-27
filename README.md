Computer Vision Lab: Image Formation & Edge Detection
This repository contains the implementation and analysis for the Laboratory Session on Basic Image Processing Operations. The primary focus is exploring how pre-processing techniques and Matlab’s built-in functions facilitate robust high-level computer vision algorithms.

🎯 Objectives
Understand the fundamentals of image formation and digital representation.

Implement and compare various edge detection techniques (Sobel, Canny, Prewitt).

Explore the impact of pre-processing (noise reduction, grayscale conversion) on algorithm reliability.

🛠️ Tools Used
Matlab (Image Processing Toolbox)

GitHub (Version Control)

📂 Lab Tasks
1. Image Acquisition and Representation

Exploration of how images are stored as matrices in Matlab.

Loading images using imread().

Understanding bit-depth and color channels (RGB vs. Grayscale).

2. Pre-processing Techniques

Before detecting features, we must clean the data. This section covers:

Noise Reduction: Applying Gaussian filters to smooth images.

Normalization: Adjusting contrast and brightness for consistent input.

3. Edge Detection

Edges are the building blocks of shape recognition. We implement several operators to observe their sensitivity to noise and detail:

Sobel & Prewitt: Gradient-based operators for simple edge detection.

Canny Edge Detector: A multi-stage algorithm that provides thin, clean edges using non-maximum suppression and hysteresis thresholding.

🚀 How to Run
Clone this repository:

Bash
git clone https://github.com/your-username/cv-edge-detection.git
Open Matlab.

Navigate to the project folder.

Run the main script (e.g., edge_detection_lab.m).

📊 Results & Observations
Note: Add a brief summary of your findings here. For example, mention why the Canny edge detector outperformed the Sobel operator in noisy environments, or how Gaussian blurring affected the final result.
