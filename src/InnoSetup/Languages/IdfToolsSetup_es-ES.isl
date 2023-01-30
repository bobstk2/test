﻿; Copyright 2019-2020 Espressif Systems (Shanghai) CO LTD
; SPDX-License-Identifier: Apache-2.0

[LangOptions]
LanguageName=Spanish - Spain
LanguageID=$040A

[CustomMessages]
PreInstallationCheckTitle=Revisión del sistema previo a la instalación
PreInstallationCheckSubtitle=Verificación de ambiente
SystemCheckStart=Empezando la verificación del sistema ...
SystemCheckForDefender=Verificación de Windows Defender
SystemCheckHint=Pista
SystemCheckResultFound=ENCONTRADO
SystemCheckResultNotFound=NO ENCONTRADO
SystemCheckResultOk=OK
SystemCheckResultFail=Falla
SystemCheckResultError=ERR
SystemCheckResultWarn=WARN
SystemCheckStopped=Verificación detenida.
SystemCheckStopButtonCaption=Parar
SystemCheckComplete=Verificación completa.
SystemCheckForComponent=Verificando si ha instalado
SystemCheckUnableToExecute=No es posible ejecutar
SystemCheckUnableToFindFile=No es posible encontrar el archivo
SystemCheckRemedyMissingPip=Por favor usar una versión soportada de Python disponible en la siguiente pantalla.
SystemCheckRemedyMissingVirtualenv=Por favor instalar virtualenv and reintente la instalación. Comandos sugeridos:
SystemCheckRemedyCreateVirtualenv=Por favor usar una versión soportada de Python disponible en la siguiente pantalla.
SystemCheckRemedyPythonInVirtualenv=Por favor usar una versión soportada de Python disponible en la siguiente pantalla.
SystemCheckRemedyBinaryPythonWheel=Por favor usar una versión soportada de Python disponible en la siguiente pantalla.
SystemCheckRemedyFailedHttpsDownload=Por favor usar una versión soportada de Python disponible en la siguiente pantalla.
SystemCheckRemedyFailedSubmoduleRun=Python contiene un módulo de subprocess.run destinado a Python 2. Por favor desinstale el módulo. Comando sugerido:
SystemCheckApplyFixesButtonCaption=Aplicar arreglos
SystemCheckFullLogButtonCaption=Log completo
SystemCheckApplyFixesConsent=Quiere aplicar los comandos con los arreglos sugeridos para actualizar su ambiente de Windows y empezar una nueva verificación de sistema ?
SystemCheckFixesSuccessful=Los arreglos se han aplicado con éxito.
SystemCheckFixesFailed=Ha fallado la aplicación de arreglos. Consulte el log completo.
SystemCheckNotCompleteConsent=Verificación del sistema no está completa. Quiere proceder saltando la verificación?
SystemCheckRootCertificates=Verificando certificados
SystemCheckRootCertificateWarning=No es posible carga data del servidor
SystemCheckForLongPathsEnabled=Verificando "Long Paths Enabled" en el registro de Windows
SystemCheckRemedyFailedLongPathsEnabled=Por favor definir el valor de registro HKLM\SYSTEM\CurrentControlSet\Control\FileSystem\LongPathsEnabled a 1. La operación require permisos de Administrador. Comando:
SystemCheckRemedyApplyFixInfo=Hacer clic en el botón 'Aplicar arreglos' después de finalizar la verificación de sistema.
CreateShortcutStartMenu=Menu Iniciar
CreateShortcutDesktop=Escritorio
CreateShortcutPowerShell=PowerShell - Crear atajos para ESP-IDF Tools:
CreateShortcutCMD=CMD - Crear atajos para ESP-IDF Tools:
OptimizationTitle=Optimización:
OptimizationWindowsDefender=Registrar los ejecutables de ESP-IDF Tools como exclusiones de Windows Defender. El registro podría mejorar el tiempo de compilación en aproximadamente un 30%. El instalador implementó los archivos en el sistema operativo y el software antivirus los escaneó. El registro de exclusiones requiere la elevación de privilegios. Las exclusiones se pueden agregar / eliminar mediante la herramienta idf-env. Más detalles: https://github.com/espressif/idf-env.
OptimizationDownloadMirror=Utilice el servidor de descarga Espressif en lugar de descargar paquetes de herramientas de GitHub.
ErrorTooLongIdfPath=La longitud de la ruta a ESP-IDF supera los 90 caracteres. Una ruta demasiado larga puede causar problemas a algunas herramientas de compilación. Elija una ruta más corta.
ErrorTooLongToolsPath=La longitud de la ruta a ESP-IDF Tools supera los 90 caracteres. Una ruta demasiado larga puede causar problemas a algunas herramientas de compilación. Elija una ruta más corta.
ComponentIde=Integraciones de desarrollo
ComponentEclipse=Espressif-IDE
ComponentRust=Soporte del lenguaje Rust
ComponentRustGnu=Rust ESP toolchain for x86_64-pc-windows-gnu (requires MinGW)
ComponentRustGnuMinGW=MinGW x86_64
ComponentRustMsvc=Rust ESP toolchain for x86_64-pc-windows-msvc (requires Windows 10 SDK and MSVC C++)
ComponentRustMsvcVctools=Windows 10 SDK and MSVC C++
ComponentRustBinaryCrates=Binary crates for Rust (cargo-espflash, cargo-generate, ldproxy)
ComponentDesktopShortcut=Atajo de Escritorio
ComponentPowerShell=PowerShell
ComponentPowerShellWindowsTerminal=Menú de selección de Windows Terminal
ComponentStartMenuShortcut=Atajo de menú Inicio
ComponentCommandPrompt=Símbolo del sistema
ComponentDrivers=Drivers - Requiere elevar los privilegios
ComponentDriverEspressif=Espressif - Soporte WinUSB para JTAG (ESP32-C3/S3)
ComponentDriverFtdi=FTDI Chip - Puerto Virtual COM para USB (WROVER, WROOM)
ComponentDriverSilabs=Silicon Labs - Puerto Virtual COM para USB CP210x (ESP boards)
ComponentDriverWch=WCH - Virtual COM Port para USB CH343/CH9102 (LilyGo boards)
ComponentTarget=Chip Targets - más detalles https://products.espressif.com/
ComponentTargetEsp32=ESP32
ComponentTargetEsp32c=ESP32-C Series
ComponentTargetEsp32c2=ESP32-C2 (ESP-IDF v5.0+)
ComponentTargetEsp32c3=ESP32-C3 (ESP-IDF v4.3+)
ComponentTargetEsp32c6=ESP32-C6 (ESP-IDF v5.1+)
ComponentTargetEsp32s=ESP32-S Series
ComponentTargetEsp32s3=ESP32-S3 (ESP-IDF v4.4+)
ComponentTargetEsp32s2=ESP32-S2 (ESP-IDF v4.2+)
ComponentOptimization=Optimización
ComponentOptimizationEspressifDownload=Usar enlaces de descarga Espressif en vez de GitHub
InstallationFull=Instalación completa
InstallationMinimal=Instalación mínima
InstallationCustom=Instalación personalizada
RunInstallGit=Instalando Git
RunEclipse=Ejecutar ambiente Espressif-IDE
RunPowerShell=Ejecutar ambiente ESP-IDF PowerShell
RunCmd=Ejecutar ambiente ESP-IDF Command Prompt
InstallationCancelled=La instalación ha sido cancelada.
InstallationFailed=La instalación ha fallado con el código:
InstallationFailedAtStep=La instalación ha fallado en el paso:
DirectoryAlreadyExists=El directorio ya existe y no está vacío:
ChooseDifferentDirectory=Por favor elija un directorio diferente.
SpacesInPathNotSupported=El sistema de compilación ESP-IDF no soporta espacios en las rutas de archivos.
SpecialCharactersInPathNotSupported=La instalación de la versión seleccionada de IDF no soporta rutas con caracteres especiales.
EspIdfVersion=Versión de ESP-IDF
ChooseEspIdfVersion=Por favor elija la versión de ESP-IDF a instalar
MoreInformation=Para más información sobre las versiones de ESP-IDF, consulte
EspIdfVersionInformationUrl=https://docs.espressif.com/projects/esp-idf/en/latest/versions.html
ChooseEspIdfDirectory=Elija un directorio para instalar ESP-IDF
DownloadOrUseExistingEspIdf=Descarga o usa ESP-IDF
DownloadOrUseExistingEspIdfDetail=Por favor elija una versión de ESP-IDF a descargar, o utilice una copia existente de ESP-IDF
AvailableEspIdfVersions=Versiones de ESP-IDF disponibles
ChooseExistingEspIdfDirectory=Elija un directorio existente de ESP-IDF
DirectoryDoesNotExist=El directorio no existe:
UnableToFindIdfpy=No se puede encontrar idf.py en:
UnableToFindRequirementsTxt=No se puede encontrar requirements.txt en
EspIdfToolsShouldNotBeLocatedUnderSource=Tools no deben situarse dentro del directorio ESP-IDF elegido en la página anterior. Por favor elija una ubicación diferente para el directorio Tools.
PythonVersionChoice=Elección de Python
PythonVersionChoiceDetail=Por favor elija la versión de Python
AvailablePythonVersions=Versiones de Python disponible
UnableToWriteConfiguration=No es posible escribir la configuración ESP-IDF a
CheckPermissionToFile=Por favor revise el acceso al archivo y reintente la instalación.
SwitchBranch=Cambiando de rama
FinishingEspIdfInstallation=Finalizando la instalación ESP-IDF
CleaningUntrackedDirectories=Limpiando directorios sin seguimiento.
ExtractingEspIdf=Extrayendo ESP-IDF
SettingUpReferenceRepository=Configurando repositorio de referencia
DownloadingEspIdf=Descargando ESP-IDF
UsingGitToClone=Usando git para clonar el repositorio ESP-IDF Using git to clone ESP-IDF repository
CopyingEspIdf=Copiando ESP-IDF al directorio destino
InstallingEspIdfTools=Instalando ESP-IDF tools
CheckingPythonVirtualEnvSupport=Revisando soporte de Python virtualenv
CreatingPythonVirtualEnv=Creando ambiente de Python
InstallingPythonVirtualEnv=Instalando ambiente de Python
RepackingRepository=Reempaque del repositorio
UpdatingSubmodules=Actualizando submódulos
UpdatingFileMode=Actualizando fileMode
UpdatingFileModeInSubmodules=Actualizando fileMode en submódulos
UpdatingNewLines=Actualizando newlines
UpdatingNewLinesInSubmodules=Actualizando newlines en submódulos
FailedToCreateShortcut=Se ha fallado al crear el atajo:
ExtractingPython=Extrayendo intérprete de Python
UsingEmbeddedPython=Utilizando Embedded Python
ExtractingGit=Extrayendo Git
UsingEmbeddedGit=Utilizando Embedded Git
Extracting=Extrayendo...
InstallationLogCreated=El log de instalación se ha creado, puede contener más información sobre el problema.
DisplayInstallationLog=Mostrar el log de la instalación ahora?
UsingPython=Usando Python
UsingGit=Usando Git
DownloadGitForWindows=Se descargará e instalará Git para Windows
UsingExistingEspIdf=Usando copia existente de ESP-IDF:
InstallingNewEspIdf=Se instalará ESP-IDF
EspIdfToolsDirectory=Directorio IDF Tools (IDF_TOOLS_PATH):
DownloadEspIdf=Descargar ESP-IDF
UsingExistingEspIdfDirectory=Usar un directorio existente de ESP-IDF
InstallingDrivers=Instalando drivers
InstallingRust=Instalando lenguaje Rust
SystemCheckToolsPathSpecialCharacter=System code page is set to 65001 and Tools path contains special character. It's not possible to install Espressif-IDE on the path with a special character due to the limitation of JRE. Choose Tools location without special characters.
SystemCheckTmpPathSpecialCharacter=System code page is set to 65001 and environment variable TMP contains special character. It's not possible to start Espressif-IDE when TMP contains character due to the limitation of JRE. Set TMP variable to the path without special characters and restart the installation.
SystemCheckActiveCodePage=Active code page:
SystemCheckUnableToDetermine=unable to determine
SystemVersionTooLow=Too old version of operating system. Please use supported version of Windows.
WindowsVersion=Windows version
SystemCheckAlternativeMirror=Testing alternative mirror
ComponentOptimizationGiteeMirror=Git mirror gitee.com/EspressifSystems/esp-idf
ComponentOptimizationGitShallow=Shallow clone (--depth 1)
SummaryComponents=Components
SummaryDrivers=Drivers
SummaryTargets=Targets
SummaryOptimization=Optimization
ComponentToitJaguar=Toit language support - Jaguar live reloading tool (jag.exe)
InstallingToit=Installing Toit language
ComponentJdk=Amazon Corretto 11 JDK
SettingEnvironmentVariable=Setting environment variable
SystemCheckEnvironmentVariables=Environment variables
SystemCheckPathExtError=PATHEXT does not contain .EXE
