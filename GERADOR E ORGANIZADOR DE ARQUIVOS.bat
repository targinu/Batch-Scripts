@echo off
title Gerenciamento de Arquivos
mode 60,20
color 02
:inicio
cls
echo.
echo ----------------------------
echo  GERENCIAMENTO DE ARQUIVOS
echo ----------------------------
echo [G] GERAR ARQUIVOS
echo [O] ORGANIZAR ARQUIVOS
echo [E] ENCERRRAR SCRIPT
echo ----------------------------
set /p op=Escolha a opcao..: 
if %op% == G (goto:gerar)
if %op% == O (goto:Organizar)
if %op% == E (goto:sair) else (
	echo.
	echo --------------------
	echo Opcao Invalida !
	echo --------------------
	pause > nul
	goto:inicio)

:gerar
 set /p nome_arquivo=Digite o nome do arquivo:
 set /p qtde=Digite a qtde de arquivos:
 set /p ext=Digite a extensao do a ser gerado:
 d:
 cd\AULAS2\SI
 for /L %%n in (1,1,%qtde%) do echo Aulas de SI - Batch > %nome_arquivo%%%n.%ext%
 echo.
 echo -------------------------------
 echo Arquivos Gerados com Sucesso !
 echo -------------------------------
 pause > nul
 goto:inicio

 :Organizar
 set /p pasta=Digite o nome da pasta a ser criada:
 set /p ext=Digite a extensao do arquivo a ser organizado:
 md %pasta%
 move *.%ext% D:\AULAS2\SI\%pasta%
 echo.
 echo -----------------------------------
 echo Arquivos Organizados com Sucesso !
 echo -----------------------------------
 pause > nul
 goto:inicio

 :sair
 	set /p finalizar=Deseja realmente sair? [S/N]:
 	if /I %finalizar% == s (exit) else (
 		goto:inicio)