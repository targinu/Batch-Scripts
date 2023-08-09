@echo off
title Pedra, Papel, Tesoura, Lagarto, Spock
mode 75,30
color 02
echo.
echo =========================================
set /p user=Digite seu nome:
echo.
echo                    (o o)
echo ------------------+-----+----------------
echo =========================================
echo         Bem-Vindo ao JO-KEN-PO
echo                %user%!
echo =========================================
echo.
pause > nul
:escolher
set /a comp=(%RANDOM% %% 5) +1
echo =========================================
echo             Escolha uma opcao
echo =========================================
echo [1] Pedra
echo [2] Papel
echo [3] Tesoura
echo [4] Lagarto
echo [5] Spock
echo [6] Encerrar Jogo
echo [7] Regras
echo.
set /p op=Digite a opcao desejada : 
if %op% == 1 (goto:Pedra)
if %op% == 2 (goto:Papel)
if %op% == 3 (goto:Tesoura)
if %op% == 4 (goto:Lagarto)
if %op% == 5 (goto:Spock)
if %op% == 6 (goto:Encerrar)
if %op% == 7 (goto:Regras) else (
	echo.
	echo --------------------
	echo Opcao Invalida !
	echo --------------------
	pause > nul
	goto:escolher)


:Pedra
	if %op%==1 (
	if %comp%==1 (
	echo.
	echo ------------------------
	echo      Pedra vs Pedra
	echo       Nada acontece
	echo          Empate!
	echo ------------------------
	set /a empates=%empates% + 1
	pause > nul
	goto:placar
	)
	)

	if %op%==1 (
	if %comp%==2 (
	echo.
	echo ------------------------
	echo      Pedra vs Papel
	echo   O Papel cobre a Pedra
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==1 (
	if %comp%==3 (
	echo.
	echo ------------------------
	echo      Pedra vs Tesoura
	echo A Pedra quebra a Tesoura
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==1 (
	if %comp%==4 (
	echo.
	echo ------------------------
	echo      Pedra vs Lagarto
	echo A Pedra esmaga o Lagarto
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==1 (
	if %comp%==5 (
	echo.
	echo ------------------------
	echo      Pedra vs Spock
	echo O Spock Vaporiza a Pedra
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

:Papel
	if %op%==2 (
	if %comp%==1 (
	echo.
	echo ------------------------
	echo      Papel vs Pedra
	echo  O papel cobre a Pedra
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==2 (
	if %comp%==2 (
	echo.
	echo ------------------------
	echo      Papel vs Papel
	echo      Nada acontece
	echo          Empate!
	echo ------------------------
	set /a empates=%empates% + 1
	pause > nul
	goto:placar
	)
	)

	if %op%==2 (
	if %comp%==3 (
	echo.
	echo ------------------------
	echo      Papel vs Tesoura
	echo  A Tesoura corta o Papel
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==2 (
	if %comp%==4 (
	echo.
	echo ------------------------
	echo      Papel vs Lagarto
	echo   O Lagarto come o Papel
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==2 (
	if %comp%==5 (
	echo.
	echo ------------------------
	echo      Papel vs Spock
	echo  O Papel refuta o Spock
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

:Tesoura
	if %op%==3 (
	if %comp%==1 (
	echo.
	echo ------------------------
	echo      Tesoura vs Pedra
	echo A pedra quebra a Tesoura
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==3 (
	if %comp%==2 (
	echo.
	echo ------------------------
	echo      Tesoura vs Papel
	echo  A Tesoura corta o Papel
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==3 (
	if %comp%==3 (
	echo.
	echo ------------------------
	echo      Tesoura vs Tesoura
	echo        Nada acontece
	echo          Empate!
	echo ------------------------
	set /a empates=%empates% + 1
	pause > nul
	goto:placar
	)
	)

	if %op%==3 (
	if %comp%==4 (
	echo.
	echo ------------------------
	echo      Tesoura vs Lagarto
	echo  A Tesoura mata o Lagarto
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==3 (
	if %comp%==5 (
	echo.
	echo ------------------------
	echo      Tesoura vs Spock
	echo O Spock quebra a Tesoura
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

:Lagarto
	if %op%==4 (
	if %comp%==1 (
	echo.
	echo ------------------------
	echo      Lagarto vs Pedra
	echo A Pedra esmaga o Lagarto
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==4 (
	if %comp%==2 (
	echo.
	echo ------------------------
	echo      Lagarto vs Papel
	echo  O Lagarto come o Papel
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==4 (
	if %comp%==3 (
	echo.
	echo ------------------------
	echo      Lagarto vs Tesoura
	echo  A Tesoura mata o Lagarto
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==4 (
	if %comp%==4 (
	echo.
	echo ------------------------
	echo      Lagarto vs Lagarto
	echo        Nada acontece
	echo          Empate!
	echo ------------------------
	set /a empates=%empates% + 1
	pause > nul
	goto:placar
	)
	)

	if %op%==4 (
	if %comp%==5 (
	echo.
	echo ------------------------
	echo      Lagarto vs Spock
	echo O Lagarto envenena o Spock
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

:Spock
	if %op%==5 (
	if %comp%==1 (
	echo.
	echo ------------------------
	echo      Spock vs Pedra
	echo O Spock Vaporiza a Pedra
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==5 (
	if %comp%==2 (
	echo.
	echo ------------------------
	echo      Spock vs Papel
	echo  O Papel refuta o Spock
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==5 (
	if %comp%==3 (
	echo.
	echo ------------------------
	echo      Spock vs Tesoura
	echo O Spock quebra a Tesoura
	echo          Ganhou!
	echo ------------------------
	set /a vitorias=%vitorias% + 1 
	pause > nul
	goto:placar
	)
	)

	if %op%==5 (
	if %comp%==4 (
	echo.
	echo ------------------------
	echo      Spock vs Lagarto
	echo O Lagarto envenena o Spock
	echo          Perdeu!
	echo ------------------------
	set /a derrotas=%derrotas% +1
	pause > nul
	goto:placar
	)
	)

	if %op%==5 (
	if %comp%==5 (
	echo.
	echo ------------------------
	echo      Spock vs Spock
	echo      Nada acontece
	echo          Empate!
	echo ------------------------
	set /a empates=%empates% + 1
	pause > nul
	goto:placar
	)
	)

:Encerrar
set /p finalizar=Deseja realmente sair do jogo? [S/N]:
 	if /I %finalizar% == s (exit) else (
 		cls
 		goto:escolher)

:Regras
cls
echo REGRAS 
echo.
echo Pedra 
echo -----------------------------------------------------------------------
echo Empata com Pedra, Ganha de Tesoura e Lagarto, Perde para Papel e Spock.
echo.
echo.
echo Papel
echo -----------------------------------------------------------------------
echo Empata com Papel, Ganha de Pedra e Spock, Perde para tesoura e Lagarto.
echo.
echo.
echo Tesoura
echo -----------------------------------------------------------------------
echo Empata com Tesoura, Ganha de Papel e Lagarto, Perde para Pedra e Spock.
echo.
echo.
echo Lagarto
echo -----------------------------------------------------------------------
echo Empata com Lagarto, Ganha de Papel e Spock, Perde para Pedra e Tesoura.
echo.
echo.
echo Spock
echo -----------------------------------------------------------------------
echo Empata com Spock, Ganha de Tesoura e Pedra, Perde para Papel e Lagarto.
pause > nul
cls
goto:escolher

:placar
echo =========================================
echo                  PLACAR
echo =========================================
set /a vitorias=%vitorias% + 0
echo QTDE DE VITORIAS: %vitorias%
set /a derrotas=%derrotas% + 0
echo QTDE DE DERROTAS: %derrotas%
set /a empates=%empates% + 0
echo QTDE DE EMPATES : %empates%
pause > nul
cls
goto:escolher