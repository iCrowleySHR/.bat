@echo off

:menu
cls
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Trocar cor do CLI             * 
echo * 2. Fazer Backup                  *
echo * 3. Abrir navgeador               *
echo * 4. Desligar PC	                *
echo * 5. Sair                          * 
echo  ==================================

set /p cebola= Escolha uma opcao: 

if %cebola% equ 1 goto cebola1
if %cebola% equ 2 goto cebola2
if %cebola% equ 3 goto cebola3
if %cebola% equ 4 goto cebola4
if %cebola% equ 5 goto cebola5
if %cebola% GEQ 6 goto cebola6

:cebola1
cls
color 9d
echo ==================================
echo *      Cor trocada               *
echo ==================================
pause
goto menu

:cebola2
cls
xcopy /T /C C:\Users\crodr\Desktop\aula*.* C:\Users\crodr\Documents\
echo ==================================
echo *Backup concluido para documentos*
echo ==================================
pause
goto menu

:cebola3
cls
start chrome.exe
echo ==================================
echo *     Navegador aberto           *
echo ==================================
pause
goto menu

:cebola4
cls
shutdown /s /t 5
echo ==================================
echo *     Desligando em 5s           *
echo ==================================
pause
goto menu

:cebola5
cls
exit

:cebola6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu