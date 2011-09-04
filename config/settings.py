# -*- coding: utf-8 -*-
import web
from web.contrib.template import render_jinja
from sqlalchemy.orm import scoped_session, sessionmaker
from models.models import *


def load_sqla(hander):
    web.ctx.orm = scoped_session(sessionmaker(bind=engine))
    try:
        return hander()
    except web.HTTPError:
        web.ctx.orm.commit()
        raise
    except:
        web.ctx.orm.rollback()
        raise
    finally:
        web.ctx.orm.commit()
        web.ctx.orm.close()

        
def load_cookies(hander):
    web.ctx.cookies = web.cookies()
    return hander()

### Template
t_globals = {
    'datestr':web.datestr
}

render = render_jinja(
        'templates',            #Set template directory
        encoding = 'utf-8',     #Encodeing
        )



#设置环境变量
config = web.storage(
    email='mr.cuix@gmail.com',
    site_name = '任务跟踪',
    site_desc = '',
    static = '/static',
)

#设置为公共变量
web.template.Template.globals['config'] = config
web.template.Template.globals['render'] = render