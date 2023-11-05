REM docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-ubuntu22 sh

REM docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-rocky9 sh

docker run -it --env-file ../configuration/licensing.env --name stk-baseline --rm ansys/stk/stk-engine-baseline:12.6.0-ubi9 sh
