.class public Lcom/samsung/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Lcom/samsung/http/HTTPRequestListener;
.implements Lcom/samsung/upnp/IControlPoint;


# instance fields
.field private activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private devNodeList:Lcom/samsung/xml/NodeList;

.field deviceChangeListenerList:Lcom/samsung/util/ListenerList;

.field private deviceDisposer:Lcom/samsung/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

.field private deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

.field private eventListenerList:Lcom/samsung/util/ListenerList;

.field private eventSubURI:Ljava/lang/String;

.field private expiredDeviceMonitoringInterval:J

.field private httpPort:I

.field private httpServerList:Lcom/samsung/http/HTTPServerList;

.field private nmprMode:Z

.field private renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

.field private searchMx:I

.field private searchTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 144
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialize()V

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const-wide v5, 0x40c3880000000000L

    const-wide v3, 0x40bf7a0000000000L

    .line 169
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    add-int/lit16 v0, v0, 0x1f48

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;-><init>(II)V

    .line 170
    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .parameter "ssdpPort"
    .parameter "httpPort"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v2, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 190
    iput v2, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 219
    new-instance v0, Lcom/samsung/xml/NodeList;

    invoke-direct {v0}, Lcom/samsung/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    .line 518
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    .line 549
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    .line 582
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    .line 717
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/upnp/ControlPoint;->searchMx:I

    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    .line 808
    new-instance v0, Lcom/samsung/http/HTTPServerList;

    invoke-direct {v0}, Lcom/samsung/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->httpServerList:Lcom/samsung/http/HTTPServerList;

    .line 842
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    .line 938
    const-string v0, "/evetSub"

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    .line 153
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 155
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->setSSDPPort(I)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/ControlPoint;->setHTTPPort(I)V

    .line 158
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 159
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 164
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 165
    return-void
.end method

