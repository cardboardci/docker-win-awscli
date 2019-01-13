FROM microsoft/dotnet-framework:4.7.1
SHELL ["powershell"]
RUN [System.Net.ServicePointManager]::SecurityProtocol = 3072 -bor 768 -bor 192 -bor 48; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

RUN choco install -y python
RUN pip install awscli