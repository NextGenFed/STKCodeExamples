REM docker run -it --env-file ../configuration/licensing.env --name stk-javaNG --rm ansys/stk/stk-engine-java-ng:12.4.0-rocky8 sh
REM docker run -it --env-file ../configuration/licensing.env --name stk-java --rm ansys/stk/stk-engine-java:12.4.0-rocky8 sh
REM docker run -it --env-file ../configuration/licensing.env --name stk-java --rm ansys/stk/stk-engine-java:12.4.0-rocky9 sh
docker run -it --env-file ../configuration/licensing.env --name stk-java --rm ansys/stk/stk-engine-java:12.6.0-ubi9 sh

REM To test:
REM cd /home/stk/CodeSamples/CustomApplications/Java/AWT_STK_X_NoGraphics
REM ant run