# ContextNet Server!

## How to Install?
    apt update; apt install wget apt-transport-https gnupg -y
    wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | apt-key add -
    echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list
    echo "deb [trusted=yes] http://packages.chon.group/ chonos main" | tee /etc/apt/sources.list.d/chonos.list
    apt update; apt install temurin-8-jre contextnet-server -y

## How to Use?

    /* Initial beliefs and rules */

    /* Initial goals */
    !start.
    /* Plans */
    
    +!start <-
    	.print("Iniciando SMA Embarcado");
    	!connect.
    	
    +!connect <-
    	.print("Iniciando conexão com a SkyNet");
    	.connectCN("skynet.chon.group",5500,"4168ef73-db44-48e3-a36e-231d3ef4155a");
    	.wait(120000);
    	!disconnect.
    
    +!disconnect <-
    	.print("Encerrando conexão com a SkyNet");
    	.disconnectCN;
    	!connect.
    	
    +waiting_for_transfer[source(X)] <-
        .print("Transfer ready for ",X);
    	.sendOut(X,tell,embeddedReady);
        -waiting_for_transfer[source(X)].
        

## Copyright
M. Endler, G. Baptista, L. D. Silva, R. Vasconcelos, M. Malcher, V. Pantoja, V. Pinheiro, and J. Viterbo. 2011. ContextNet: context reasoning and sharing middleware for large-scale pervasive collaboration and social networking. In Proceedings of the Workshop on Posters and Demos Track (PDT '11). Association for Computing Machinery, New York, NY, USA, Article 2, 1–2. https://doi.org/10.1145/2088960.2088962

  

