.class public Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;
.super Ljava/lang/Object;
.source "NetworkDeviceManager.java"

# interfaces
.implements Lcom/sec/print/mobileprint/dm/IDeviceManager;


# instance fields
.field serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    .line 27
    return-void
.end method


# virtual methods
.method public doCreate()V
    .registers 1

    .prologue
    .line 32
    return-void
.end method

.method public doDestroy()V
    .registers 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopDiscovery()V

    .line 38
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopBroadcastDiscovery()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 41
    :goto_a
    return-void

    .line 39
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public getLanguages(Lcom/sec/print/mobileprint/dm/DeviceInfo;)Ljava/util/List;
    .registers 7
    .parameter "device"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_5

    move-object v1, v2

    .line 119
    :goto_4
    return-object v1

    .line 114
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, listLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getLanguageBySNMP(Ljava/lang/String;)Ljava/util/List;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_1a

    move-result-object v1

    .line 117
    goto :goto_4

    .line 118
    .end local v1           #listLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1a
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v1, v2

    .line 119
    goto :goto_4
.end method

.method public getPrinters()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, listPrinter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    iget-object v5, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getPrinters()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, listNetworkDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/print/mobileprint/df/MFPDevice;

    .line 79
    .local v4, mfpDevice:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;-><init>()V

    .line 80
    .local v0, device:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setHost(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNote(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setPort(I)V

    .line 84
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNetworkDevice()V

    .line 86
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 88
    .end local v0           #device:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v4           #mfpDevice:Lcom/sec/print/mobileprint/df/MFPDevice;
    :cond_43
    return-object v3
.end method

.method public getScanners()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/dm/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, listScanner:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/print/mobileprint/dm/DeviceInfo;>;"
    iget-object v5, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v5}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getScanners()Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, listNetworkDevice:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/print/mobileprint/df/MFPDevice;

    .line 95
    .local v4, mfpDevice:Lcom/sec/print/mobileprint/df/MFPDevice;
    new-instance v0, Lcom/sec/print/mobileprint/dm/DeviceInfo;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;-><init>()V

    .line 96
    .local v0, device:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setHost(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDevice;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNote(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->setNetworkDevice()V

    .line 102
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 105
    .end local v0           #device:Lcom/sec/print/mobileprint/dm/DeviceInfo;
    .end local v4           #mfpDevice:Lcom/sec/print/mobileprint/df/MFPDevice;
    :cond_3c
    return-object v3
.end method

.method public isPrinterAlive(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 6
    .parameter "device"

    .prologue
    const/4 v1, -0x1

    .line 162
    if-nez p1, :cond_4

    .line 170
    :goto_3
    return v1

    .line 167
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 168
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->IsPrinterAlive(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_14

    move-result v1

    goto :goto_3

    .line 169
    :catch_14
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    goto :goto_3
.end method

.method public isPrinterColorModel(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 6
    .parameter "device"

    .prologue
    const/4 v1, -0x1

    .line 124
    if-nez p1, :cond_4

    .line 132
    :goto_3
    return v1

    .line 129
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 130
    iget-object v2, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->IsPrinterColorModelBySNMP(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_14

    move-result v1

    goto :goto_3

    .line 131
    :catch_14
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/IOException;
    goto :goto_3
.end method

.method public isSupportDuplex(Lcom/sec/print/mobileprint/dm/DeviceInfo;)I
    .registers 8
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 137
    if-nez p1, :cond_5

    .line 158
    :cond_4
    :goto_4
    return v2

    .line 142
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 143
    iget-object v4, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {p1}, Lcom/sec/print/mobileprint/dm/DeviceInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDuplexBySNMP(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, duplex:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1e

    move v2, v3

    .line 146
    goto :goto_4

    .line 147
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_26

    move-result v4

    if-ne v4, v3, :cond_4

    .line 148
    const/4 v2, 0x0

    goto :goto_4

    .line 154
    .end local v0           #duplex:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_26
    move-exception v1

    .line 155
    .local v1, e:Ljava/io/IOException;
    goto :goto_4
.end method

.method public startDiscovery(Z)I
    .registers 3
    .parameter "scanners"

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_13

    .line 50
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartDiscovery(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_11

    .line 53
    :goto_a
    iget-object v0, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartBroadcastDiscovery()V

    .line 60
    const/4 v0, 0x1

    return v0

    .line 51
    :catch_11
    move-exception v0

    goto :goto_a

    .line 46
    :catch_13
    move-exception v0

    goto :goto_5
.end method

.method public stopDiscovery()I
    .registers 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopDiscovery()V

    .line 66
    iget-object v1, p0, Lcom/sec/print/mobileprint/dm/network/NetworkDeviceManager;->serviceMFPDiscovery:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopBroadcastDiscovery()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 68
    const/4 v1, 0x1

    .line 70
    :goto_b
    return v1

    .line 69
    :catch_c
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_b
.end method