.method private addActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 233
    const-string v0, "ControlPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_17
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v1

    .line 237
    return-void

    .line 234
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private addDevice(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "rootNode"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method private getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 348
    if-nez p1, :cond_4

    .line 353
    :cond_3
    :goto_3
    return-object v0

    .line 350
    :cond_4
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_3

    .line 353
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_3
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "host"

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHTTPServerList()Lcom/samsung/http/HTTPServerList;
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->httpServerList:Lcom/samsung/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private isActivityDevice(Ljava/lang/String;)Z
    .registers 4
    .parameter "udn"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 228
    :try_start_3
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 227
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private isValidTarget(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 742
    const-string v0, "upnp:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "urn:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private parseLastChangEvent(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 922
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 925
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 926
    if-nez v1, :cond_c

    .line 932
    :goto_b
    return-object v0

    .line 928
    :cond_c
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    :try_end_11
    .catch Lcom/samsung/xml/ParserException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_b

    .line 929
    :catch_13
    move-exception v1

    .line 930
    invoke-virtual {v1}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_b
.end method

.method private removeActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 240
    const-string v0, "ControlPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 242
    :try_start_17
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1

    .line 244
    return-void

    .line 241
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private removeDevice(Lcom/samsung/upnp/Device;)V
    .registers 3
    .parameter "dev"

    .prologue
    .line 453
    if-nez p1, :cond_3

    .line 456
    :goto_2
    return-void

    .line 455
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/xml/Node;)V

    goto :goto_2
.end method

.method private removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 464
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-nez v2, :cond_7

    .line 469
    :goto_6
    return-void

    .line 466
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, udn:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private removeDevice(Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "rootNode"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 446
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 447
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V

    .line 449
    :cond_f
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v1, p1}, Lcom/samsung/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method private removeDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 460
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/Device;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 13
    .parameter "ssdpPacket"

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, usn:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, udn:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->addActivityDevice(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v8}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 255
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_18

    .line 256
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 257
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 298
    :goto_17
    return-void

    .line 261
    :cond_18
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, location:Ljava/lang/String;
    :try_start_1c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    .local v2, locationUrl:Ljava/net/URL;
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v4

    .line 265
    .local v4, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v4, v2}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;

    move-result-object v7

    .line 267
    .local v7, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v6

    .line 268
    .local v6, rootDev:Lcom/samsung/upnp/Device;
    if-nez v6, :cond_36

    .line 269
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_6e
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_32} :catch_46
    .catch Lcom/samsung/xml/ParserException; {:try_start_1c .. :try_end_32} :catch_5f

    .line 296
    :goto_32
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_17

    .line 272
    :cond_36
    :try_start_36
    invoke-virtual {v6, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 273
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0, v8}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_55

    .line 278
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_6e
    .catch Ljava/net/MalformedURLException; {:try_start_36 .. :try_end_45} :catch_46
    .catch Lcom/samsung/xml/ParserException; {:try_start_36 .. :try_end_45} :catch_5f

    goto :goto_32

    .line 289
    .end local v2           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lcom/samsung/xml/Parser;
    .end local v6           #rootDev:Lcom/samsung/upnp/Device;
    .end local v7           #rootNode:Lcom/samsung/xml/Node;
    :catch_46
    move-exception v3

    .line 290
    .local v3, me:Ljava/net/MalformedURLException;
    :try_start_47
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 291
    invoke-static {v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_6e

    .line 296
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_17

    .line 282
    .end local v3           #me:Ljava/net/MalformedURLException;
    .restart local v2       #locationUrl:Ljava/net/URL;
    .restart local v4       #parser:Lcom/samsung/xml/Parser;
    .restart local v6       #rootDev:Lcom/samsung/upnp/Device;
    .restart local v7       #rootNode:Lcom/samsung/xml/Node;
    :cond_55
    :try_start_55
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/xml/Node;)V

    .line 288
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/ControlPoint;->performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_6e
    .catch Ljava/net/MalformedURLException; {:try_start_55 .. :try_end_5b} :catch_46
    .catch Lcom/samsung/xml/ParserException; {:try_start_55 .. :try_end_5b} :catch_5f

    .line 296
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_17

    .line 292
    .end local v2           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lcom/samsung/xml/Parser;
    .end local v6           #rootDev:Lcom/samsung/upnp/Device;
    .end local v7           #rootNode:Lcom/samsung/xml/Node;
    :catch_5f
    move-exception v5

    .line 293
    .local v5, pe:Lcom/samsung/xml/ParserException;
    :try_start_60
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 294
    invoke-static {v5}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_6a
    .catchall {:try_start_60 .. :try_end_6a} :catchall_6e

    .line 296
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_17

    .line 295
    .end local v5           #pe:Lcom/samsung/xml/ParserException;
    :catchall_6e
    move-exception v10

    .line 296
    invoke-direct {p0, v8}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 297
    throw v10
.end method

