# -*- coding: utf-8 -*-
from config.url import urls
from config import settings
from app import session
import web

#web.config.debug = False

app = web.application(urls,globals())
app.add_processor(settings.load_sqla)
#app.add_processor(settings.load_cookies)

session.add_sessions_to_app(app)


if __name__=="__main__":
    app.run()