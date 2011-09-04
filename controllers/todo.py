# -*- coding: utf-8 -*-

import web
from config import settings
import random,string
import models.models as m
from pyExcelerator import *
from sqlalchemy import desc
from app import session
import json



render = settings.render

#sheets = parse_xls('E:/python_website/libary/db.xls')

#read_xls = lambda x,y,z:sheets[x][1][(y,z)]

'''
把每一条记录的值排列成字典,即: {key:val} 形式
'''
def row2dict(row):
    d = {}
    for columnName in row.__table__.columns.keys():
        d[columnName] = getattr(row, columnName)

    return d

'''
把每一条记录的值排列成元组,即: ['a','b','c'] 形式
'''
def row2Tuple(row):
    d=[]
    for columnName in row.__table__.columns.keys():
        d.append(getattr(row,columnName))
    return tuple(d)

###查询条件转换orm查询值
def get_filter(field, op, string):
    if op=='eq':
        return "%s='%s'" % (field,string)
    if op=='ne':
        return "%s<>'%s'" % (field,string)
    if op=='lt':
        return "%s<'%s'" % (field,string)
    if op=='gt':
        return "%s>'%s'" % (field,string)
    if op=='le':
        return "%s<='%s'" % (field,string)
    if op=='ge':
        return "%s>='%s'" % (field,string)
    if op=='bw':
        return "%s like '%s%%'" % (field,string)
    if op=='bn':
        return "%s not like '%s%%'" % (field,string)
    if op=='ew':
        return "%s like '%%%s'" % (field,string)
    if op=='en':
        return "%s not like '%%%s'" % (field,string)
    if op=='in':
        splitchar = ' '
        if '|' in string:
            splitchar = '|'
        wordlist = "','".join(string.split(splitchar))
        return "%s in ('%s')" % (field,wordlist)
    if op=='ni':
        splitchar = ' '
        if '|' in string:
            splitchar = '|'
        wordlist = "','".join(string.split(splitchar))
        return "%s not in ('%s')" % (field,wordlist)
    if op=='cn':
        return "%s like '%%%s%%'" % (field,string)
    if op=='nc':
        return "%s not like '%%%s%%'" % (field,string)
    
    
###登入
class Login:
    def GET(self):
        if session.is_logged():
            return render.index(name=u'登陆页面',tips=u'已登陆')
        else:
            session.login({'id':'ppx'})
            return render.index(name=u'登陆页面',tips=u'登陆成功')
        

    def POST(self):
        return u'登陆提交'
        
###登出
class Logout:
    def GET(self):
        session.logout()
        return u'已登出'

class User:
    def GET(self):
        u = m.User(name="".join(random.choice(string.letters) for i in range(4)),fullname="".join(random.choice(string.letters) for i in range(7)),password=444)
        web.ctx.orm.add(u)
        return render.user(name='ppx')


class View:
    def GET(self):
        return "\n".join(map(str, web.ctx.orm.query(m.User).all()))

class IndertSchool:
    def GET(self):
        for i in xrange(199):
            s = m.School(read_xls(2,i,1),read_xls(2,i,2),read_xls(2,i,3),read_xls(2,i,4),read_xls(2,i,5),read_xls(2,i,6))
            web.ctx.orm.add(s)
        return "插入执行完毕"

class ViewSchool:
    def GET(self):
        return "\n".join(map(str, web.ctx.orm.query(m.School).all()))

class ViewSchoolInfo:
    def GET(self,name):
        return '\n'.join(map(str,web.ctx.orm.query(m.School).filter(m.School.school_dm==name)))

class ZB:
    def GET(self):
        i = web.input(rows=10,page=1,sidx='id',sord='',_search='false',searchField=None,searchOper=None,searchString=None)
        page = int(i.page)
        limit = int(i.rows)
        sidx = i.sidx
        sord = i.sord
        search = i._search
        
        offset = (page-1)*limit

        query = web.ctx.orm.query(m.ZB)
        #db = web.ctx.orm.query(m.ZB).all()
        
        
        db = query.all()
        table_columns = [x for x in [row.__table__.columns.keys() for row in db][0]]
        
        
        #return json.dumps(table_columns)
        
        if sidx in table_columns and sord=='asc':
            query = query.order_by(sidx)
        if sidx in table_columns and sord=='desc':
            query = query.order_by(desc(sidx))
        if search=='true':
            d = json.loads(i.filters)
            searchField = d["rules"][0]["field"]
            searchOper = d["rules"][0]["op"]
            searchString = d["rules"][0]["data"]
            filter = get_filter(searchField, searchOper, searchString)
            query = query.filter(filter)
        
        count = query.count()
        query = query.offset(offset)
        
        #return d["rules"][0]["data"]
        return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':row2Tuple(row)} for row in query.limit(limit)]})		#自动拼接jqgrid格式
        #return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':(row.id,isinstance(row.name,unicode),row.des,row.formsid)} for row in query.limit(limit)]})		#手动拼接jqgrid格式
        #return render.ZB(dbs=db,title=u"指标")
        #return render.ZB_VIEW()

    ###添加、编辑、删除###
    def POST(self):
        i = web.input(id=None,oper=None,name=None,des=None,formsid=None,fid=None)
        if i.oper == 'add':
            s = m.ZB(i.name,i.des,int(i.fid),int(i.formsid))
            web.ctx.orm.add(s)
        if i.oper == 'edit':
            web.ctx.orm.query(m.ZB).filter(m.ZB.id == int(i.id)).update({m.ZB.name:i.name,m.ZB.des:i.des,m.ZB.fid:int(i.fid),m.ZB.formsid:int(i.formsid)})

        if i.oper == 'del':
            web.ctx.orm.query(m.ZB).filter(m.ZB.id == int(i.id)).delete()


class View_ZB:
        def GET(self):
            db = web.ctx.orm.query(m.FormsClass).all()
            s = ''
            for row in db:
                s+="%s:%s;" % (row.id,row.name)
            s = ":;"+s[:len(s)-1]
            
            return render.ZB_VIEW(title=u'指标管理',data_fromsclass=s)
        
class ZB_Edit:
    def GET(self,id):
        db = web.ctx.orm.query(m.ZB).filter(m.ZB.id==id)
        #return db.__dict__
        return json.dumps([row2Tuple(row) for row in db])
        #return  json.dumps({"rows":[{'id':row.id,'cell':(row.id,row.name,row.des,row.formsid)} for row in db]})
        #return render.ZB(dbs=db,title=u"指标信息")

class ZB_Add:
    def GET(self):
        return render.ZB_ADD(title=u'增加指标')
        

class Mail:
    def GET(self):
        web.config.smtp_server = 'smtp.gmail.com'
        web.config.smtp_port = 587
        web.config.smtp_username = 'mr.cuix@gmail.com'
        web.config.smtp_password = '1392865'
        web.config.smtp_starttls = True
        web.sendmail('mr.cuix@gmail.com','254326539@qq.com',u'测试',u'测试内容')
        return u'执行邮件发送'
