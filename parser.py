# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
import urllib
import codecs

output = codecs.open("names.txt", "wb","utf-8")

page = urllib.urlopen("QUIREMA.html").read()
soup = BeautifulSoup(page, 'html.parser')

#print soup.table.next_element.next_element

table= soup.find_all("a")
aux=[]
names=[]
for a in table:
    aux.append(a.string)
for i in xrange (len(aux)):
    #print i, aux[i]
    if aux[i] != 'www.udea.edu.co':
            if aux[i] != 'dplope@gmail.com':
                names.append(aux[i])

for j in xrange (len(names)):
    #print names[j]
    output.write(names[j])
    output.write('\n')

output.close()
#print len(list(soup.body.descendants))
