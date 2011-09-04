# -*- coding: utf-8 -*-


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
    