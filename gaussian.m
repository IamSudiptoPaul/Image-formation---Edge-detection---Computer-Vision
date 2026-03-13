import cv2
import matplotlib.pyplot as plt

img = cv2.imread('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif')
img_rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)


blur_low = cv2.GaussianBlur(img_rgb, (25, 25), 1)   # Subtle blur
blur_med = cv2.GaussianBlur(img_rgb, (25, 25), 5)   # Moderate blur
blur_high = cv2.GaussianBlur(img_rgb, (25, 25), 10) # Heavy blur


titles = ['Original', 'Sigma=1', 'Sigma=5', 'Sigma=10']
images = [img_rgb, blur_low, blur_med, blur_high]

plt.figure(figsize=(15, 5))
for i in range(4):
    plt.subplot(1, 4, i+1)
    plt.imshow(images[i])
    plt.title(titles[i])
    plt.axis('off')
plt.show()