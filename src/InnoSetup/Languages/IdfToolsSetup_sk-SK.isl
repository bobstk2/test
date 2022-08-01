﻿; Copyright 2019-2020 Espressif Systems (Shanghai) CO LTD
; SPDX-License-Identifier: Apache-2.0

[LangOptions]
LanguageID=$041b

[CustomMessages]
PreInstallationCheckTitle=Kontrola systému pred inštaláciou
PreInstallationCheckSubtitle=Overenie prostredia
SystemCheckStart=Štart kontroly systému ...
SystemCheckForDefender=Kontrola Windows Defender
SystemCheckHint=Nápoveda
SystemCheckResultFound=NÁJDENÉ
SystemCheckResultNotFound=NENÁJDENÉ
SystemCheckResultOk=OK
SystemCheckResultFail=ZLYHANIE
SystemCheckResultError=CHYBA
SystemCheckResultWarn=VAROVANIE
SystemCheckStopped=Kontrola zastavená.
SystemCheckStopButtonCaption=Zastaviť
SystemCheckComplete=Kontrola hotová.
SystemCheckForComponent=Kontrola inštalovaných komponent
SystemCheckUnableToExecute=Nie je možné spustiť
SystemCheckUnableToFindFile=Nie je možné nájsť súbor
SystemCheckRemedyMissingPip=Použite podporovanú verziu Python-u, ktorú nájdete na nasledujúcej obrazovke.
SystemCheckRemedyMissingVirtualenv=Nainštalujte balík virtualenv a opakujte inštaláciu. Odporúčaný príkaz:
SystemCheckRemedyCreateVirtualenv=Použite podporovanú verziu Python-u, ktorú nájdete na nasledujúcej obrazovke
SystemCheckRemedyPythonInVirtualenv=Použite podporovanú verziu Python-u, ktorú nájdete na nasledujúcej obrazovke
SystemCheckRemedyBinaryPythonWheel=Použite podporovanú verziu Python-u, ktorú nájdete na nasledujúcej obrazovke
SystemCheckRemedyFailedHttpsDownload=Použite podporovanú verziu Python-u, ktorú nájdete na nasledujúcej obrazovke
SystemCheckRemedyFailedSubmoduleRun=Python obsahuje modul subprocess.run, ktorý je určený pre Python 2. Odinštalujte prosím modul. Odporučaný príkaz:
SystemCheckApplyFixesButtonCaption=Opraviť
SystemCheckFullLogButtonCaption=Detaily
SystemCheckApplyFixesConsent=Chcete spustiť aplikovanie opráv Vášho prostredia Windows?
SystemCheckFixesSuccessful=Aplikovanie opráv bolo úspešné.
SystemCheckFixesFailed=Aplikovanie opráv sa nepodarilo. Detailné informácie sú dostupné pod tlačidlom Detaily.
SystemCheckNotCompleteConsent=Kontrola systému ešte nie je hotová. Chcete kontrolu ukončiť a pokračovať bez kontroly?
SystemCheckRootCertificates=Kontrola certifikátov
SystemCheckRootCertificateWarning=Nie je možné spojiť sa so serverom.
SystemCheckForLongPathsEnabled=Kontrola podpory pre "Dlhé cesty" vo Windows registroch
SystemCheckRemedyFailedLongPathsEnabled=Nastavte register HKLM\SYSTEM\CurrentControlSet\Control\FileSystem\LongPathsEnabled na hodnotu 1. Operácia vyžaduje administrátorské oprávnenia. Príkaz:
SystemCheckRemedyApplyFixInfo=Zvoľte tlačidlo 'Opraviť' po dokončení kontroly systému.
CreateShortcutStartMenu=Menu Štart
CreateShortcutDesktop=Plocha
CreateShortcutPowerShell=PowerShell - Vytvoriť skratku pre ESP-IDF Tools:
CreateShortcutCMD=CMD - Vytvoriť skratku pre ESP-IDF Tools:
OptimizationTitle=Optimalizácie:
OptimizationWindowsDefender=Zaregistrovať spustiteľné súbory z ESP-IDF Tools vo výnimkách pre Windows Defender. Registrácia výnimiek môže úrychliť zostavenie programu až o 30%. Inštalátor už zapísal súbory na súborový systém, takže by mali byť skontrolované nainštalovaným antivírusovým softvérom. Registrácia vyžaduje administátorské oprávnenia. Výnimky je tiež možné zaregistrovať/zrušiť pomocou nástroja idf-env. Viac informácií: https://github.com/espressif/idf-env.
OptimizationDownloadMirror=Použiť Espressif download server pre získanie baličkov s nástrojmi (namiesto GitHub-u).
ErrorTooLongIdfPath=Cesta k ESP-IDF je dlhšia ako 90 znakov. Príliš dlhá cesta môže spôsobovať problém niektorým nástrojom. Vyberte prosím kratšiu cestu.
ErrorTooLongToolsPath=Cesta k ESP-IDF Tools je dlhšia ako 90 znakov. Príliš dlhá cesta môže spôsobovať problém niektorým nástrojom. Vyberte prosím kratšiu cestu.
ComponentIde=Vývojárske nástroje
ComponentEclipse=Espressif-IDE
ComponentRust=Jazyk Rust pre Xtensa
ComponentDesktopShortcut=Odkaz na ploche
ComponentPowerShell=PowerShell
ComponentPowerShellWindowsTerminal=Windows Terminal rozbaľovacie menu
ComponentStartMenuShortcut=Odkaz v menu Štart
ComponentCommandPrompt=Príkazový riadok
ComponentDrivers=Ovládače - vyžadujú administrátorské oprávnenia
ComponentDriverEspressif=Espressif - WinUSB podpora pre JTAG (ESP32-C3/S3)
ComponentDriverFtdi=FTDI Chip - Virtual COM Port pre USB (WROVER, WROOM)
ComponentDriverSilabs=Silicon Labs - Virtual COM Port pre USB CP210x (ESP dosky)
ComponentDriverWch=WCH - Virtual COM Port pre USB CH343/CH9102 (LilyGo dosky)
ComponentTarget=Chip Targets - viac informácií na https://products.espressif.com/
ComponentTargetEsp32=ESP32
ComponentTargetEsp32c3=ESP32-C3
ComponentTargetEsp32s=ESP32-S Series
ComponentTargetEsp32s3=ESP32-S3
ComponentTargetEsp32s2=ESP32-S2
ComponentOptimization=Optimalizácia
ComponentOptimizationEspressifDownload=Použiť Espressif download mirror namiesto GitHub-u
InstallationFull=Plná inštalácia
InstallationMinimal=Minimálna inštalácia
InstallationCustom=Vlastná inštalácia
RunInstallGit=Inštalácia Git-u
RunEclipse=Spustiť Espressif-IDE
RunPowerShell=Spustiť ESP-IDF PowerShell Environment
RunCmd=Spustiť ESP-IDF Command Prompt Environment
InstallationCancelled=Inštalácia bola zrušená.
InstallationFailed=Inštalácia zlyhala s návratovým kódom
InstallationFailedAtStep=Inštalácia zlyhala v kroku:
DirectoryAlreadyExists=Zložka už existuje alebo nie je prázdna:
ChooseDifferentDirectory=Vyberte inú zložku.
SpacesInPathNotSupported=ESP-IDF nepodporuje medzery v ceste.
SpecialCharactersInPathNotSupported=Inštalácia vybraného ESP-IDF nepodporuje špeciálne znaky v ceste.
EspIdfVersion=Verzia ESP-IDF
ChooseEspIdfVersion=Prosím, vyberte verziu ESP-IDF pre inštaláciu
MoreInformation=Pre viac informácií o verziách ESP-IDF kliknite na odkaz:
EspIdfVersionInformationUrl=https://docs.espressif.com/projects/esp-idf/en/latest/versions.html
ChooseEspIdfDirectory=Vyberte zložku pre inštaláciu ESP-IDF
DownloadOrUseExistingEspIdf=Prevziať alebo použiť existujúce ESP-IDF
DownloadOrUseExistingEspIdfDetail=Prosím, vyberte verziu ESP-IDF pre prevzatie alebo použite existujúcu kópiu ESP-IDF
AvailableEspIdfVersions=Dostupné verzie ESP-IDF
ChooseExistingEspIdfDirectory=Vyberte existujúcu zložku s ESP-IDF
DirectoryDoesNotExist=Zložka neexistuje:
UnableToFindIdfpy=Nie je možné nájsť súbor idf.py v
UnableToFindRequirementsTxt=Nie je možné nájsť súbor requirements.txt v
EspIdfToolsShouldNotBeLocatedUnderSource=Zložka s ESP-IDF nástrojmi sa nesmie nachádzať pod zložkou so zdrojovým kódom ESP-IDF, zvoleným na predchádzajúcej stránke. Prosím, vyberte iné umiestenie pre nástroje ESP-IDF.
PythonVersionChoice=Výber verzie Python-u
PythonVersionChoiceDetail=Prosím, vyberte verziu Python-u
AvailablePythonVersions=Dostupné verzie Python-u
UnableToWriteConfiguration=Nie je možné zapísať konfiguráciu ESP-IDF do
CheckPermissionToFile=Prosím, overte oprávnenia a reštartujte inštaláciu.
SwitchBranch=Prepnutie vetvy
FinishingEspIdfInstallation=Dokončenie inštalácie ESP-IDF
CleaningUntrackedDirectories=Čistenie zložiek, ktoré nie sú verzované
ExtractingEspIdf=Rozbaľovanie ESP-IDF
SettingUpReferenceRepository=Vytváranie referenčného repozitára
DownloadingEspIdf=Preberanie ESP-IDF
UsingGitToClone=Použitie git-u pre vytvorenie klonu repozitáru ESP-IDF
CopyingEspIdf=Kopírovanie ESP-IDF do adresára
InstallingEspIdfTools=Inštalácia nástrojov ESP-IDF
CheckingPythonVirtualEnvSupport=Kontrola podpory pre Python virtualenv
CreatingPythonVirtualEnv=Vytváranie Python virtualenv
InstallingPythonVirtualEnv=Inštalácia Python virtualenv
RepackingRepository=Rekonštrukcia repozitára
UpdatingSubmodules=Aktualizácia pod-modulov
UpdatingFileMode=Aktualizácia fileMode-u
UpdatingFileModeInSubmodules=Aktualizácia fileMode-u v pod-moduloch
UpdatingNewLines=Aktualizácia koncov riadkov
UpdatingNewLinesInSubmodules=Aktualizácia koncov riadkov v pod-moduloch
FailedToCreateShortcut=Nepodarilo sa vytvoriť odkaz:
ExtractingPython=Rozbaľovanie Python interpretru
UsingEmbeddedPython=Použitie Embedded Python-u
ExtractingGit=Rozbaľovanie Git-u
UsingEmbeddedGit=Použitie Embedded Git-u
Extracting=Rozbaľovanie...
InstallationLogCreated=Záznam o inštalácii bol vytvorený. Môže obsahovať informácie o problémoch s inštaláciou.
DisplayInstallationLog=Prajete si zobraziť záznam o inštalácii?
UsingPython=Použitie Python-u
UsingGit=Použitie Git-u
DownloadGitForWindows=Prevezme a nainštaluje sa Git pre Windows
UsingExistingEspIdf=Použitie existujúcej kópie ESP-IDF:
InstallingNewEspIdf=Nainštaluje ESP-IDF
EspIdfToolsDirectory=Zložka s nástrojmi IDF (IDF_TOOLS_PATH):
DownloadEspIdf=Prevziať ESP-IDF
UsingExistingEspIdfDirectory=Použiť zložku s existujúcou inštaláciou ESP-IDF
InstallingDrivers=Inštalácia ovládačov
InstallingRust=Inštalácia integrácie s Rust
SystemCheckToolsPathSpecialCharacter=Systémové kódovanie je nastavené na 65001 a cesta k nástrojom obsahuje špeciálny znak. Z dôvodu limitáce v JRE nie je možné inštalovať Espressif-IDE na túto cestu. Vyberte umiestenie na ceste bez špeciálných znakov.
SystemCheckTmpPathSpecialCharacter=Systémové kódovanie je nastavené na 65001 a promenná prostredia TMP obsahuje špeciálny znak. Z dôvodu limitáce v JRE nie je možné spustit Espressif-IDE pokiaľ TMP obsahuje špeciálny znak. Nastavte promennú TMP na cestu bez špeciálnych znakov a reštartujte inštaláciu.
SystemCheckActiveCodePage=Aktívna kódová stránka:
SystemCheckUnableToDetermine=nie je možné určiť
SystemVersionTooLow=Príliš stará verzia operačného systému. Použite podporovanú verziu Windows.
WindowsVersion=Verzia Windows
SystemCheckAlternativeMirror=Test alternatívneho zrkadla
ComponentOptimizationGiteeMirror=Git zrkadlo gitee.com/EspressifSystems/esp-idf
ComponentOptimizationGitShallow=Plytký klon (--depth 1)
SummaryComponents=Komponenty
SummaryDrivers=Ovládače
SummaryTargets=Ciele
SummaryOptimization=Optimalizácia
ComponentToitJaguar=Jazyk Toit - nástroj Jaguar s podporou live-reload (beta - jag.exe)
InstallingToit=Inštalácia integrácie s Toit
SettingEnvironmentVariable=Nastavovanie premennej prostredia
