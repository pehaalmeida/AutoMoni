@echo off
:HOMEPAG
cls
color 0a
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo      :::     :::    ::: :::::::::::  ::::::::      ::::    ::::   ::::::::  ::::    ::: :::::::::::
echo    :+: :+:   :+:    :+:     :+:     :+:    :+:     +:+:+: :+:+:+ :+:    :+: :+:+:   :+:     :+:    
echo   +:+   +:+  +:+    +:+     +:+     +:+    +:+     +:+ +:+:+ +:+ +:+    +:+ :+:+:+  +:+     +:+   
echo  +#++:++#++: +#+    +:+     +#+     +#+    +:+     +#+  +:+  +#+ +#+    +:+ +#+ +:+ +#+     +#+    
echo  +#+     +#+ +#+    +#+     +#+     +#+    +#+     +#+       +#+ +#+    +#+ +#+  +#+#+#     +#+   
echo  #+#     #+# #+#    #+#     #+#     #+#    #+#     #+#       #+# #+#    #+# #+#   #+#+#     #+#    
echo  ###     ###  ########      ###      ########      ###       ###  ########  ###    #### ########### 
echo.
echo.
echo       Seja Bem Vindo ao AUTOMONI
echo       VERSAO DO AUTOMONI %AutoMoniVer%
echo.
echo       Desenvolvido por PEDRO AUGUSTO    
echo.   
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
REM Pergunta sobre o IP e nome do site a serem monitorados
set /p SiteMonitor=Digite o IP que sera monitorado:
cls
color 0a
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo      :::     :::    ::: :::::::::::  ::::::::      ::::    ::::   ::::::::  ::::    ::: :::::::::::
echo    :+: :+:   :+:    :+:     :+:     :+:    :+:     +:+:+: :+:+:+ :+:    :+: :+:+:   :+:     :+:    
echo   +:+   +:+  +:+    +:+     +:+     +:+    +:+     +:+ +:+:+ +:+ +:+    +:+ :+:+:+  +:+     +:+   
echo  +#++:++#++: +#+    +:+     +#+     +#+    +:+     +#+  +:+  +#+ +#+    +:+ +#+ +:+ +#+     +#+    
echo  +#+     +#+ +#+    +#+     +#+     +#+    +#+     +#+       +#+ +#+    +#+ +#+  +#+#+#     +#+   
echo  #+#     #+# #+#    #+#     #+#     #+#    #+#     #+#       #+# #+#    #+# #+#   #+#+#     #+#    
echo  ###     ###  ########      ###      ########      ###       ###  ########  ###    #### ########### 
echo.
echo.
echo       IP PARA MONITORAR: %SiteMonitor%
echo.
echo       Desenvolvido por PEDRO AUGUSTO    
echo.   
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
REM Pergunta sobre o IP e nome do site a serem monitorados
set /p SiteNome=Digite o nome para Registro:

REM Substituir espaços por hífens no nome do site
set "SiteNome=%SiteNome: =-%"

cls
color 0a
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo      :::     :::    ::: :::::::::::  ::::::::      ::::    ::::   ::::::::  ::::    ::: :::::::::::
echo    :+: :+:   :+:    :+:     :+:     :+:    :+:     +:+:+: :+:+:+ :+:    :+: :+:+:   :+:     :+:    
echo   +:+   +:+  +:+    +:+     +:+     +:+    +:+     +:+ +:+:+ +:+ +:+    +:+ :+:+:+  +:+     +:+   
echo  +#++:++#++: +#+    +:+     +#+     +#+    +:+     +#+  +:+  +#+ +#+    +:+ +#+ +:+ +#+     +#+    
echo  +#+     +#+ +#+    +#+     +#+     +#+    +#+     +#+       +#+ +#+    +#+ +#+  +#+#+#     +#+   
echo  #+#     #+# #+#    #+#     #+#     #+#    #+#     #+#       #+# #+#    #+# #+#   #+#+#     #+#    
echo  ###     ###  ########      ###      ########      ###       ###  ########  ###    #### ########### 
echo.
echo.
echo       CONFIRMACAO DE DADOS DE MONITORAMENTO
echo.
echo       IP PARA MONITORAR: %SiteMonitor%
echo       NOME DO REGISTRO: %SiteNome%
echo.
echo       Desenvolvido por PEDRO AUGUSTO    
echo.   
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.

