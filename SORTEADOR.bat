@echo off
title NUMEROS ALEATORIOS
mode 75, 30
color 02
echo.
echo =========================================
set /p user=Digite seu nome:
echo.
echo                    (o o)
echo ------------------+-----+----------------
echo =========================================
echo         Bem-Vindo ao Sorteador!
echo                %user%!
echo =========================================
echo.
pause > nul
:inicio
cls
set /a sorteio=(%RANDOM% %% 50) +1

:sorteio
cls
echo.
echo                    (o o)
echo ------------------+-----+----------------
echo =========================================
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
set /a tentativas=%tentativas% + 5
echo  QUANTIDADE DE TENTATIVAS: %tentativas%

if %tentativas%==0 (
echo.
echo -----------------------------------------
echo               Voce perdeu!
echo         O numero sorteado era: %sorteio%
echo -----------------------------------------
echo.
pause > nul
goto:jogarnovamente
)

:tentativa
set /p "chute=DIGITE UM NUMERO: "

if %chute% LSS %sorteio% (
echo.
echo -----------------------------------------
echo          DIGITE UM NUMERO MAIOR!
echo -----------------------------------------
set /a tentativas=%tentativas% - 6
pause > nul
goto:sorteio
)

if %chute% GTR %sorteio% (
echo.
echo -----------------------------------------
echo          DIGITE UM NUMERO MENOR!
echo -----------------------------------------
set /a tentativas=%tentativas% - 6
pause > nul
goto:sorteio
)

if %chute% EQU %sorteio% (
echo.
echo -----------------------------------------
echo         PARABENS, VOCE ACERTOU!
echo        O numero sorteado era: %sorteio%
echo -----------------------------------------
set /a tentativas=%tentativas% - 100
pause > nul
goto:vitoria
)

:jogarnovamente
set /p finalizar=DESEJA JOGAR NOVAMENTE? [S/N]:
if /I %finalizar% == N (exit) else (
cls
goto:inicio)

:vitoria
if %tentativas% LEQ -1 (
set /a tentativas=0
goto:jogarnovamente
)