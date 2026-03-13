import cv2
import matplotlib.pyplot as plt

img = cv2.imread('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif')

box_blur = cv2.blur(img, (5, 5))

plt.imshow(cv2.cvtColor(box_blur, cv2.COLOR_BGR2RGB))
plt.show()