import cv2
import matplotlib.pyplot as plt

img = cv2.imread('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif', 0) # Grayscale

# Step 1: Gaussian Blur (removes noise)
blurred = cv2.GaussianBlur(img, (5, 5), 1.5)

# Step 2: Laplacian (finds edges)
# ksize=3 refers to the Laplacian aperture
log_result = cv2.Laplacian(blurred, cv2.CV_64F, ksize=3)

plt.imshow(log_result, cmap='gray')
plt.title('Laplacian of Gaussian')
plt.show()