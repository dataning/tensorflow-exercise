
# coding: utf-8

# Simple embedding example using Theano. It demonstrates that embeddings(embedding w1 * embedding w2) conclude
# similar points through cost minimization function.

# In[1]:

import theano
import numpy as np
import theano.tensor as T
import random
import matplotlib.pyplot as plt
import pylab as p

get_ipython().magic(u'matplotlib inline')

E = np.asarray(np.random.randn(6, 2))
t_E = theano.shared(E)


# In[2]:

t_idxs = T.ivector()


# In[3]:

t_embedding_output = t_E[t_idxs]
t_dot_product = T.dot(t_embedding_output[0], t_embedding_output[1])


# In[4]:

t_label = T.iscalar()
gradient = T.grad(cost=abs(t_label - t_dot_product), wrt=t_E)
updates = [(t_E, t_E - 0.01 * gradient)]
train = theano.function(inputs=[t_idxs, t_label], outputs=[], updates=updates)


# In[5]:

summary0 = []
summary1 = []
summary2 = []
summary3 = []
summary4 = []
summary5 = []

print "i n d0 d1"
for i in range(0, 10000):
    v1, v2 = random.randint(0, 5), random.randint(0, 5)
    label = 1.0 if (v1/2 == v2/2) else 0.0
    train([v1, v2], label)
    if i % 100 == 0:
        for n, embedding in enumerate(t_E.get_value()):
            print i, n, embedding[0], embedding[1]
            
            if n%6 == 0:
                summary0.append(embedding[0])
                summary0.append(embedding[1])
                          
            elif n%6 == 1:
                summary1.append(embedding[0])
                summary1.append(embedding[1])
                    
            elif n%6 == 2:
                summary2.append(embedding[0])
                summary2.append(embedding[1])
            
            elif n%6 == 3:
                summary3.append(embedding[0])
                summary3.append(embedding[1])
                    
            elif n%6 == 4:
                summary4.append(embedding[0])
                summary4.append(embedding[1])
            
            elif n%6 == 5:
                summary5.append(embedding[0])
                summary5.append(embedding[1])    
    


# In[6]:

plt.rcParams['figure.figsize'] = (5.0, 5.0) # set default size of plots
plt.rcParams['image.interpolation'] = 'nearest'
plt.rcParams['image.cmap'] = 'gray'


# In[7]:

plt.close('all')

def myPlot(myList):
    
    xarray = []
    yarray = []
    
    for i in range(0,len(myList)):
        if i%2 == 0:
            xarray.append(myList[i])
            
        elif i%2 == 1:
            yarray.append(myList[i])
        
    print(xarray[0:5])
    print(yarray[0:5])   
     
    color = ['r','g','b']
    
    rcolor = random.choice(color)
    
    plt.plot(xarray, yarray, rcolor, marker='o')
    plt.xlabel('X value')
    plt.ylabel('Y value')
    plt.show()

    
myPlot(summary0)
myPlot(summary1)


# In[8]:

myPlot(summary2)
myPlot(summary3)
myPlot(summary4)
myPlot(summary5)


# In[ ]:



