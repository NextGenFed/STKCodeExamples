REM docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.4.0-rocky8 -t ansys/stk/stk-engine-java-ng:12.4.0-rocky8 .
REM docker build  --build-arg baseImage=ansys/stk/stk-engine-graphics:12.6.0-rocky8 -t ansys/stk/stk-engine-java:12.6.0-rocky8 .
REM docker build  --build-arg baseImage=ansys/stk/stk-engine-graphics:12.6.0-rocky9 -t ansys/stk/stk-engine-java:12.6.0-rocky9 .
docker build  --build-arg baseImage=ansys/stk/stk-engine-baseline:12.8.0-ubi9.2m -t ansys/stk/stk-engine-java:12.8.0-ubi9.2m .
