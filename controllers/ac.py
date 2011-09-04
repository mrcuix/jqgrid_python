# -*- coding: utf-8 -*-
import web
from config import settings
import random,string
import models.models as m
from sqlalchemy import desc
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
    


class formsclass:
    def GET(self):
        i = web.input(rows=10,page=1,sidx='id',sord='',_search='false',searchField=None,searchOper=None,searchString=None)
        page = int(i.page)
        limit = int(i.rows)
        sidx = i.sidx
        sord = i.sord
        search = i._search
        
        offset = (page-1)*limit

        query = web.ctx.orm.query(m.FormsClass)
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
        
        
        return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':row2Tuple(row)} for row in query.limit(limit)]})		#自动拼接jqgrid格式
        

    ###添加、编辑、删除###
    def POST(self):
        i = web.input(id=None,oper=None,ndid=None)
        if i.oper == 'add':
            s = m.FormsClass(i.name,int(i.ndid))
            web.ctx.orm.add(s)
        if i.oper == 'edit':
            web.ctx.orm.query(m.FormsClass).filter(m.FormsClass.id == int(i.id)).update({m.FormsClass.name:i.name,m.FormsClass.ndid:int(i.ndid)})

        if i.oper == 'del':
            web.ctx.orm.query(m.FormsClass).filter(m.FormsClass.id == int(i.id)).delete()

class View_formsclass:
    def GET(self):
        db = web.ctx.orm.query(m.ND).all()
        s = ''
        for row in db:
            s+="%s:%s;" % (row.id,row.name)
        s = ":;"+s[:len(s)-1]
        
        return render.fc_view(title=u'表单类型管理',data_nd=s)
        
        
class nd:
    def GET(self):
        i = web.input(rows=10,page=1,sidx='id',sord='',_search='false',searchField=None,searchOper=None,searchString=None)
        page = int(i.page)
        limit = int(i.rows)
        sidx = i.sidx
        sord = i.sord
        search = i._search
        
        offset = (page-1)*limit

        query = web.ctx.orm.query(m.ND)
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
        
        
        return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':row2Tuple(row)} for row in query.limit(limit)]})		#自动拼接jqgrid格式
        

    ###添加、编辑、删除###
    def POST(self):
        i = web.input(id=None,oper=None,name=None,des=None)
        if i.oper == 'add':
            s = m.ND(i.name,i.des)
            web.ctx.orm.add(s)
        if i.oper == 'edit':
            web.ctx.orm.query(m.ND).filter(m.ND.id == int(i.id)).update({m.ND.name:i.name,m.ND.des:i.des})

        if i.oper == 'del':
            web.ctx.orm.query(m.ND).filter(m.ND.id == int(i.id)).delete()

class View_nd:
    def GET(self):
        return render.nd_view(title=u'年度管理')
        
        
        
class unit:
    def GET(self):
        i = web.input(rows=10,page=1,sidx='id',sord='',_search='false',searchField=None,searchOper=None,searchString=None)
        page = int(i.page)
        limit = int(i.rows)
        sidx = i.sidx
        sord = i.sord
        search = i._search
        
        offset = (page-1)*limit

        query = web.ctx.orm.query(m.Unit)
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
        
        
        return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':row2Tuple(row)} for row in query.limit(limit)]})		#自动拼接jqgrid格式
        

    ###添加、编辑、删除###
    def POST(self):
        i = web.input(id=None,oper=None,name=None,pwd=None,fid=None)
        if i.oper == 'add':
            s = m.Unit(i.name,i.pwd,int(i.fid))
            web.ctx.orm.add(s)
        if i.oper == 'edit':
            web.ctx.orm.query(m.Unit).filter(m.Unit.id == int(i.id)).update({m.Unit.name:i.name,m.Unit.pwd:i.pwd,m.Unit.fid:int(i.fid)})

        if i.oper == 'del':
            web.ctx.orm.query(m.Unit).filter(m.Unit.id == int(i.id)).delete()

class View_unit:
    def GET(self):
        db = web.ctx.orm.query(m.Unit).all()
        s = ''
        for row in db:
            s+="%s:%s;" % (row.id,row.name)
        s = ":;0:---;"+s[:len(s)-1]
        
        return render.unit_view(title=u'单位管理',data_fid=s)
        
###表单规则
class forms:
    def GET(self):
        i = web.input(rows=10,page=1,sidx='id',sord='',_search='false',searchField=None,searchOper=None,searchString=None)
        page = int(i.page)
        limit = int(i.rows)
        sidx = i.sidx
        sord = i.sord
        search = i._search
        offset = (page-1)*limit
        query = web.ctx.orm.query(m.Forms)
        db = query.all()
        table_columns = [x for x in [row.__table__.columns.keys() for row in db][0]]
        
        
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
        
        
        return json.dumps({"page":page,"total":int((count-1)/limit)+1,"records":count,"rows":[{'id':row.id,'cell':row2Tuple(row)} for row in query.limit(limit)]})		#自动拼接jqgrid格式
        

    ###添加、编辑、删除###
    def POST(self):
        i = web.input(id=None,oper=None,zbid=None,pgnr=None,fz=None,pfbz=None,pfff=None,fid=None)
        if i.oper == 'add':
            s = m.Forms(int(i.zbid),i.pgnr,i.fz,i.pfbz,i.pfff,int(i.fid))
            web.ctx.orm.add(s)
        if i.oper == 'edit':
            web.ctx.orm.query(m.Forms).filter(m.Forms.id == int(i.id)).update({m.Forms.zbid:int(i.zbid),m.Forms.pgnr:i.pgnr,m.Forms.fz:i.fz,m.Forms.pfbz:i.pfbz,m.Forms.pfff:i.pfff,m.Forms.fid:int(i.fid)})

        if i.oper == 'del':
            web.ctx.orm.query(m.Forms).filter(m.Forms.id == int(i.id)).delete()

class View_forms:
    def GET(self):
        db = web.ctx.orm.query(m.ZB).all()
        db1 = web.ctx.orm.query(m.FormsClass).all()
        s = ''
        s1 = ''
        for row in db:
            s+="%s:%s;" % (row.id,row.name+"--"+row.des)
        s = ":;0:---;"+s[:len(s)-1]
        
        for row in db1:
            s1+="%s:%s;" % (row.id,row.name)
        s1 = ":;0:---;"+s1[:len(s1)-1]
        
        return render.forms_view(title=u'单位管理',data_zbid=s,data_fid=s1)

        
        
