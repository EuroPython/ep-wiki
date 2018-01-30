#!python
# -*- coding: utf-8 -*-
import os

def application(environ, start_request):
    os.environ['TRAC_ENV'] = '/usr/src/wiki/trac/europython'
    os.environ['PYTHON_EGG_CACHE'] = '/usr/src/wiki/trac/europython/eggs'
    from trac.web.main import dispatch_request
    return dispatch_request(environ, start_request)
