import numpy as np
import matplotlib.pyplot as plt
from skimage import data, feature, filters, color

img = data.camera()

sigma_log = 2.0
blurred = filters.gaussian(img, sigma=sigma_log)
log_output = filters.laplace(blurred) 

log_threshold = 0.015
log_edges = np.abs(log_output) > log_threshold

canny_low = 10
canny_high = 50
canny_edges = feature.canny(img, sigma=1.5, low_threshold=canny_low, high_threshold=canny_high)

fig, axes = plt.subplots(1, 3, figsize=(18, 6))
ax = axes.ravel()

ax[0].imshow(img, cmap='gray')
ax[0].set_title('Original (/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cameraman.tif)')

ax[1].imshow(log_edges, cmap='gray')
ax[1].set_title(f'LoG (Sigma={sigma_log}, Thresh={log_threshold})')

ax[2].imshow(canny_edges, cmap='gray')
ax[2].set_title(f'Canny (Sigma=1.5, Low={canny_low}, High={canny_high})')

for a in ax:
    a.axis('off')

plt.tight_layout()
plt.show()