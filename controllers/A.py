# -*- coding: utf-8 -*-
import time

class A(object):
	def call(self):
		print 'call\n'

	@staticmethod
	def check(fn):
		print time.clock()
		def foo(*args,**kwargs):
			return fn(*args,**kwargs)
		print time.clock()
		return foo
		