import cv2
import matplotlib.pyplot as plt

# 1. Load the noisy image
# If your image is already in a variable, skip cv2.imread
img = cv2.imread('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif')
img_rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)

# 2. Apply Median Filter
# The second argument (ksize) MUST be an odd integer (3, 5, 7, etc.)
# A larger ksize removes more noise but makes the image look "painterly"
denoised = cv2.medianBlur(img_rgb, 5)

# 3. Compare Results
plt.figure(figsize=(12, 6))

plt.subplot(1, 2, 1)
plt.imshow(img_rgb)
plt.title('Original Noisy Image')
plt.axis('off')

plt.subplot(1, 2, 2)
plt.imshow(denoised)
plt.title('After Median Filter (k=2)')

plt.show()