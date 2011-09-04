# -*- coding: utf-8 -*-
import web
from config import settings
import random,string
import models.models as m
from sqlalchemy import desc
import json

render = settings.render


class tojs:
    def GET(self):

        query = web.ctx.orm.query(m.Forms,m.ZB).filter(m.Forms.zbid==m.ZB.id).all()
        query1 = web.ctx.orm.query(m.ZB).filter(m.ZB.name.like('%A%'))
        query2 = web.ctx.orm.query(m.ZB).filter(m.ZB.name.like('%B%'))
        query3 = web.ctx.orm.query(m.ZB).filter(m.ZB.name.like('%C%')).all()
        return render.tohtml(title=u'生成列表',db=query,zb1=query1.all(),zb2=query2.all(),zb3=query3,zb2count=query2.count(),zb1count=query1.count())

class togrid:
    def GET(self):
        return render.togrid()
        

        