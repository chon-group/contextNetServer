# ContextNet Server

## How to Install?

### Debian 11
In a terminal execute the commands below:

    apt update; apt install wget apt-transport-https gnupg -y
    wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add -
    echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
    echo "deb [trusted=yes] http://packages.chon.group/ chonos main" | tee /etc/apt/sources.list.d/chonos.list
    apt update; apt install temurin-8-jre contextnet-server -y
    reboot

## How to Use?
01 - In _**another computer**_ install the  [ChonIDE](https://ide.chon.group/) 

02 - Access the skyNet demo example in your ChonIDE 
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/ef2169fd-23ac-47e7-8bc8-3b15a5c3aece)



03 - Insert the IPv4 Address of your Local ContextNet Server (1) and Start the Multi-agent System (2)
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/f9499419-c446-4403-97fc-edd432b3391c)

04 - Access the ChonIDE Log (1). If the message _IoT Gateway is working appear_ (2), yout instalation it's running!
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/4cd5228d-1a6e-4403-9f54-95aef9105f60)





   
        

## Copyright
M. Endler, G. Baptista, L. D. Silva, R. Vasconcelos, M. Malcher, V. Pantoja, V. Pinheiro, and J. Viterbo. 2011. ContextNet: context reasoning and sharing middleware for large-scale pervasive collaboration and social networking. In Proceedings of the Workshop on Posters and Demos Track (PDT '11). Association for Computing Machinery, New York, NY, USA, Article 2, 1–2. https://doi.org/10.1145/2088960.2088962

  

