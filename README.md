# ContextNet Server!

## How to Install?
    apt update; apt install git -y
    git -C /opt clone https://github.com/chon-group/contextNetServer.git
    /opt/contextNetServer/bin/install.sh

## How to Start?

chonosSkynet &

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
        

## How to Contact?

chon@grupo.cefet-rj.br
