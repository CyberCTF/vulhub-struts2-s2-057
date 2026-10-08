#!/bin/sh
# actionChain1 redirects to register2 (the redirectAction result with no namespace).
set -e
curl -sS -o /dev/null -D - http://struts2:8080/actionChain1.action | grep -qi '^location:.*register2'
