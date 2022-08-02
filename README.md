# ChonOS Skynet Server!

We are using ContexNet

## How to Install?

    apt update; apt install git
    git -C /opt clone git clone git://git.code.sf.net/p/chonos/skynet chonos-skynet
    /opt/chonos-skynet/bin/install.sh
    reboot

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

carlos.pantoja@cefet-rj.br