REM Perguntar se os dados estão corretos
set /p StartMONITOR=Deseja iniciar o monitoramento ? (s/n):

REM Verificar a resposta
if /i "%StartMONITOR%"=="não" goto HOMEPAG
if /i "%StartMONITOR%"=="nao" goto HOMEPAG
if /i "%StartMONITOR%"=="n" goto HOMEPAG
if /i "%StartMONITOR%"=="no" goto HOMEPAG


REM Base de Dados

set AutoMoniVer=1.0.3.1
mkdir C:\linxRC\AUTOMONI\logs\
REM mkdir C:\linxRC\AUTOMONI\logs\%SiteNome%

REM set SiteMonitor=192.168.168.240
REM set SiteNome=SERVIDOR-DEGUST-PDV
set DATAHOJE=%DATE:~0,2%%DATE:~3,2%%DATE:~6,4%
set QntTesteErro=0

cls
:MONITOR
cls
color 0a
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo      :::     :::    ::: :::::::::::  ::::::::      ::::    ::::   ::::::::  ::::    ::: :::::::::::
echo    :+: :+:   :+:    :+:     :+:     :+:    :+:     +:+:+: :+:+:+ :+:    :+: :+:+:   :+:     :+:    
echo   +:+   +:+  +:+    +:+     +:+     +:+    +:+     +:+ +:+:+ +:+ +:+    +:+ :+:+:+  +:+     +:+   
echo  +#++:++#++: +#+    +:+     +#+     +#+    +:+     +#+  +:+  +#+ +#+    +:+ +#+ +:+ +#+     +#+    
echo  +#+     +#+ +#+    +#+     +#+     +#+    +#+     +#+       +#+ +#+    +#+ +#+  +#+#+#     +#+   
echo  #+#     #+# #+#    #+#     #+#     #+#    #+#     #+#       #+# #+#    #+# #+#   #+#+#     #+#    
echo  ###     ###  ########      ###      ########      ###       ###  ########  ###    #### ########### 
echo.
echo.
echo       IP PARA MONITORAR: %SiteMonitor%                
echo       NOME DO REGISTRO: %SiteNome%   
echo.                 
echo       X - ERROS REGISTRADOS: %QntTesteErro%
echo.
echo       Caso queira cancelar, utilize "Ctrl + C"
echo.
echo       Desenvolvido por PEDRO AUGUSTO
echo       VERSAO DO AUTOMONI %AutoMoniVer%
echo.   
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

:MONITOR-Loop
ping %SiteMonitor% -n 1 | find "TTL=" >nul
if errorlevel 1 (
    GOTO MONITORERRO
) else (
    GOTO :MONITOR-Loop
)
GOTO :MONITOR-Loop

:MONITORERRO
cls
color CF
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo                           :::::::::: :::::::::  :::::::::   ::::::::  
echo                           :+:        :+:    :+: :+:    :+: :+:    :+: 
echo                           +:+        +:+    +:+ +:+    +:+ +:+    +:+ 
echo                           +#++:++#   +#++:++#:  +#++:++#:  +#+    +:+ 
echo                           +#+        +#+    +#+ +#+    +#+ +#+    +#+ 
echo                           #+#        #+#    #+# #+#    #+# #+#    #+# 
echo                           ########## ###    ### ###    ###  ########  
echo.
Echo                           X - Ocorreu uma perda de comunicacao - X
echo.
echo       IP PARA MONITORAR: %SiteMonitor%
echo       NOME DO REGISTRO: %SiteNome%
echo       Momento do Erro: %date% %time:~0,2%:%time:~3,2%:%time:~6,2%
echo.
echo       Foi Feito Registro Nos Logs
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
set /a QntTesteErro= QntTesteErro+1
echo REGISTRO DE ERRO: VERSÃO DO AUTOMONI:%AutoMoniVer%  REGISTRO: %SiteNome% - IP: Monitorada %SiteMonitor% - DATA E HORA DO ERRO: %date% %time:~0,2%:%time:~3,2%:%time:~6,2% >> C:\linxRC\AUTOMONI\logs\%DATAHOJE%_%SiteNome%.txt
timeout 10 && GOTO :MONITOR
GOTO :MONITOR

REM Desenvolvido por PEDRO AUGUSTO