.method public addDeviceChangeListener(Lcom/samsung/api/DeviceChangeListener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 586
    if-nez p1, :cond_4

    .line 587
    const/4 v0, 0x0

    .line 590
    :goto_3
    return v0

    .line 589
    :cond_4
    monitor-enter p0

    .line 590
    :try_start_5
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_3

    .line 589
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public addSearchTarget(Ljava/lang/String;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 731
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->isValidTarget(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 739
    :cond_8
    :goto_8
    return-void

    .line 734
    :cond_9
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 738
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 734
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8
.end method

.method public getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;
    .registers 3
    .parameter "device"

    .prologue
    .line 397
    if-nez p1, :cond_4

    .line 398
    const/4 v0, 0x0

    .line 399
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    goto :goto_3
.end method

.method public getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "name"

    .prologue
    .line 403
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->size()I

    move-result v3

    .line 405
    .local v3, nRoots:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    add-int/lit8 v5, v3, 0x1

    if-lt v2, v5, :cond_d

    .line 416
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 406
    :cond_d
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5, v2}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 407
    .local v4, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v4}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 408
    .local v1, dev:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_1c

    .line 405
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 410
    :cond_1c
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 412
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 413
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_19

    move-object v1, v0

    .line 414
    goto :goto_c
.end method

.method public getDeviceDisposer()Lcom/samsung/upnp/device/Disposer;
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 10

    .prologue
    .line 357
    new-instance v1, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v1}, Lcom/samsung/upnp/DeviceList;-><init>()V

    .line 358
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7}, Lcom/samsung/xml/NodeList;->size()I

    move-result v5

    .line 359
    .local v5, nRoots:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_c
    if-lt v4, v5, :cond_f

    .line 379
    return-object v1

    .line 360
    :cond_f
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7, v4}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 361
    .local v6, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v6}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 362
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_1e

    .line 359
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 364
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 367
    .local v3, emDeviceList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v3}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/upnp/Device;

    .line 368
    .local v2, emDevice:Lcom/samsung/upnp/Device;
    if-eqz v2, :cond_29

    .line 369
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getEventSubURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .registers 3

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lcom/samsung/upnp/control/RenewSubscriber;
    .registers 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .registers 2

    .prologue
    .line 721
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 13
    .parameter "httpReq"

    .prologue
    .line 815
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    .line 819
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 820
    new-instance v7, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v7, p1}, Lcom/samsung/upnp/event/NotifyRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 821
    .local v7, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, uuid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 823
    .local v2, seq:J
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getPropertyList()Lcom/samsung/upnp/event/PropertyList;

    move-result-object v10

    .line 824
    .local v10, props:Lcom/samsung/upnp/event/PropertyList;
    invoke-virtual {v10}, Lcom/samsung/upnp/event/PropertyList;->size()I

    move-result v9

    .line 825
    .local v9, propCnt:I
    const/4 v6, 0x0

    .local v6, n:I
    :goto_1f
    if-lt v6, v9, :cond_25

    .line 831
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnOK()Z

    .line 836
    .end local v1           #uuid:Ljava/lang/String;
    .end local v2           #seq:J
    .end local v6           #n:I
    .end local v7           #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .end local v9           #propCnt:I
    .end local v10           #props:Lcom/samsung/upnp/event/PropertyList;
    :goto_24
    return-void

    .line 826
    .restart local v1       #uuid:Ljava/lang/String;
    .restart local v2       #seq:J
    .restart local v6       #n:I
    .restart local v7       #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .restart local v9       #propCnt:I
    .restart local v10       #props:Lcom/samsung/upnp/event/PropertyList;
    :cond_25
    invoke-virtual {v10, v6}, Lcom/samsung/upnp/event/PropertyList;->getProperty(I)Lcom/samsung/upnp/event/Property;

    move-result-object v8

    .line 827
    .local v8, prop:Lcom/samsung/upnp/event/Property;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, varName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, varValue:Ljava/lang/String;
    move-object v0, p0

    .line 829
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 825
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 835
    .end local v1           #uuid:Ljava/lang/String;
    .end local v2           #seq:J
    .end local v4           #varName:Ljava/lang/String;
    .end local v5           #varValue:Ljava/lang/String;
    .end local v6           #n:I
    .end local v7           #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .end local v8           #prop:Lcom/samsung/upnp/event/Property;
    .end local v9           #propCnt:I
    .end local v10           #props:Lcom/samsung/upnp/event/PropertyList;
    :cond_38
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_24
.end method

