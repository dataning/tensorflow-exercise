
# coding: utf-8

# In[1]:

import math
import matplotlib.pyplot as plt
import pylab as p
import numpy as np
 
get_ipython().magic(u'matplotlib inline')

fig_size = plt.rcParams["figure.figsize"]

# print "Current size:", fig_size


# In[13]:

x = np.arange(-3., 4., 0.2)
e=2.71828

plt.rcParams["figure.figsize"] = (12,9)

plt.plot(x, np.power(e,x), 'r--')
plt.plot(x, np.power(2,x), 'b--')
plt.plot(x, np.power(3,x), 'g--')

p.title('exponential & slope graph')

print(np.power(e,0))

ax0 = [-1,0,1]
ay0 = [np.power(e,0)-(np.power(e,0)*np.log(e)),np.power(e,0),np.power(e,0) + (np.power(e,0)*np.log(e))]

plt.plot(ax0, ay0, 'r')

ax1 = [0,1,2]
ay1 = [np.power(e,1)-(np.power(e,1)*np.log(e)),np.power(e,1),np.power(e,1) + (np.power(e,1)*np.log(e))]

plt.plot(ax1, ay1, 'r')

ax2 = [1,2,3]
ay2 = [np.power(e,2)-(np.power(e,2)*np.log(e)),np.power(e,2),np.power(e,2) + (np.power(e,2)*np.log(e))]
#ay2 = [0,np.power(e,2), np.power(e,2) * 2 ]

plt.plot(ax2, ay2, 'r')

ax3 = [2,3,4]
ay3 = [np.power(e,3)-(np.power(e,3)*np.log(e)),np.power(e,3),np.power(e,3) + (np.power(e,3)*np.log(e))]

plt.plot(ax3, ay3, 'r')


ax4 = [2,3,4]
ay4 = [np.power(3,3)-(np.power(3,3)*np.log(3)),np.power(3,3),np.power(3,3) + (np.power(3,3)*np.log(3))]

plt.plot(ax4, ay4, 'g')


#  The slope of a^x is equal to log(a) * a^x. 
#  The slope of e^0 is 1.

# In[3]:

x = np.arange(-3., 3., 0.2)
e=2.71828

plt.rcParams["figure.figsize"] = (12,9)

plt.plot(x, np.power(e,-x), 'r--')

p.title('e^-x graph')


# In[8]:

x = np.arange(0.1, 500., 5)
no = np.arange(0.1, 6, 0.1)

e=2.71828

plt.rcParams["figure.figsize"] = (12,9)

plt.plot(x, np.log(x), 'b--')        

plt.plot(np.power(e,no),no, 'r--')      
        
p.title('log graph')


# log x is ln(e^x).

# In[4]:

x = np.arange(0.1, 3., 0.2)
e=2.71828

plt.rcParams["figure.figsize"] = (12,9)
cal = np.power(e, np.log(x))

plt.plot(x, cal, 'r--')

p.title('e^(logx) graph')


# e^(logx) is equal to x.

# In[ ]:



