# -*- coding: utf-8 -*-
from pyExcelerator import *
sheets = parse_xls('E:/python_website/libary/db.xls')
read_xls = lambda x,y,z:sheets[x][1][(y,z)]

for i in xrange(199):
			print read_xls(2,i,1),read_xls(2,i,2).decode('utf-8'),read_xls(2,i,3),read_xls(2,i,4),read_xls(2,i,5),read_xls(2,i,6),'\n'