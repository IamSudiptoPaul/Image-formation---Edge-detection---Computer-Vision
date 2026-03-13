import scipy.io
import numpy as np
import matplotlib.pyplot as plt

data = scipy.io.loadmat('/Users/sudiptogoldfish/code files/7026B CV Lab/Week 2 img processing/cvlab3RAWtoJPG.mat')

raw = data['RAW']
jpg = data['JPG']
whitepoint = data['whitepoint'].flatten()
ccm = data['colourcorrection']
in_br = data['inputbrightness'].flatten()
out_br = data['outputbrightness'].flatten()

img_wb = raw / whitepoint
img_wb = np.clip(img_wb, 0, 1)

h, w, c = img_wb.shape
img_cc = (img_wb.reshape(-1, 3) @ ccm.T).reshape(h, w, c)
img_cc = np.clip(img_cc, 0, 1)

img_final = np.interp(img_cc.flatten(), in_br, out_br).reshape(h, w, c)

plt.figure(figsize=(15, 8))

plt.subplot(1, 3, 1)
plt.imshow(raw)
plt.title('1. Original RAW (Linear)')

plt.subplot(1, 3, 2)
plt.imshow(img_final)
plt.title('2. My Processed Image')

plt.subplot(1, 3, 3)
plt.imshow(jpg)
plt.title('3. Target Camera JPG')

plt.tight_layout()
plt.show()