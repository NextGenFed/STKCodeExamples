REM docker run -it --env-file ../configuration/licensing.env --name stk-graphics --rm ansys/stk/stk-engine-graphics:12.4.0-centos7 sh
REM docker run -it --env-file ../configuration/licensing.env --name stk-graphics --rm ansys/stk/stk-engine-graphics:12.4.0-rocky8 sh

docker run -it --env-file ../configuration/licensing.env --name stk-graphics --rm ansys/stk/stk-engine-graphics:12.4.0-ubuntu22 sh

