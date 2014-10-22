#!/usr/bin/env python
"""
Quick-and-dirty script to serve the current directory over http.
This is probably insecure and should only be used for local testing.

Adapted from:
http://www.linuxjournal.com/content/tech-tip-really-simple-http-server-python
"""
import os,sys
import BaseHTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler

port,root = 8899,'.'
if sys.argv[1:]: port = int(sys.argv[1])
host = os.popen('hostname').read().strip()

print 'serving dir: %s' % os.getcwd()
print 'http://%s:%s/' % (host,port)

HandlerClass = SimpleHTTPRequestHandler
ServerClass  = BaseHTTPServer.HTTPServer
Protocol     = "HTTP/1.0"
HandlerClass.protocol_version = Protocol
httpd = ServerClass((host,port), HandlerClass)
httpd.serve_forever()
