REM docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-rocky9 sh

REM docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-ubuntu22.04 sh

REM docker run -it --name ubi8-test --rm redhat/ubi8:8.8 sh
docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-ubi8.8 sh
REM docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-ubi9 sh

REM -- Test commands
REM cat /etc/os-release
REM bin/connectconsole -i  (will crash)
REM bin/connectconsole -i -g 
REM > GetSTKVersion /
REM > GetReport / OpenGL (blank)
REM bin/connectconsole -i -g -n (will warn about Urban Prop extenson)