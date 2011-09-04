# -*- coding: utf-8 -*-

pre_fix = 'controllers.'

urls=(
    '/login',                    pre_fix+'todo.Login',
    '/logout',                pre_fix+'todo.Logout',
    '/admin/edit/zb',       pre_fix+'todo.View_ZB',
    '/admin/ac/zb/',        pre_fix+'todo.ZB',
    '/admin/edit/formsclass',        pre_fix+'ac.View_formsclass',
    '/admin/ac/formsclass/',        pre_fix+'ac.formsclass',
    '/admin/edit/nd',        pre_fix+'ac.View_nd',
    '/admin/ac/nd/',        pre_fix+'ac.nd',
    '/admin/edit/unit',        pre_fix+'ac.View_unit',
    '/admin/ac/unit/',        pre_fix+'ac.unit',
    '/admin/edit/forms',        pre_fix+'ac.View_forms',
    '/admin/ac/forms/',        pre_fix+'ac.forms',
    '/admin/ac/2forms/',        pre_fix+'2form.tojs',
    '/admin/ac/grid/',        pre_fix+'2form.togrid',
)