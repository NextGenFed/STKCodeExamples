REM docker build  -t ansys/stk/stk-engine-graphics:12.4.0-centos7 .

docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.4.0-rocky8 -t ansys/stk/stk-engine-graphics:12.4.0-rocky8 .
