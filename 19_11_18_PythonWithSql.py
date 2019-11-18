#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pip install PyMySQL')
get_ipython().system('pip install sqlalchemy')
get_ipython().system('pip install pandas')


# In[1]:


import pymysql
pymysql.install_as_MySQLdb()
import MySQLdb
import pandas as pd

from sqlalchemy import create_engine


# In[2]:


import tkinter.filedialog as tf


# In[14]:


# PC의 아이피 주소 혹은 웹주소
mysql_host = 'localhost'
# 접속할 아이디
mysql_id = 'root'
# 본인에 맞게 사용할것
mysql_pw = ''
mysql_db = 'test'


# In[15]:


engine = create_engine("mysql+mysqldb://" + mysql_id+":" + mysql_pw + "@" + mysql_host + "/" + mysql_db, encoding='euckr')
conn = engine.connect()


# In[13]:


# table list
query = 'show tables'
pd.read_sql(query.conn)


# In[8]:


query = 'select * from as_test'
data = pd.read_sql(query.conn)
data.shape
data.head()


# In[9]:


filename = tf.askopenfilename()
data = pd.read_csv(filename)
data.head()


# In[ ]:


data.head()


# In[ ]:


data.to_sql(name='export', con=conn. if_exists=='replace', index=False)


# In[ ]:


query = 'drop table export'
# 위에서 작성한 쿼리를 작성하고 끝
conn.execute(query)


# In[ ]:


### close
conn.close()


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:




