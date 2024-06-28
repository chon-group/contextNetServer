# ContextNet Server

## How to Install?

### MS Windows

1. Download and Install the [Oracle Virtual Box](https://www.virtualbox.org/wiki/Downloads)

2. Download and Import the [ContextNet Server Virtual Machine](https://sourceforge.net/projects/contextnet-server/)

### Debian, Ubuntu, Mint, and derivatives

1. In a terminal execute the commands below:

```sh
echo "deb [trusted=yes] http://packages.chon.group/ chonos main" | sudo tee /etc/apt/sources.list.d/chonos.list
sudo apt update
sudo apt install contextnet-server -y
```

2. After installation, you can verify the service status with command: __systemctl status contextNetServer__
![](https://github.com/chon-group/contextNetServer/assets/32855001/f2153c27-42d3-4a69-bb16-31c6027330bb)

## How to Use?

### How to Use: via [ChonIDE](https://ide.chon.group/) 

1. Access the skyNet demo example in your ChonIDE 
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/ef2169fd-23ac-47e7-8bc8-3b15a5c3aece)


2. Insert the IPv4 Address of your Local ContextNet Server (1) and Start the Multi-agent System (2)
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/f9499419-c446-4403-97fc-edd432b3391c)

3. Access the ChonIDE Log (1). If the message _IoT Gateway is working appear_ (2), yout instalation it's running!
![Sem título](https://github.com/chon-group/contextNetServer/assets/32855001/4cd5228d-1a6e-4403-9f54-95aef9105f60)





   
        

## Copyright
M. Endler, G. Baptista, L. D. Silva, R. Vasconcelos, M. Malcher, V. Pantoja, V. Pinheiro, and J. Viterbo. 2011. ContextNet: context reasoning and sharing middleware for large-scale pervasive collaboration and social networking. In Proceedings of the Workshop on Posters and Demos Track (PDT '11). Association for Computing Machinery, New York, NY, USA, Article 2, 1–2. https://doi.org/10.1145/2088960.2088962

  

