# RENODE Simulator Example

Aim of project is to simulate an STM32F446 application that prints "Hello World" once a second over UART using RENODE.

## Table of Contents

1. [About the Project](#about-the-project)
1. [Project Status](#project-status)
1. [Getting Started](#getting-started)
    1. [Dependencies](#dependencies)
    1. [Building](#building)
    1. [Usage](#usage)
1. [How to Get Help](#how-to-get-help)
1. [Contributing](#contributing)
1. [Further Reading](#further-reading)
1. [Authors](#authors)
1. [Acknowledgments](#acknowledgements)

## About the Project

Project uses STM32F446 microcontroller and ARM GCC compiler to build a software application that utilizes UART. Application is then simulated using RENODE. Project was motivated by:
1. Wanting to gain experience using RENODE
2. Test application for hardware that is in development




**[Back to top](#table-of-contents)**

## Project Status

Project currently builds successfully and also test well in RENODE.


> **NOTE**: 
>Bug in RENODE requires `SystemClock_Config()` to remain uninitialized for the STM32F446. When compiled for RENODE a special compile time define is used to force `SystemClock_Config()` function to not hang the system.

**[Back to top](#table-of-contents)**

## Getting Started

The following sections discusses how to:
1. Set up a build environment for Windows
2. How to obtain source code
3. How to build project
4. How to run RENODE simulation

### Dependencies

Windows 10 system is used. Build tools are assumed to be on Windows PATH variable. If application not on path but installed, then [manually add application to PATH](https://helpdeskgeek.com/windows-10/add-windows-path-environment-variable/)


1. Windows 10
1. Power Shell 7.1.3
1. [Renode version 1.12.0.6127 (265cc52d-202204130322)](https://dl.antmicro.com/projects/renode/builds/renode_1.12.0+20220413git265cc52d.msi)
1. [GNU Make 3.81](http://gnuwin32.sourceforge.net/packages/make.htm)
1. [arm-none-eabi 10.2.1](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads/10-2-2020-11)


> **NOTE**: 
> RENODE Nightly needed as current official release has an issue with Windows 10 and creating secure connection when downloading platform files. Issue is fixed in recent nightly release but has not been officially released (https://github.com/renode/renode/issues/251).


### Getting the Source

This project is [hosted on GitHub](https://github.com/SeanAlling/RENODE_STM32F446_Example). You can clone this project directly using this command:

```
git clone https://github.com/SeanAlling/RENODE_STM32F446_Example.git
```

### Building

Make is used to build the application. From the root directory, issue the following command to build the application.

```
make build-sim
```

By default make uses one thread to build. If you would like make to use all available threads then use the following command. 

```
make build-sim -j
```

A clean command is also given which will delete all files generated during the build process. 

```
make clean
```

### Usage

After a successful build, the program can be simulated by issuing the following command

```
make run-sim
```

After a few seconds two windows will open, one the RENODE monitor and one for UART monitor. The UART terminal will print hello world as shown in the following screenshot

[Hello World](Resources/Images/Running.jpg)

**[Back to top](#table-of-contents)**

## How to Get Help

For support, file an issue and issue will be assigned and worked on.

## Further Reading

The following resoirces can be used to learn more about simulating with RENODE:

1. [Cortex-M MCU Emulation with Renode](https://interrupt.memfault.com/blog/intro-to-renode)
2. [RENODE Documentation](https://renode.readthedocs.io/en/latest/)
3. [](https://www.zephyrproject.org/developing-zephyr-rtos-embedded-applications-on-platformio-and-simulating-on-antmicro-renode/)

**[Back to top](#table-of-contents)**

## Authors

* **[Sean Alling](https://github.com/SeanAlling/n)** - *Initial work*

**[Back to top](#table-of-contents)**

## Acknowledgments

Thank you to (AntMicro)[https://antmicro.com/] for creation of RENODE. 

**[Back to top](#table-of-contents)**