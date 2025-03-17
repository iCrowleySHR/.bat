rem - Não mostra para os usuários os comandos executados. -
@echo off


rem - Limpa o terminal. -
cls

rem - É um ponto de ancoragem. -
:menu
cls

rem - Troca a cor do terminal, letra e fundo. -
color 0a

rem - Mostra a data do dia. -
date /t

rem - Pulou uma linha
echo.

rem - Mostra o nome do computador e usuário. Mostra também as opções. -
echo Computador: %computername%        Usuario: %username%
echo.
                   
echo            MENU TAREFAS
echo.
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Fazer Backup                  *
echo * 3. Escanear Disco Local          *
echo * 4. Painel de Controle            *
echo * 5. Sair                          * 
echo  ==================================

rem - Pede pro usuário escolher uma opção. Cria uma variavel e atrela um dado para opcao informada pelo usuário
set /p opcao= Escolha uma opcao: 
echo ------------------------------

rem - Verifica qual valor está na opcao e roda o ponto de ancoragem referente ao que usuário escolheu.
rem - Se opcao é igual a 1. se for rodar o goto (go to) opcao1 (ponto de ancoragem).
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6
rem - GEQ = Maior ou igual

rem - Ponto de ancoragem que roda comandos no CLi apagar os dados da lixeira e avisa o usuário e volta para o ponto de ancoragem :menu.
:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

rem - Ponto de ancoragem que roda comandos no CLI para fazer backup e avisa o usuário e volta para o ponto de ancoragem :menu.
:opcao2
cls

rem - *.* = Copiar todos os arquivos.de todas extensões.
rem - Copia da pasta documentos para color na pasta Desktop
xcopy /T /C C:\Users\crodr\Documents\*.* C:\Users\crodr\Desktop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

rem - Ponto de ancoragem que roda comandos que verifica a saúde do dispositivo de armazenamento.
:opcao3
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
rem -  Verifica a saude do disco rígido C
chkdsk c:
pause
goto menu

:opcao4
cls
WINWORD.exe
pause
goto menu

:opcao5
cls
exit

:opcao6
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu *
echo ==============================================
pause
goto menu