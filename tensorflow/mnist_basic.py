
# coding: utf-8

# In[26]:

from tensorflow.examples.tutorials.mnist import input_data
mnist = input_data.read_data_sets("MNIST_data/",one_hot=True)


# In[27]:

import tensorflow as tf 

x = tf.placeholder(tf.float32,[None, 784])
W = tf.Variable(tf.zeros([784,10]))
b = tf.Variable(tf.zeros([10]))


# In[28]:

y = tf.nn.softmax(tf.matmul(x,W) + b)


# In[29]:

y_ = tf.placeholder(tf.float32, [None, 10])


# In[30]:

cross_entropy = -tf.reduce_sum(y_*tf.log(y))


# In[31]:

train_step = tf.train.GradientDescentOptimizer(0.01).minimize(cross_entropy)


# In[32]:

init = tf.initialize_all_variables()


# In[33]:

sess = tf.Session()
sess.run(init)


# In[34]:

for i in range(1000):
    batch_xs, batch_ys = mnist.train.next_batch(100)
    sess.run(train_step, feed_dict={x: batch_xs, y_:batch_ys})


# In[35]:

correct_prediction = tf.equal(tf.argmax(y,1), tf.argmax(y_,1))


# In[36]:

accuracy= tf.reduce_mean(tf.cast(correct_prediction, tf.float32))


# In[37]:

print(sess.run(accuracy, feed_dict={x: mnist.test.images, y_:mnist.test.labels}))


# In[38]:

sess.close()


# In[ ]:



