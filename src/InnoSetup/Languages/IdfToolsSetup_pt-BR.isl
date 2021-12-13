﻿; Copyright 2019-2020 Espressif Systems (Shanghai) CO LTD
; SPDX-License-Identifier: Apache-2.0

[LangOptions]
LanguageName=Portuguese - Brazil
LanguageID=$0416

[CustomMessages]
PreInstallationCheckTitle=Verificação do sistema de pré instalação
PreInstallationCheckSubtitle=Verificação do ambiente
SystemCheckStart=Iniciando verificação do sistema ...
SystemCheckForDefender=Verificação do Windows Defender
SystemCheckHint=Dica
SystemCheckResultFound=ENCONTRADO
SystemCheckResultNotFound=NÃO ENCONTRADO
SystemCheckResultOk=OK
SystemCheckResultFail=FALHOU
SystemCheckResultError=ERR
SystemCheckResultWarn=WARN
SystemCheckStopped=Verificação interrompida.
SystemCheckStopButtonCaption=Parar
SystemCheckComplete=Verificação completa.
SystemCheckForComponent=Verificando instalação
SystemCheckUnableToExecute=Não foi possível executar
SystemCheckUnableToFindFile=Arquivo não encontrado
SystemCheckRemedyMissingPip=Por favor use uma versão suportada do Python no próximo passo.
SystemCheckRemedyMissingVirtualenv=Por favor instale o virtualenv e tente novamente a instalação. Comandos sugeridos:
SystemCheckRemedyCreateVirtualenv=Por favor use a versão suportada do Python no próximo passo.
SystemCheckRemedyPythonInVirtualenv=Por favor use a versão suportada do Python no próximo passo.
SystemCheckRemedyBinaryPythonWheel=Por favor use a versão suportada do Python no próximo passo.
SystemCheckRemedyFailedHttpsDownload=Por favor use a versão suportada do Python no próximo passo.
SystemCheckRemedyFailedSubmoduleRun=O Python contém um módulo subprocess.run utilizado pelo Python 2. Por favor remova este módulo. Comandos sugeridos:
SystemCheckApplyFixesButtonCaption=Aplicar Correções
SystemCheckFullLogButtonCaption=Log completo
SystemCheckApplyFixesConsent=Você quer aplicar os comandos com as correções sugeridas, a fim de atualizar o seu ambiente Windows e iniciar uma nova verificação do sistema?
SystemCheckFixesSuccessful=Correções aplicadas com sucesso.
SystemCheckFixesFailed=Aplicação das correções falhou. Por favor veja o log completo para maiores informações.
SystemCheckNotCompleteConsent=Verificação do sistema não concluída. Deseja prosseguir sem a verificação do sistema?
SystemCheckRootCertificates=Verificando certificados
SystemCheckRootCertificateWarning=Não foi possível carregar dados do servidor.
SystemCheckForLongPathsEnabled=Verificando registro "LongPathsEnabled" no sistema
SystemCheckRemedyFailedLongPathsEnabled=Por favor alterar o registro HKLM\SYSTEM\CurrentControlSet\Control\FileSystem\LongPathsEnabled para 1. A operação requer privilégios de administrador. Comando:
SystemCheckRemedyApplyFixInfo=Clique em 'Aplicar Correções' após a verificação do sistema.
CreateShortcutStartMenu=Menu Iniciar
CreateShortcutDesktop=Desktop
CreateShortcutPowerShell=PowerShell - Criar atalho para o ESP-IDF Tools:
CreateShortcutCMD=CMD - Criar atalho para o ESP-IDF Tools:
OptimizationTitle=Otimização:
OptimizationWindowsDefender=Registrar os executáveis do ESP-IDF Tools nas exclusões do Windows Defender. O registro melhora a performance da compilação em cerca de 30%. O instalador cria arquivos no sistema operacional e o software de anti-vírus os verifica. O registro de exclusões requer elevação de privilégios. As exlusões podem ser adicionadas ou removidas pela ferramenta idf-env. Maiores detalhes em: https://github.com/espressif/idf-env.
OptimizationDownloadMirror=Usar o servidor da Espressif para o download dos pacotes e não utilizar pelo GitHub.
ErrorTooLongIdfPath=O tamanho do caminho do ESP-IDF excedeu os 90 caracteres. Caminhos muito longos podem causar problemas em algumas ferramentas de compilação. Por favor use um caminho mais curto.
ErrorTooLongToolsPath=O tamanho do caminho do ESP-IDF Tools excedeu os 90 caracteres. Caminhos muito longos podem causar problemas em algumas ferramentas de compilação. Por favor use um caminho mais curto.
ComponentIde=Integração de desenvolvimento
ComponentEclipse=Eclipse
ComponentRust=Suporte da linguagem Rust para Xtensa (beta)
ComponentDesktopShortcut=Atalho na Área de Trabalho
ComponentPowerShell=PowerShell
ComponentPowerShellWindowsTerminal=Menu de seleção no Terminal Windows
ComponentStartMenuShortcut=Atalho no Menu Iniciar
ComponentCommandPrompt=Prompt de Comando
ComponentDrivers=Drivers - Requer elevação de privilégios
ComponentDriverEspressif=Espressif - Suporte WinUSB para JTAG (ESP32-C3/S3)
ComponentDriverFtdi=FTDI Chip - Virtual COM Port para USB (WROVER, WROOM)
ComponentDriverSilabs=Silicon Labs - Virtual COM Port para USB CP210x (placas ESP)
ComponentTarget=Chip Targets - Mais detalhes em https://products.espressif.com/
ComponentTargetEsp32=ESP32
ComponentTargetEsp32c3=ESP32-C3
ComponentTargetEsp32s=ESP32-S Series
ComponentTargetEsp32s3=ESP32-S3
ComponentTargetEsp32s2=ESP32-S2
ComponentOptimization=Otimização
ComponentOptimizationEspressifDownload=Utilizar o servidor Espressif para o download e não o GitHub
InstallationFull=Instalação completa
InstallationMinimal=Instalação mínima
InstallationCustom=Instalação personalizada
RunInstallGit=Instalando Git
RunEclipse=Executar ambiente ESP-IDF Eclipse
RunPowerShell=Executar o ambiente ESP-IDF PowerShell
RunCmd=Executar ambiente ESP-IDF Prompt de Comando
InstallationCancelled=A instalação foi cancelada.
InstallationFailed=A instalação falhou com o seguinte código
InstallationFailedAtStep=A instalação falhou no seguinte passo:
DirectoryAlreadyExists=Diretório já existe e não está vazio:
ChooseDifferentDirectory=Por favor escolha um outro diretório.
SpacesInPathNotSupported=O sistema de compilação do ESP-IDF não suporta espaços nos caminhos.
SpecialCharactersInPathNotSupported=A instalação da versão do ESP-IDF selecionada não é suportada com caminhos contendo caracteres especiais.
EspIdfVersion=Versão do ESP-IDF
ChooseEspIdfVersion=Por favor escolha uma versão do ESP-IDF para instalar
MoreInformation=Para maiores informações sobre as versões do ESP-IDF, visite
EspIdfVersionInformationUrl=https://docs.espressif.com/projects/esp-idf/en/latest/versions.html
ChooseEspIdfDirectory=Escolha um diretório para a instalação do ESP-IDF
DownloadOrUseExistingEspIdf=Baixar ou utilizar um ESP-IDF existente
DownloadOrUseExistingEspIdfDetail=Por favor escolha a versão do ESP-IDF para download, ou use o ESP-IDF já existente
AvailableEspIdfVersions=Versões do ESP-IDF disponíveis
ChooseExistingEspIdfDirectory=Escolha o diretório existente do ESP-IDF
DirectoryDoesNotExist=O diretório não existe:
UnableToFindIdfpy=Não foi possível encontrar o arquivo idf.py em
UnableToFindRequirementsTxt=Arquivo requirements.txt não encontrado em
EspIdfToolsShouldNotBeLocatedUnderSource=O diretório Tools não pode ser localizado abaixo do diretório do código fonte do ESP-IDF, selecionado no passo anterior. Por favor selecione uma nova localização para o diretório Tools.
PythonVersionChoice=Escolher Python
PythonVersionChoiceDetail=Por favor escolha a versão do Python
AvailablePythonVersions=Versões do Python disponíveis
UnableToWriteConfiguration=Não foi possível escrever a configuração do ESP-IDF em
CheckPermissionToFile=Por favor verifique a permissão de acesso do arquivo e tente novamente.
SwitchBranch=Alterando o branch
FinishingEspIdfInstallation=Finalizando a instalação do ESP-IDF
CleaningUntrackedDirectories=Limpando os diretórios não rastreados
ExtractingEspIdf=Extraindo o ESP-IDF
SettingUpReferenceRepository=Configurando a referência do repositório
DownloadingEspIdf=Baixando o ESP-IDF
UsingGitToClone=Utilizando o git para clonar o repositório do ESP-IDF
CopyingEspIdf=Copiando o ESP-IDF para o diretório de destino
InstallingEspIdfTools=Instalando o ESP-IDF tools
CheckingPythonVirtualEnvSupport=Verificando o suporte a Python virtualenv
CreatingPythonVirtualEnv=Criando o ambiente Python
InstallingPythonVirtualEnv=Instalando o ambiente Python
RepackingRepository=Re-packing o repositório
UpdatingSubmodules=Atualizando os sub-módulos
UpdatingFileMode=Atualizando o fileMode
UpdatingFileModeInSubmodules=Atualizando o fileMode nos sub-módulos
UpdatingNewLines=Atualizando newlines
UpdatingNewLinesInSubmodules=Atualizando newlines em sub-módulos
FailedToCreateShortcut=Criação do atalho falhou:
ExtractingPython=Extraindo Python Interpreter
UsingEmbeddedPython=Utilizando Embedded Python
ExtractingGit=Extraindo o Git
UsingEmbeddedGit=Utilizando o Embedded Git
Extracting=Extraindo...
InstallationLogCreated=O log de instalação foi criado, ele deve conter maiores informações sobre o problema.
DisplayInstallationLog=Exibir o log de instalação agora?
UsingPython=Utilizando Python
UsingGit=Utilizando Git
DownloadGitForWindows=Será baixado e instalado Git para Windows
UsingExistingEspIdf=Utilizando a cópia existente do ESP-IDF:
InstallingNewEspIdf=Será instalado o ESP-IDF
EspIdfToolsDirectory=Diretório do IDF tools (IDF_TOOLS_PATH):
DownloadEspIdf=Download do ESP-IDF
UsingExistingEspIdfDirectory=Usar o diretório existente do ESP-IDF
InstallingDrivers=Installing drivers
InstallingRust=Installing Rust language
SystemCheckToolsPathSpecialCharacter=System code page is set to 65001 and Tools path contains special character. It's not possible to install Eclipse on the path with a special character due to the limitation of JRE. Choose Tools location without special characters.
SystemCheckTmpPathSpecialCharacter=System code page is set to 65001 and environment variable TMP contains special character. It's not possible to start Eclipse when TMP contains character due to the limitation of JRE. Set TMP variable to the path without special characters and restart the installation.
SystemCheckActiveCodePage=Active code page:
SystemCheckUnableToDetermine=unable to determine
SystemVersionTooLow=Too old version of operating system. Please use supported version of Windows.
WindowsVersion=Windows version
SystemCheckAlternativeMirror=Testing alternative mirror
ComponentOptimizationGiteeMirror=Git mirror gitee.com/EspressifSystems/esp-idf
ComponentOptimizationGitShallow=Shallow clone (--depth 1)
