.class Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;
.super Ljava/util/TimerTask;
.source "JmmDNSImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChecker"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _knownAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final _mmDNS:Ljavax/jmdns/NetworkTopologyListener;

.field private final _topology:Ljavax/jmdns/NetworkTopologyDiscovery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 537
    const-class v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    .line 536
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/NetworkTopologyListener;Ljavax/jmdns/NetworkTopologyDiscovery;)V
    .registers 4
    .parameter "mmDNS"
    .parameter "topology"

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 547
    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    .line 548
    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    .line 549
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    .line 550
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 562
    :try_start_0
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_topology:Ljavax/jmdns/NetworkTopologyDiscovery;

    invoke-interface {v5}, Ljavax/jmdns/NetworkTopologyDiscovery;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 563
    .local v1, curentAddresses:[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/HashSet;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 564
    .local v2, current:Ljava/util/Set;,"Ljava/util/Set<Ljava/net/InetAddress;>;"
    array-length v6, v1

    const/4 v5, 0x0

    :goto_e
    if-lt v5, v6, :cond_1f

    .line 571
    iget-object v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 577
    iput-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    .line 581
    .end local v1           #curentAddresses:[Ljava/net/InetAddress;
    .end local v2           #current:Ljava/util/Set;,"Ljava/util/Set<Ljava/net/InetAddress;>;"
    :goto_1e
    return-void

    .line 564
    .restart local v1       #curentAddresses:[Ljava/net/InetAddress;
    .restart local v2       #current:Ljava/util/Set;,"Ljava/util/Set<Ljava/net/InetAddress;>;"
    :cond_1f
    aget-object v0, v1, v5

    .line 565
    .local v0, address:Ljava/net/InetAddress;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_knownAddresses:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 567
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v4, v7, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 568
    .local v4, event:Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v7, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v7, v4}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressAdded(Ljavax/jmdns/NetworkTopologyEvent;)V

    .line 564
    .end local v4           #event:Ljavax/jmdns/NetworkTopologyEvent;
    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 571
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_3b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 572
    .restart local v0       #address:Ljava/net/InetAddress;
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 573
    new-instance v4, Ljavax/jmdns/impl/NetworkTopologyEventImpl;

    iget-object v6, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-direct {v4, v6, v0}, Ljavax/jmdns/impl/NetworkTopologyEventImpl;-><init>(Ljavax/jmdns/NetworkTopologyListener;Ljava/net/InetAddress;)V

    .line 574
    .restart local v4       #event:Ljavax/jmdns/NetworkTopologyEvent;
    iget-object v6, p0, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->_mmDNS:Ljavax/jmdns/NetworkTopologyListener;

    invoke-interface {v6, v4}, Ljavax/jmdns/NetworkTopologyListener;->inetAddressRemoved(Ljavax/jmdns/NetworkTopologyEvent;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_16

    .line 578
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #curentAddresses:[Ljava/net/InetAddress;
    .end local v2           #current:Ljava/util/Set;,"Ljava/util/Set<Ljava/net/InetAddress;>;"
    .end local v4           #event:Ljavax/jmdns/NetworkTopologyEvent;
    :catch_54
    move-exception v3

    .line 579
    .local v3, e:Ljava/lang/Exception;
    sget-object v5, Ljavax/jmdns/impl/JmmDNSImpl$NetworkChecker;->logger1:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected unhandled exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public start(Ljava/util/Timer;)V
    .registers 8
    .parameter "timer"

    .prologue
    .line 553
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 554
    return-void
.end method