.method public isTarget(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 755
    if-nez p1, :cond_6

    move v0, v1

    .line 763
    :goto_5
    return v0

    .line 757
    :cond_6
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    .line 758
    goto :goto_5

    .line 759
    :cond_10
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    .line 763
    goto :goto_5

    .line 759
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 760
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 761
    goto :goto_5
.end method

.method public isValidNotifyPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 3
    .parameter "packet"

    .prologue
    .line 672
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->isTarget(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidResponsePacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 3
    .parameter "packet"

    .prologue
    .line 676
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->isTarget(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 680
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, udn:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 684
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 685
    :cond_17
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 686
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 696
    :cond_20
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 697
    return-void
.end method

.method public performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 622
    monitor-enter p0

    .line 623
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 624
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 622
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 640
    return-void

    .line 626
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 627
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 628
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceAdded(Lcom/samsung/api/DeviceItem;)V

    .line 624
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 629
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 630
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceAdded(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 631
    :catch_2d
    move-exception v0

    .line 632
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 622
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 634
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 635
    .local v0, e:Ljava/lang/Error;
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    goto :goto_20
.end method

.method public performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    .line 869
    const-string v0, "LastChange"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 870
    invoke-direct {p0, p5}, Lcom/samsung/upnp/ControlPoint;->parseLastChangEvent(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v7

    .line 871
    if-nez v7, :cond_f

    .line 919
    :cond_e
    return-void

    .line 874
    :cond_f
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 875
    const-string v0, "val"

    invoke-virtual {v7, v0}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 876
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 884
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v8

    .line 885
    const/4 v0, 0x0

    move v6, v0

    :goto_2b
    if-ge v6, v8, :cond_e

    .line 887
    :try_start_2d
    invoke-virtual {v7, v6}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 889
    const-string v1, "val"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_41
    :goto_41
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_44} :catch_7c

    move-result v0

    if-nez v0, :cond_67

    .line 885
    :goto_47
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2b

    .line 876
    :cond_4b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 878
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_5b

    .line 879
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 880
    :cond_5b
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_1f

    .line 881
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 890
    :cond_67
    :try_start_67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_7c

    move-result-object v0

    .line 893
    :try_start_6b
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_7e

    .line 894
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_76} :catch_77
    .catch Ljava/lang/Error; {:try_start_6b .. :try_end_76} :catch_8a

    goto :goto_41

    .line 897
    :catch_77
    move-exception v0

    .line 898
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_41

    .line 906
    :catch_7c
    move-exception v0

    goto :goto_47

    .line 895
    :cond_7e
    :try_start_7e
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_41

    .line 896
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_89} :catch_77
    .catch Ljava/lang/Error; {:try_start_7e .. :try_end_89} :catch_8a

    goto :goto_41

    .line 900
    :catch_8a
    move-exception v0

    .line 901
    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_7c

    goto :goto_41

    .line 911
    :cond_8f
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_95
    :goto_95
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 913
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_ad

    .line 914
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 915
    :cond_ad
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_95

    .line 916
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_95
.end method

.method public performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 7
    .parameter "ssdpPacket"

    .prologue
    .line 530
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 531
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_7
    if-lt v3, v2, :cond_a

    .line 543
    return-void

    .line 533
    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/device/NotifyListener;

    .line 534
    .local v1, listener:Lcom/samsung/upnp/device/NotifyListener;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/NotifyListener;->deviceNotifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_15} :catch_1d

    .line 531
    .end local v1           #listener:Lcom/samsung/upnp/device/NotifyListener;
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 535
    :catch_18
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_15
.end method

.method public performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 644
    monitor-enter p0

    .line 645
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 646
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 644
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 665
    return-void

    .line 650
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 651
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 652
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceRemoved(Lcom/samsung/api/DeviceItem;)V

    .line 646
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 653
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 654
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceRemoved(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 656
    :catch_2d
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 644
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 659
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/Error;
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    goto :goto_20
.end method

.method public performSearchResponseListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 7
    .parameter "ssdpPacket"

    .prologue
    .line 560
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 561
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_7
    if-lt v3, v2, :cond_a

    .line 573
    return-void

    .line 563
    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/device/SearchResponseListener;

    .line 564
    .local v1, listener:Lcom/samsung/upnp/device/SearchResponseListener;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_15} :catch_1d

    .line 561
    .end local v1           #listener:Lcom/samsung/upnp/device/SearchResponseListener;
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 565
    :catch_18
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 568
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_15
.end method

.method public renewSubscriberService()V
    .registers 3

    .prologue
    .line 1099
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 1100
    return-void
.end method

.method public renewSubscriberService(J)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1091
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1092
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v1, :cond_c

    .line 1096
    return-void

    .line 1093
    :cond_c
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1094
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1092
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public renewSubscriberService(Lcom/samsung/upnp/Device;J)V
    .registers 14
    .parameter "dev"
    .parameter "timeout"

    .prologue
    .line 1069
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v7

    .line 1070
    .local v7, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v7}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v6

    .line 1071
    .local v6, serviceCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v6, :cond_17

    .line 1081
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1082
    .local v2, cdevList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1083
    .local v1, cdevCnt:I
    const/4 v4, 0x0

    :goto_14
    if-lt v4, v1, :cond_32

    .line 1087
    return-void

    .line 1072
    .end local v1           #cdevCnt:I
    .end local v2           #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    invoke-virtual {v7, v4}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v5

    .line 1073
    .local v5, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_24

    .line 1071
    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1075
    :cond_24
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 1076
    .local v8, sid:Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 1077
    .local v3, isRenewed:Z
    if-nez v3, :cond_21

    .line 1078
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;J)Z

    goto :goto_21

    .line 1084
    .end local v3           #isRenewed:Z
    .end local v5           #service:Lcom/samsung/upnp/Service;
    .end local v8           #sid:Ljava/lang/String;
    .restart local v1       #cdevCnt:I
    .restart local v2       #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_32
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1085
    .local v0, cdev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1083
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method public search()V
    .registers 5

    .prologue
    .line 780
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 781
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_f
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 788
    return-void

    .line 783
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 784
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;

    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSearchMx()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 785
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v0

    .line 786
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z

    goto :goto_15
