FROM microsoft/dotnet-framework:4.7.1
SHELL ["powershell"]
# #Disable progress bars
# RUN $progressPreference = 'silentlyContinue' 

# RUN [System.Net.ServicePointManager]::SecurityProtocol = 3072 -bor 768 -bor 192 -bor 48;
# RUN iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# RUN choco install -y python --no-progress
# RUN pip install awscli

# #Re-enable progress bars
# RUN $progressPreference = 'Continue' 