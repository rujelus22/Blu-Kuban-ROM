.class Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;
.super Ljava/lang/Object;
.source "MFPDiscoveryService.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/MFPDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceListener"
.end annotation


# instance fields
.field final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/ExecutorService;

.field final jmdns:Ljavax/jmdns/JmDNS;

.field final synthetic this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;


# direct methods
.method public constructor <init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljavax/jmdns/JmDNS;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V
    .registers 5
    .parameter
    .parameter "jmdns"
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/JmDNS;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, devices:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->jmdns:Ljavax/jmdns/JmDNS;

    .line 396
    iput-object p3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    .line 397
    iput-object p4, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->e:Ljava/util/concurrent/ExecutorService;

    .line 398
    return-void
.end method


# virtual methods
.method protected addDevice(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V
    .registers 15
    .parameter "type"
    .parameter "info"

    .prologue
    .line 442
    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v10, p2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->isSamsungMFP(Ljavax/jmdns/ServiceInfo;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 493
    :cond_8
    return-void

    .line 444
    :cond_9
    const-string v10, "product"

    invoke-virtual {p2, v10}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 445
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_b6

    .line 446
    const-string v10, "ty"

    invoke-virtual {p2, v10}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 447
    if-eqz v7, :cond_8

    .line 457
    :cond_19
    :goto_19
    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v5

    .line 458
    .local v5, inet4Addresses:[Ljava/net/Inet4Address;
    move-object v0, v5

    .local v0, arr$:[Ljava/net/Inet4Address;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_20
    if-ge v3, v6, :cond_8

    aget-object v4, v0, v3

    .line 459
    .local v4, inet4Address:Ljava/net/Inet4Address;
    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 461
    new-instance v1, Lcom/sec/print/mobileprint/df/MFPDevice;

    invoke-direct {v1}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>()V

    .line 462
    .local v1, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setName(Ljava/lang/String;)V

    .line 463
    const-string v10, "note"

    invoke-virtual {p2, v10}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setNote(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setPort(I)V

    .line 465
    const-string v10, "_ipp._tcp.local."

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10e

    .line 466
    const-string v10, "rp"

    invoke-virtual {p2, v10}, Ljavax/jmdns/ServiceInfo;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, rp:Ljava/lang/String;
    if-eqz v8, :cond_d8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d8

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, url:Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 470
    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v8           #rp:Ljava/lang/String;
    .end local v9           #url:Ljava/lang/String;
    :goto_b2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    .line 450
    .end local v0           #arr$:[Ljava/net/Inet4Address;
    .end local v1           #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #inet4Address:Ljava/net/Inet4Address;
    .end local v5           #inet4Addresses:[Ljava/net/Inet4Address;
    .end local v6           #len$:I
    :cond_b6
    const-string v10, "("

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 451
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 453
    :cond_c3
    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 454
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_19

    .line 472
    .restart local v0       #arr$:[Ljava/net/Inet4Address;
    .restart local v1       #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #inet4Address:Ljava/net/Inet4Address;
    .restart local v5       #inet4Addresses:[Ljava/net/Inet4Address;
    .restart local v6       #len$:I
    .restart local v8       #rp:Ljava/lang/String;
    :cond_d8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 473
    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 476
    .end local v8           #rp:Ljava/lang/String;
    :cond_10e
    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/sec/print/mobileprint/df/MFPDevice;->setHost(Ljava/lang/String;)V

    .line 477
    iget-object v10, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 402
    :try_start_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 403
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 404
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->addDevice(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 425
    .end local v0           #info:Ljavax/jmdns/ServiceInfo;
    :goto_13
    return-void

    .line 407
    .restart local v0       #info:Ljavax/jmdns/ServiceInfo;
    :cond_14
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener$1;-><init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;Ljavax/jmdns/ServiceEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_13

    .line 423
    .end local v0           #info:Ljavax/jmdns/ServiceInfo;
    :catch_1f
    move-exception v1

    goto :goto_13
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 428
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 430
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->devices:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_11
    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 436
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 437
    .local v0, info:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$DeviceListener;->addDevice(Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 439
    return-void
.end method