.end method

.method public searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 5
    .parameter "packet"

    .prologue
    .line 700
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, udn:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 704
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 710
    :cond_11
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->performSearchResponseListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 711
    return-void
.end method

.method public setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V
    .registers 2
    .parameter "disposer"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    .line 508
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 499
    iput-wide p1, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 500
    return-void
.end method

.method public setHTTPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 197
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 198
    return-void
.end method

.method public setNMPRMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/samsung/upnp/ControlPoint;->nmprMode:Z

    .line 208
    return-void
.end method

.method public setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

    .line 1110
    return-void
.end method

.method public setSSDPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 183
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 184
    return-void
.end method

.method public start()Z
    .registers 7

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->stop()Z

    .line 1128
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    .line 1129
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v3

    move v1, v2

    .line 1131
    :goto_f
    invoke-virtual {v3, v0}, Lcom/samsung/http/HTTPServerList;->open(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1139
    invoke-virtual {v3}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    .line 1204
    :cond_1b
    :goto_1b
    return v2

    .line 1132
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 1133
    if-lt v5, v1, :cond_1b

    .line 1135
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setHTTPPort(I)V

    .line 1136
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_f

    .line 1142
    :cond_2a
    invoke-virtual {v3, p0}, Lcom/samsung/http/HTTPServerList;->addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V

    .line 1143
    invoke-virtual {v3}, Lcom/samsung/http/HTTPServerList;->start()V

    .line 1149
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1152
    invoke-virtual {v0, p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 1154
    :try_start_3d
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->start()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_83

    .line 1163
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    .line 1165
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v3

    move v1, v2

    .line 1166
    :goto_49
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1173
    invoke-virtual {v3, p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 1175
    :try_start_52
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->start()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_85

    .line 1183
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->search()V

    .line 1189
    new-instance v0, Lcom/samsung/upnp/device/Disposer;

    invoke-direct {v0, p0}, Lcom/samsung/upnp/device/Disposer;-><init>(Lcom/samsung/upnp/IControlPoint;)V

    .line 1190
    const-string v1, "Device Disposer"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/device/Disposer;->setName(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 1192
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Disposer;->start()V

    .line 1199
    new-instance v0, Lcom/samsung/upnp/control/RenewSubscriber;

    invoke-direct {v0, p0}, Lcom/samsung/upnp/control/RenewSubscriber;-><init>(Lcom/samsung/upnp/IControlPoint;)V

    .line 1200
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 1201
    invoke-virtual {v0}, Lcom/samsung/upnp/control/RenewSubscriber;->start()V

    .line 1204
    const/4 v2, 0x1

    goto :goto_1b

    .line 1167
    :cond_75
    add-int/lit8 v1, v1, 0x1

    .line 1168
    if-lt v5, v1, :cond_1b

    .line 1170
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setSSDPPort(I)V

    .line 1171
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    goto :goto_49

    .line 1155
    :catch_83
    move-exception v0

    goto :goto_1b

    .line 1176
    :catch_85
    move-exception v0

    goto :goto_1b
.end method

.method public stop()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe()V

    .line 1259
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v3

    .line 1260
    .local v3, ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 1261
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 1262
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 1264
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    .line 1265
    .local v4, ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 1266
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 1267
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 1269
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v1

    .line 1270
    .local v1, httpServerList:Lcom/samsung/http/HTTPServerList;
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->stop()V

    .line 1271
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->close()Z

    .line 1272
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->clear()V

    .line 1276
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->clear()V

    .line 1282
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceDisposer()Lcom/samsung/upnp/device/Disposer;

    move-result-object v0

    .line 1283
    .local v0, disposer:Lcom/samsung/upnp/device/Disposer;
    if-eqz v0, :cond_3c

    .line 1284
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Disposer;->stop()V

    .line 1285
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 1292
    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getRenewSubscriber()Lcom/samsung/upnp/control/RenewSubscriber;

    move-result-object v2

    .line 1293
    .local v2, renewSub:Lcom/samsung/upnp/control/RenewSubscriber;
    if-eqz v2, :cond_48

    .line 1294
    invoke-virtual {v2}, Lcom/samsung/upnp/control/RenewSubscriber;->stop()V

    .line 1295
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 1298
    :cond_48
    const/4 v5, 0x1

    return v5
.end method

.method public subscribe(Lcom/samsung/upnp/Service;J)Z
    .registers 11
    .parameter "service"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 954
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 955
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 956
    .local v2, sid:Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 973
    .end local v2           #sid:Ljava/lang/String;
    :cond_f
    :goto_f
    return v5

    .line 959
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 960
    .local v1, rootDev:Lcom/samsung/upnp/Device;
    if-eqz v1, :cond_f

    .line 962
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, ifAddress:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 964
    .local v3, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v6, p2, p3}, Lcom/samsung/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 965
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 966
    .local v4, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 967
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 969
    const/4 v5, 0x1

    goto :goto_f

    .line 972
    :cond_40
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    goto :goto_f
.end method

.method public subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z
    .registers 9
    .parameter "service"
    .parameter "uuid"
    .parameter "timeout"

    .prologue
    .line 982
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 983
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/upnp/event/SubscriptionRequest;->setRenewRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 984
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 985
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->print()V

    .line 986
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 987
    .local v1, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 988
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 989
    :cond_1e
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 990
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 992
    const/4 v2, 0x1

    .line 995
    :goto_33
    return v2

    .line 994
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    .line 995
    const/4 v2, 0x0

    goto :goto_33
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1040
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1041
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v1, :cond_c

    .line 1045
    return-void

    .line 1042
    :cond_c
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1043
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Device;)V

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public unsubscribe(Lcom/samsung/upnp/Device;)V
    .registers 10
    .parameter "device"

    .prologue
    .line 1022
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1023
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1024
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_17

    .line 1030
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1031
    .local v2, childDevList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1032
    .local v1, childDevCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_27

    .line 1036
    return-void

    .line 1025
    .end local v1           #childDevCnt:I
    .end local v2           #childDevList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1026
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4}, Lcom/samsung/upnp/Service;->hasSID()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1027
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Service;)Z

    .line 1024
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1033
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #childDevCnt:I
    .restart local v2       #childDevList:Lcom/samsung/upnp/DeviceList;
    :cond_27
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1034
    .local v0, cdev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Device;)V

    .line 1032
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public unsubscribe(Lcom/samsung/upnp/Service;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 1011
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1012
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lcom/samsung/upnp/Service;)V

    .line 1013
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1014
    .local v1, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1015
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    .line 1016
    const/4 v2, 0x1

    .line 1018
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method
