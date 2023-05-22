from dataclasses import dataclass

@dataclass(order=True)
class PythonInfo:
        pythonVersion: str
        versions: list
        names: list=None
        webElement: list= None
        tested: str=None

        @property
        def supportDataclass(self):
            if self.pythonVersion == '3.7' or self.pythonVersion > '3.7':
                return 'Dataclass is supported.'
            else:
                return 'Dataclass is not supported.'

        def __post_init__(self):
            if self.webElement == None:
                 self.webElement = []
                 
            if self.webElement == []:
                for version in self.versions:
                    if version == 'doc/versions':
                         element = "//div[@class='sphinxsidebar']//child::a[@href='https://www.python.org/"+version+"/']"
                    else:
                         element = "//div[@class='sphinxsidebar']//child::a[@href='https://docs.python.org/"+version+"/']"
                    self.webElement.append(element)
            self.tested = 'Done'

usedPythonNames = ['Python 3.10 (stable)','Python 3.7 (security-fixes)', 'Python 3.6 (EOL)']
usedPythonVersions = ['3.10', '3.7', '3.6']
python36 = PythonInfo(pythonVersion = '3.6', versions = [], names = usedPythonNames)
python37 = PythonInfo(pythonVersion = '3.7', versions = [], names = usedPythonNames)
python310 =  PythonInfo(pythonVersion = '3.10', versions = ['3.10'], names = usedPythonNames)

pythonVersionList = [
                '3.12',
                '3.11',
                '3.10',
                '3.9',
                '3.8',
                '3.7',
                '3.6',
                '3.5',
                '2.7',
                'doc/versions'
]
firstVirtualEnviroment = {
            'pythonVersion': '3.10',
            'versions': pythonVersionList,
            'names':    [
                        'Python 3.12 (in development)',
                        'Python 3.11 (stable)',
                        'Python 3.10 (stable)',
                        'Python 3.9 (security-fixes)',
                        'Python 3.8 (security-fixes)',
                        'Python 3.7 (security-fixes)',
                        'Python 3.6 (EOL)',
                        'Python 3.5 (EOL)',
                        'Python 2.7 (EOL)',
                        'All versions}'
                        ]
}

if __name__ == '__main__':
    PythonVersion = PythonInfo(**firstVirtualEnviroment)

print("python310.webElemen:",python310.webElement)
print()
print("*******************************************************2")
print("python310:",python310)
print("python310.supportDataclass:",python310.supportDataclass)
print("python37:",python37)
print("python37.supportDataclass:",python37.supportDataclass)
print("python36:",python36)
print("python36.supportDataclass:",python36.supportDataclass)
print("PythonVersion:",PythonVersion)
print("PythonVersion.supportDataclass:",PythonVersion.supportDataclass)
print("PythonVersion.webElement:",PythonVersion.webElement)
