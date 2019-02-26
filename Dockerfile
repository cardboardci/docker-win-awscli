FROM microsoft/dotnet-framework:4.7.1
SHELL ["powershell"]
RUN $progressPreference='silentlyContinue' 

RUN [System.Net.ServicePointManager]::SecurityProtocol = 3072 -bor 768 -bor 192 -bor 48;
RUN iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RUN choco install -y python --version 3.7.2 --no-progress
RUN pip install --upgrade awscli==1.16.88