import cv2
import numpy as np
import matplotlib.pyplot as plt

img = cv2.imread('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif', 0) # Loading in grayscale

kernel = np.ones((5, 5), np.float32) / 25

dst = cv2.filter2D(img, -1, kernel)

plt.imshow(dst, cmap='gray')
plt.show()