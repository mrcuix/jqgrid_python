# -*- coding: utf-8 -*-
from sqlalchemy import create_engine
from sqlalchemy import Column,Integer,String

engine = create_engine('sqlite:///mydatabase.db',echo=True)

from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


#用户
class User(Base):
	__tablename__='users'

	id = Column(Integer,primary_key=True)
	name = Column(String)
	fullname = Column(String)
	password = Column(String)

	def __init__(self,name,fullname,password):
		self.name = name
		self.fullname = fullname
		self.password = password

	def __repr__(self):
		return "<User('%s','%s','%s')>" % (self.name,self.fullname,self.password)

#指标
class ZB(Base):
	__tablename__='ZB'

	id = Column(Integer,primary_key=True)
	name = Column(String)				#指标名称
	des = Column(String)				#指标描述
	fid = Column(Integer)				#指标父级id
	formsid = Column(Integer)			#表单id


	def __init__(self,name,des,fid,formsid):
		self.name = name
		self.des = des
		self.fid = fid
		self.formsid = formsid

	def __repr__(self):
		return "<ZB ('%s','%s','%s','%s')>" % (self.name.encode('utf8'),self.des.encode('utf8'),self.fid.encode('utf8'),self.formsid.encode('utf8'))

#年度表
class ND(Base):
	__tablename__='nd'
	id = Column(Integer,primary_key=True)
	name = Column(String)				#年度名称
	des = Column(String)				#备注

	def __init__(self,name,des):
		self.name = name
		self.des = des

	def __repr__(self):
		return "<ND ('%s','%s')>" % (self.name.encode('utf8'),self.des.encode('utf8'))

#表单列表
class Forms(Base):
	__tablename__='Forms'

	id = Column(Integer,primary_key=True)
	zbid = Column(Integer)				#指标ID
	pgnr = Column(String)				#评估内容
	fz = Column(String)					#分值
	pfbz = Column(String)				#评分标准
	pfff = Column(String)				#评价方法
	fid = Column(Integer)				#表单类型id

	def __init__(self,zbid,pgnr,fz,pfbz,pfff,fid):
		self.zbid = zbid
		self.pgnr = pgnr
		self.fz = fz
		self.pfbz = pfbz
		self.pfff = pfff
		self.fid = fid

	def __repr__(self):
		return "<Forms ('%s','%s','%s','%s','%s','%s')>" % (self.zbid.encode('utf8'),self.pgnr.encode('utf8'),self.fz.encode('utf8'),self.pgbz.encode('utf8').self.pfff.encode('utf8'),self.fid.encode('utf8'))



#表单类型
class FormsClass(Base):
	__tablename__='FormsClass'

	id = Column(Integer,primary_key=True)
	name = Column(String)				#表单类型名称
	ndid = Column(Integer)				#年度id

	def __init__(self,name,ndid):
		self.name = name
		self.ndid = ndid

	def __repr__(self):
		return "<FormClass ('%s','%s')>" % (self.name.encode('utf8'),self.ndid.encode('utf8'))


#单位表
class Unit(Base):
	__tablename__='unit'

	id = Column(Integer,primary_key=True)
	name = Column(String)				#单位名称
	pwd = Column(String)				#登陆密码
	fid = Column(Integer)				#所属单位

	def __init__(self,name,pwd,fid):
		self.name = name
		self.pwd = pwd
		self.fid = fid

	def __repr__(self):
		return "<Unit('%s','%s','%s')>" % (self.name.encode('utf8'),self.pwd.encode('utf8'),self.fid.encode('utf8'))

#学校
class School(Base):
	__tablename__='School'

	id = Column(Integer,primary_key=True)
	school_dm = Column(String)			#学校代码
	school_names = Column(String)		#学校名称
	townname = Column(String)			#镇街
	school_xd = Column(String)			#学段
	school_type = Column(String)			#学校类型
	school_nature = Column(String)		#学校性质
	fid = Column(Integer)				#所属区

	def __init__(self,school_dm,school_names,townname,school_xd,school_type,school_nature,fid):
		self.school_dm = school_dm
		self.school_names = school_names
		self.townname = townname
		self.school_xd = school_xd
		self.school_type = school_type
		self.school_nature = school_nature
		self.fid = fid

	def __repr__(self):
		return "<School('%s','%s','%s','%s','%s','%s','%s')>" % (self.school_dm.encode('utf8'),self.school_names.encode('utf8'),self.townname.encode('utf8'),self.school_xd.encode('utf8'),self.school_type.encode('utf8'),self.school_nature.encode('utf8'),self.fid.encode('utf8'))

users_table = User.__table__
metadata  = Base.metadata

if __name__=="__main__":
    metadata.create_all(engine)