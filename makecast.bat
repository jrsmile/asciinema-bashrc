@echo off
certutil -encode %1 tmp.b64 && findstr /v /c:- tmp.b64 > data.html && del tmp.b64
type header.html data.html footer.html > %2
del /F /Q data.html
