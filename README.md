# ESP-IDF Tools Installer for Windows

## Download
| ESP-IDF Tools Installer | Online | Offline |
| ----------------------- | ------ | ------- |
| 2.6 (Beta) | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-online-2.6.exe) 2.1 MB [[![test-online-installer](https://github.com/espressif/idf-installer/actions/workflows/test-online-installer-scheduled.yml/badge.svg)](https://github.com/espressif/idf-installer/actions/workflows/test-online-installer-scheduled.yml) | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-offline-2.6.exe) 1.2 GB with ESP-IDF 4.2, 4.1.1, Eclipse + IDF Plugin v2.0.0 [![test-offline-installer](https://github.com/espressif/idf-installer/actions/workflows/test-offline-installer-dispatch.yml/badge.svg)](https://github.com/espressif/idf-installer/actions/workflows/test-offline-installer-dispatch.yml) |
| 2.5 - 2021-02-09 | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-online-2.5.exe) 19 MB | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-offline-2.5.exe) 793 MB with ESP-IDF 4.2, 4.1.1 |
| 2.4 - 2021-02-09 | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-online-2.4.exe) 19 MB | |
| 2.3 - 2020-05-28 | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-online-2.3.exe) 336 MB | |
| 2.2 - 2020-05-28 | [Download](https://dl.espressif.com/dl/esp-idf-tools-setup-online-2.2.exe) 390 MB | |


## Developer documentation

This directory contains source files required to build the tools installer for Windows.

The installer is built using [Inno Setup](http://www.jrsoftware.org/isinfo.php).

The main source file of the installer is `src/InnoSetup/IdfToolsSetup.iss`. PascalScript code is split into multiple `*.iss` files in directory `src/InnoSetup`.

Some functionality of the installer depends on additional programs:

* [Inno Download Plugin](https://mitrichsoftware.wordpress.com/inno-setup-tools/inno-download-plugin/) — used to download additional files during the installation.

* [7-zip](https://www.7-zip.org) — used to extract downloaded IDF archives.

* [cmdlinerunner](cmdlinerunner/cmdlinerunner.c) — a helper DLL used to run external command-line programs from the installer, capture live console output, and get the exit code.

## Installation of dependencies via Chocolatey

Run with Administrator privileges:

```
choco install inno-download-plugin
```

## Building the installer

### Building Online Installer on Windows

The minimalistic version of the installer.

```
.\Build-Installer.ps1 -InstallerType online
```

Output file: `build\esp-idf-tools-setup-online-unsigned.exe`

### Building Offline Installer on Windows

The version which bundles all packages into one installer file which does not requires internet connection to complete the installation.

```
.\Build-Installer.ps1 -InstallerType offline
```

Output file: `build\esp-idf-tools-setup-offline-unsigned.exe`

### Building the installer by GitHub Actions

Build script is stored in .github\workflows

### Building the installer in Docker with Linux image

The project contains multi-stage Dockerfile which allows build of the installer even on macOS or Linux. The build is using Wine.

Build the image:
```
docker build . -t wine-innosetup
```

Copy installer from the container
```
docker run --name builder --rm wine-innosetup && docker cp builder:/opt/idf-installer/build/esp-idf-tools-setup-online-unsigned.exe . && docker stop builder
```

Another option is to execute the build manually:
```
docker run -it wine-innosetup
.\Build-Installer.ps1 -InstallerType online
```

### Testing the installer in Docker with Linux image

It's possible to build the installer using Docker with Linux image, but it's not possible to make full test of the installer. Wine is not working correctly with Windows version of Git. The recommended approach for testing in containers is to use Docker with Windows image.

### Windows development env with WSL2 and Windows Docker Containers

The best approach to quickly develop and test all aspects of the build process is to use Windows with WSL2.

Requirements:

* WSL2 and Ubuntu distribution via Microsoft Store
* Install Windows Terminal - https://github.com/microsoft/terminal
* Install Docker and switch container runner to Windows
* Install Visual Studio Code - install plugin for Inno Setup and Docker
* Install Inno Setup - `choco install innnosetup`

#### The first build of the installer

This step is bootstrapping the whole process. Open Windows Terminal, click + sign and select Ubuntu.

```
.\Build-Installer -InstallerType online
```

The setup will download the necessary dependencies and it will build the installer.

#### Build of offline version of the installer

The offline version is built by setting /DOFFLINE=yes to ISCC on the command-line. To speed up build, it's possible to redirect stdout of ISCC to the file.

```
.\Build-Installer.ps1 -InstallerType offline >out.txt
```

To speed up development build it's possible to disable compression which is set by default to lzma.

```
.\Build-Installer.ps1 -InstallerType offline -Compression none >out.txt
```

#### Development work in idf_tool_setup.iss

Open Inno Setup and open file `src\InnoSetup\IdfToolsSetup.iss`. This is the main file of the installer

Press CTRL+F9 to rebuild the whole installer. Inno Setup detects changes only in the main file. If you change anything in include files, you need to explicitly press CTRL+F9 to build and Run.

Press F9 to run the installer.

Additional parameters to speed up development could be passed via Run - Parameters

#### Manually, step by step

* Build cmdlinerunner DLL.
  - On Linux/Mac, install mingw-w64 toolchain (`i686-w64-mingw32-gcc`). Then build the DLL using CMake:
    ```
    mkdir -p cmdlinerunner/build
    cd cmdlinerunner/build
    cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain-i686-w64-mingw32.cmake -DCMAKE_BUILD_TYPE=Release ..
    cmake --build .
    ```
    This will produce `cmdlinerunner.dll` in the build directory.
  - On Windows, it is possible to build using Visual Studio, with CMake support installed. By default, VS produces build artifacts in some hard to find directory. You can adjust this in CmakeSettings.json file generated by VS.

* Download 7zip.exe [("standalone console version")](https://www.7-zip.org/download.html) and put it into `unzip` directory (to get `unzip/7za.exe`).

* Download [idf_versions.txt](https://dl.espressif.com/dl/esp-idf/idf_versions.txt) and place it into the current directory. The installer will use it as a fallback, if it can not download idf_versions.txt at run time.

* Create the `dist` directory and populate it with the tools which should be bundled with the installer. At the moment the easiest way to obtain it is to use `install.sh`/`install.bat` in IDF, and then copy the contents of `$HOME/.espressif/dist` directory. If the directory is empty, the installer should still work, and the tools will be downloaded during the installation.

* Build the installer using Inno Setup Compiler: `ISCC.exe idf_tools_setup.iss`.

### Testing of the installer

Development and testing of the installer can be simplified by using command line parameters which can be passed to the installer.

Select Run - Parameters in Inno Setup and add parameters.

Example of parameters:

```
/SKIPSYSTEMCHECK=yes /IDFVERSIONSURL=http://localhost:8000/idf_versions.txt /GITRESET=no /GITREPO=C:/projects/esp-idf /GITRECURSIVE=no
```

These combinations of parameters will result:
* ``SKIPSYSTEMCHECK=yes`` - The screen with System Check will be skipped.
* ``IDFVERSIONURL`` - idf_versions.txt will be downloaded from localhost:8000
  - it's possible to add branch name into idf_versions.txt, e.g. feature/win_inst
* ``GITRESET=no`` - Git repository won't be reset after clone, it can save time and add custom changes in case of the zip archive with repository
* ``GITREPO`` - The version will be cloned from the specific location, e.g. from a local directory
* ``GITRECURSIVE=no`` - The clone of the repo won't contain modules, it speeds up the cloning process. Use when modules are not necessary.

Documentation of parameters is available in api-guides/tools/idf-windows-installer.rst

### Testing installation directly on Windows

Recommendation: For higher level of isolation you can use Docker with Windows containers described in the next chapter.

Test can be executed by following commands which will peform the installation and execute tests by accessing desktop link to PowerShell and CMD:

```
cd src\PowerShell
.\Install-Idf.ps1 -Installer ..\..\build\esp-tools-setup-online-unsigned.exe -IdfPath C:\idf-test -IdfVersion v4.2
```

### Testing installation in Docker with Windows containers

The testing script is stored in docker-compose.yml. The test performs full silent installation and executes the build of get-started example.

Commands for testing of `online` and `offline` installer with support for cache of dist and releases:

```
$env:IDF_VERSION="v4.1"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="v4.0.2"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="v3.3.4"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="release/v4.2"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="release/v4.1"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="release/v4.0"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="release/v3.3"; docker-compose.exe run idf-setup-test
$env:IDF_VERSION="master"; docker-compose.exe run idf-setup-test
```

Command for testing `offline` type of installer which contains everything but kitchen sink.:

```
$env:IDF_VERSION="v4.2"; docker-compose.exe run idf-setup-offline-test
$env:IDF_VERSION="release/v4.2"; docker-compose.exe run idf-setup-offline-test
```

The installation log is not displayed immediately on the screen. It's stored in the file and it's displayed when the installation finishes. The glitch of Inno Setup is that in case of failed installation it won't terminate and it keeps hanging.

Recommendation: Use Visual Studio Code with Docker plugin to work with container.
The log file is then accessible under Docker - Containers - Container - Files - Temp - install.txt - right click - Open.

### Testing multiple installations at once

Docker compose contains definition of multiple scenarios. The test can be launched by command:

```
$env:IDF_VERSION="v4.2"; docker-compose up --force-recreate
```

Note: `--force-recreate` is necessary otherwise the container will be just resumed from previous state.
### Testing the installation in Hyper-V

Docker does not support the test of installation with GUI and enabled Windows Defender. These tests can be executed in Hyper-V available on Windows. Launch `Hyper-V Manager`, create VM, and connect to it.

Use the following command to copy the installer to Hyper-V machine with the name "win10":

```
 Copy-VMFile "win10"  -SourcePath C:\projects\esp-idf\tools\windows\tool_setup\Output\esp-idf-tools-setup-unsigned.exe -DestinationPath "C:\Users\Tester\Desktop\esp-idf-tools-setup-unsigned.exe" -CreateFullPath -FileSource Host -Force
```

## Signing the installer

* Obtain the signing key (e.g `key.pem`) and the certificate chain (e.g. `certchain.pem`). Set the environment variables to point to these files:
  - `export KEYFILE=key.pem`
  - `export CERTCHAIN=certchain.pem`

* Run `sign_installer.sh` script. This will ask for the `key.pem` password and produce the signed installer in the Output directory. If you plan to run the script multiple times, you may also set `KEYPASSWORD` environment variable to the `key.pem` password, to avoid the prompt.
