# PythonHomePageFramework
Python home page testing with dataclass of dataclasses

::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::::::::::::::::::: :::::::::::::::::::::::::::::::

The test will be returned latest 24 April 2023. The test directory will be seen with GitHub (or Google Driver or zipped as a zip file). The file contains Robot Framework and Selenium's POM test structure.
In the Picture folder of the test structure, there is a running video of running the TestDataClass.robot test of Tests folder.

I am sorry, but I did and do lose a couple of days because preplanned Housing and gardening stuff. I also have ordered ship traveling with my family to Sweeden. But that my excuse because I know that I do not get this home work done at that level I would like to ... Sorry, about that!

The CustomLibrary.py file is an essential python file for testing, where some data structure and Web elements are created with help of Dataclass. I am planned to utilize dataclass with generating webelements to specific webobjects and nodes with different attributes to be used with my web testing. 

I am using Robot Framework with testing software with combination of SeleniumLibrary and my own Python data structure and methods in the CustomLibrary.py file of folder pythonLibrary. Like said before Git version control is going to be applied to the test directory structure. The use of Git would have been preferable at the first place solving more problematic cases and putting relevant comment along this homework.

The biggest problems I had had in creating suitable and individual web element descriptions in CSS and XPath formats to create a sufficiently robust test. But I have solved them with help of Youtube video called "Selenium XPath Tutorial - XPath in Selenium WebDriver | XPath Full Tutorial | SoftwareTestingMentor" (https://youtu.be/U0WMFjnbb4I)

Due to the nature of the project, I did not put too much instructions and comments on different files to tell my way of thinking. In the Tests folder, you can find a fairly working test with can be updated more. But I think the matter of how I would start to build the testing framework is more important than very big and comprehensive test or test cases.

The tests are built mostly with "Microsoft Visual Code" but I have test something with "PyCharm" IDLE software too, which of course should not have any significance in terms of using this test framwork and its maintainability. I created my first virtual environment with Python 3.10 and Selenium and Chrome's Drive (Version 113.0.5672.63).
Robot Framework, and Visual Studio Code Extensions, such as Robocorp plugins, must be installed in all different environment of Python version. Needed Visual Studio Code Extensions can be installed with the help of requirements.txt file and using of pip. In the virtual enviroment execute command with termal prompt: pip install -r requirements.txt

A more detailed picture of the installation different pluggings can be found, for example, in a YouTube video "Learn Python 1: First install and Virtual Environments - Windows 10" (https://youtu.be/x1cbYa2SSlE?list=LL&t=965)

Testing Dataclass with different Python versions mean that different virtual environments of specific Python version must be created. My first virtual enviroment is created with python version 3.10. The second will be created with python version 3.6. And if I hade enough time the third version will be python version 3.7. The version 3.7 is important because the support of dataclass is published in that realease and all releases after that. Python 3.6 version should not support dataclass properties.

Information about the things and mathers that are not included in the zip file solution:

In the Picture folder, you can find a running video of executing the files like TestDataClass.robot and CustomLibrary.py. At the beginning of the test video, the aim is to emphasize how I am using my test framework with help of Robot Framework and python classes to test the different Python versions with dataclass support.

Note1: I've had a hard time finding a working webelement xpath solution to use Python Home Page Search text field. (https://docs.python.org).

Note2: The different web elements is saved and can be found under xxx.robot in PythonPOM folder. That way it's easy to find specific webelements used in different web pages. One place to be updated if the xpath of webelement is changed in that way that it is not any more working.

Note3: Using the POM test structure, it is better to create new user defined keywords against the tested web page.

Note4: when putting the whole test framework and needed information under Git version control it is very easy to construct new own virtual environment the Configuration directory. If you put the directory structure in Github, you should be aware of that some properties are not working under some specific Python versions, which is just what is asked to be tested.

Shortcoming : With keyword "Select All Python Versions" with test file is propably something in the middle of creating new feature of test suite going on... 

::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::

Local installation
Use either PyCharm or Visual Code IDLE for creating and testing already created testing framework under GitLab. First create new virtual environment to the tested Python version, check that you have the tested Python version install or install it in the place you can find it. Select right Python version to  interpreter. Then Robot Framework, Visual Studio Code, and VS Code Extensions (Robocorp plugins) can be installed with termal prompt: pip install -r requirements.txt. I you need a more detailed picture of the installation process with Robot Framework. It can be found, for example, in a YouTube video "RobotFramework Hello World Program in Visual Studio Code" (https://youtu.be/a5Rq0bjz_g8 )

Testing environment
You can download testing framework to your local workstation with help Of Github.
https://github.com/JormaTapio/PythonHomePageFramework.git

::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::

People are different. At the first I like to see some Youtube videos to tell me what Dataclass property starting from Python 3.7 realease is all about. Here is my short notes during watching selected videos.

This Is Why Python Data Classes Are Awesome
https://youtu.be/CvQ7e6yUtnw 
https://youtu.be/CvQ7e6yUtnw?t=301 Examble 1: Generate variables
https://youtu.be/CvQ7e6yUtnw?t=485 Ex2: Default values
https://youtu.be/CvQ7e6yUtnw?t=558 User can not initialize a value
https://youtu.be/CvQ7e6yUtnw?t=672 Post init... create search value...
https://youtu.be/CvQ7e6yUtnw?t=707 Search string is something you are not going to supposed to change: 
def ____post_init__(self) -> None:
self._search_string f"{self.name} {self.address}" 
https://youtu.be/CvQ7e6yUtnw?t=751 Do not want to show this again with printing
https://youtu.be/CvQ7e6yUtnw?t=804 frozen = True is nice sometimes
https://youtu.be/CvQ7e6yUtnw?t=924 keyword arguments can only be initialized
https://youtu.be/CvQ7e6yUtnw?t=977 match_args=True ... videos
https://youtu.be/CvQ7e6yUtnw?t=1043 __dict__
https://youtu.be/CvQ7e6yUtnw?t=1099 slots=True
https://youtu.be/CvQ7e6yUtnw?t=1115 How Fast are Slots?

How To Use: "@dataclass" In Python (Tutorial 2023)
https://youtu.be/mVea6Mu15l8 
https://youtu.be/mVea6Mu15l8?t=112 data class
decorator... @dataclass
https://youtu.be/mVea6Mu15l8?t=279  how to compare dataclasses
https://youtu.be/mVea6Mu15l8?t=335 default value = 10
https://youtu.be/mVea6Mu15l8?t=375 frozen
https://youtu.be/mVea6Mu15l8?t=422 slots
https://youtu.be/mVea6Mu15l8?t=458 slots=True
https://youtu.be/mVea6Mu15l8?t=524 __str ﻿__
https://youtu.be/mVea6Mu15l8?t=547 __repr__  ?
https://youtu.be/mVea6Mu15l8?t=572 kw_onlu=True
https://youtu.be/mVea6Mu15l8?t=804 ﻿
https://youtu.be/mVea6Mu15l8?t=800 ﻿ ﻿ Easiest way to insert items of dictionary

Python dataclasses will save you HOURS, also featuring attrs 
https://youtu.be/vBH6GRJ1REM 
https://youtu.be/vBH6GRJ1REM?t=251 What is inside that class
https://youtu.be/vBH6GRJ1REM?t=330 order=True

How I Organize Data In Python with Dataclasses 
https://youtu.be/5mpLJxKfnXQ 
https://youtu.be/5mpLJxKfnXQ?t=37 lambda
https://youtu.be/5mpLJxKfnXQ?t=41 dictionary
https://youtu.be/5mpLJxKfnXQ?t=39 Syntax
https://youtu.be/5mpLJxKfnXQ?t=62 request_htlm
https://youtu.be/5mpLJxKfnXQ?t=202 Optional list
https://youtu.be/5mpLJxKfnXQ?t=226
https://youtu.be/5mpLJxKfnXQ?t=383 How it all is read and put together

CustomLibrary.py file of PythonLibrary folder I did create suitable python class and a few methods to be implemented in the larger test case with Python Home Page testing. Unfortunetly the time run out, but this CustomLibrary file can be executed to see which Python versions support dataclass property of dataclasses.

::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::::::::::::::::::: ::::::::::::::::::::::::::::::::::
Some view points of future

To check1: I have created the testing framework with using SeleniumLibrary with Robot Framework. If I have understand right the larger testing infrastructure with a lot of different test cases would be better to build up with Robot Framewor and Browser library, which has more speed and reliably with execution of test cases. It also has some inbuild support for different web browser like Chrome, Firefox and Edge. They are updated automatically for new release of used web browser. (Similarry like PlayWright)

To check2: It might be worth while to check how to utilize Docker with different Python version testing.
