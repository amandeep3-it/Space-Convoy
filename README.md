# Space Convoy - Ada

Command-line based Graphical `Ada` Space Convoy Designs to enhance and develop communication and networking skills. Learning goals were to practise the airships' effective interactions with the fuel ball and several other airships. The design should keep alive as many ships as possible by allowing them to access the fuel ball when appropriate.

## Description

The airships of the program are to assign each other in accessing the fuel ball to keep themselves alive as much as possible. The design `2 Circles Model` contains the airships forming a 2 circles circulation path next to the fuel ball. The design `Sphere Model` contains the airships forming a sphere circulation path around the fuel ball.

### Languages and Tools:

[<img align="left" alt="GNAT Studio" height="50px" width="50px" src="https://img2.helpnetsecurity.com/articles/icon_gps.jpg" />][gnat-studio]
[<img align="left" alt="Ada" height="50px" width="50px" src="https://upload.wikimedia.org/wikipedia/commons/d/d6/Ada_Mascot_with_slogan.svg" />][ada]
[<img align="left" alt="Terminal" height="50px" width="50px" src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/terminal/terminal.png" />][terminal]

<br/>
<br/>

---

## Getting Started

### Dependencies

* The program was executed and developed on Windows 10 - `GNAT Studio | AdaCore`.
* __Linux__: Ubuntu version 10 or 14.04. Depending on the Linux version, it might be necessary to install `glutg3` and `glutg3-dev` (via a package manager).
* __Mac OS__: PowerPC and Intel (32 and 64bit), tested on 10.5 to 10.12.
* __Windows__: Tested on XP, Vista, Win7 and Win10. The freeglut library needs to be in the same directory as the executable (already placed to the right spot in the provided project).

### Installing

* Clone or download the project on your local machine.

### Executing program

* The file to execute the program is `swarm.exe`.
* The executable files are located at directories:
```
2 Circles Model - .\2 Circles Model\2 Circles Model\Execute
Sphere Model - .\Sphere Model\Sphere Model\Execute
```
* Use the following terminal command:
```
swarm.exe
```

## Authors

* `Amandeep Singh` the primary developer.
* `Dr Uwe Zimmer` the original developer.

## Version History

* 0.2 - October 2020
    * Program completed
    * Programmed the `2 Circles Model` and `Sphere Model` designs.
    * Specifically programmed the files within the directory `.\{ DESIGN }\Sources\Student_Packages`:
    ```
    - vehicle_message_type.ads
    - vehicle_task_type.adb
    - vehicle_task_type.ads
    ```
    * Completed by `Amandeep Singh`
* 0.1 - July 2018
    * Developed the graphical interface and physical interaction among the airships.
    * Initial Release developed by `Dr Uwe Zimmer`

[gnat-studio]: https://www.adacore.com/gnatpro/toolsuite/gnatstudio
[ada]: https://www.adacore.com/
[terminal]: https://www.microsoft.com/en-au/p/windows-terminal/9n0dx20hk701
