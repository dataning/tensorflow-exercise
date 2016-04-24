
# coding: utf-8

# In[1]:

# Simple example about converting jpg file into tensor object using tensorflow API.


# In[8]:

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import numpy as np
import tensorflow as tf 

from six.moves import urllib

import matplotlib.pyplot as plt
get_ipython().magic(u'matplotlib inline')


# In[9]:

from PIL import Image

im = Image.open('data/san_francisco.jpg', 'r')
print(im)


# In[11]:

filenames = ['data/san_francisco.jpg']
filename_queue = tf.train.string_input_producer(filenames)

print(filename_queue)

reader = tf.WholeFileReader()
key, value = reader.read(filename_queue)

images = tf.image.decode_jpeg(value, channels=3)

#print(images)

init_op = tf.initialize_all_variables()
with tf.Session() as sess:
  sess.run(init_op)
  
  coord = tf.train.Coordinator()
  threads = tf.train.start_queue_runners(coord=coord)

  for i in range(1): #length of your filename list
      image = images.eval() #here is your image Tensor :) 

  print(image.shape)

  pix = np.array(image)
  print(pix)
#  Image.show(Image.fromarray(np.asarray(image)))

plt.imshow(pix)

