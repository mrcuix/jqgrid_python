# -*- coding: utf-8 -*-
import web

def add_sessions_to_app(app):
    if web.config.get('_session') is None:
        store = web.session.DiskStore('sessions')
        session = web.session.Session(app, store, 
            initializer={'is_logged' : False})
        web.config._session = session
    else:
        session = web.config._session

def get_session():
    return web.config._session
    
def is_logged():
    return get_session().is_logged
    
def login(user):
    s = get_session()
    s['id']=user['id']
    s.is_logged = True
    
def logout():
    get_session().kill()
    
    
    
def get_last_visited_url():
    redirect_url = web.cookies(redirect_url='/').redirect_url
    web.setcookie('redirect_url', '', expires='')
    return redirect_url

def set_last_visited_url():
    url = web.ctx.get('path')
    if url:
        web.setcookie('redirect_url', url)
        
        
def login_required(meth):
    def new(*args):
        if not is_logged():
            return web.redirect('/account')
        return meth(*args)
    return new