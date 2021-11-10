import cv2
import os
import numpy as np 

d = [el for el in os.listdir(".") if el.endswith(".png")]


rescale = (340, 256)
v = []
for el in d:
    img = cv2.imread(el, cv2.IMREAD_COLOR)
    img = cv2.resize(img, rescale)
    v.append(img)

i = 3
s = np.concatenate([el for el in v[:i]], axis=1)

for j in range(i, len(v), i):
    k = np.concatenate([el for el in v[j:j+i]], axis=1)
    s = np.concatenate([s, k], axis=0)

cv2.imwrite("result.jpg", s)