.class public Lcom/samsung/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Lcom/samsung/http/HTTPRequestListener;
.implements Lcom/samsung/upnp/IControlPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;,
        Lcom/samsung/upnp/ControlPoint$descriptionWorker;,
        Lcom/samsung/upnp/ControlPoint$manageDevice;
    }
.end annotation


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

.field mDeviceHandler:Landroid/os/Handler;

.field mDeviceManager:Landroid/os/HandlerThread;

.field mExeutor:Ljava/util/concurrent/ExecutorService;

.field mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

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
    .line 158
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialize()V

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const-wide v5, 0x40c3880000000000L

    const-wide v3, 0x40bf7a0000000000L

    .line 184
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

    .line 185
    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .parameter "ssdpPort"
    .parameter "httpPort"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v2, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    .line 140
    iput-object v2, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    .line 142
    iput-object v2, p0, Lcom/samsung/upnp/ControlPoint;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 143
    iput-object v2, p0, Lcom/samsung/upnp/ControlPoint;->mExeutor:Ljava/util/concurrent/ExecutorService;

    .line 191
    iput v3, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 205
    iput v3, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 234
    new-instance v0, Lcom/samsung/xml/NodeList;

    invoke-direct {v0}, Lcom/samsung/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    .line 547
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    .line 578
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    .line 611
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    .line 808
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/upnp/ControlPoint;->searchMx:I

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    .line 899
    new-instance v0, Lcom/samsung/http/HTTPServerList;

    invoke-direct {v0}, Lcom/samsung/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->httpServerList:Lcom/samsung/http/HTTPServerList;

    .line 938
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    .line 1034
    const-string v0, "/evetSub"

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    .line 167
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->setSSDPPort(I)V

    .line 170
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/ControlPoint;->setHTTPPort(I)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 173
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 178
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 179
    const-string v0, "Test Discovery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ControlPoint Created:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/xml/Node;)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addActivityDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    return-void
.end method

.method private addActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 249
    const-string v0, "ControlPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "Test Discovery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method private addDevice(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "rootNode"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method private getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 383
    if-nez p1, :cond_4

    .line 388
    :cond_3
    :goto_3
    return-object v0

    .line 385
    :cond_4
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_3

    .line 388
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_3
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "host"

    .prologue
    .line 1046
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
    .line 902
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->httpServerList:Lcom/samsung/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private isActivityDevice(Ljava/lang/String;)Z
    .registers 3
    .parameter "udn"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValidTarget(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 833
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

    .line 1018
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 1021
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 1022
    if-nez v1, :cond_c

    .line 1028
    :goto_b
    return-object v0

    .line 1024
    :cond_c
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    :try_end_11
    .catch Lcom/samsung/xml/ParserException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_b

    .line 1025
    :catch_13
    move-exception v1

    .line 1026
    invoke-virtual {v1}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_b
.end method

.method private removeActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 255
    const-string v0, "ControlPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "Test Discovery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method private removeDevice(Lcom/samsung/upnp/Device;)V
    .registers 3
    .parameter "dev"

    .prologue
    .line 482
    if-nez p1, :cond_3

    .line 485
    :goto_2
    return-void

    .line 484
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
    .line 493
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-nez v2, :cond_7

    .line 498
    :goto_6
    return-void

    .line 495
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, usn:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private removeDevice(Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "rootNode"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 475
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 476
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V

    .line 478
    :cond_f
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v1, p1}, Lcom/samsung/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method private removeDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 489
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/Device;)V

    .line 490
    return-void
.end method


# virtual methods
.method protected addDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 13
    .parameter "ssdpPacket"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, usn:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, udn:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, location:Ljava/lang/String;
    :try_start_c
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, locationUrl:Ljava/net/URL;
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v3

    .line 272
    .local v3, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v3, v1}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 276
    .local v6, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v6}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_52
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_1c} :catch_34
    .catch Lcom/samsung/xml/ParserException; {:try_start_c .. :try_end_1c} :catch_43

    move-result-object v5

    .line 277
    .local v5, rootDev:Lcom/samsung/upnp/Device;
    if-nez v5, :cond_23

    .line 299
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 301
    .end local v1           #locationUrl:Ljava/net/URL;
    .end local v3           #parser:Lcom/samsung/xml/Parser;
    .end local v5           #rootDev:Lcom/samsung/upnp/Device;
    .end local v6           #rootNode:Lcom/samsung/xml/Node;
    :goto_22
    return-void

    .line 281
    .restart local v1       #locationUrl:Ljava/net/URL;
    .restart local v3       #parser:Lcom/samsung/xml/Parser;
    .restart local v5       #rootDev:Lcom/samsung/upnp/Device;
    .restart local v6       #rootNode:Lcom/samsung/xml/Node;
    :cond_23
    :try_start_23
    invoke-virtual {v5, p1}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 284
    iget-object v9, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v10, Lcom/samsung/upnp/ControlPoint$manageDevice;

    invoke-direct {v10, p0, p1, v6}, Lcom/samsung/upnp/ControlPoint$manageDevice;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_52
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_30} :catch_34
    .catch Lcom/samsung/xml/ParserException; {:try_start_23 .. :try_end_30} :catch_43

    .line 299
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_22

    .line 292
    .end local v1           #locationUrl:Ljava/net/URL;
    .end local v3           #parser:Lcom/samsung/xml/Parser;
    .end local v5           #rootDev:Lcom/samsung/upnp/Device;
    .end local v6           #rootNode:Lcom/samsung/xml/Node;
    :catch_34
    move-exception v2

    .line 293
    .local v2, me:Ljava/net/MalformedURLException;
    :try_start_35
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 294
    invoke-static {v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_52

    .line 299
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_22

    .line 295
    .end local v2           #me:Ljava/net/MalformedURLException;
    :catch_43
    move-exception v4

    .line 296
    .local v4, pe:Lcom/samsung/xml/ParserException;
    :try_start_44
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 297
    invoke-static {v4}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_52

    .line 299
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    goto :goto_22

    .line 298
    .end local v4           #pe:Lcom/samsung/xml/ParserException;
    :catchall_52
    move-exception v9

    .line 299
    invoke-direct {p0, v7}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    .line 300
    throw v9
.end method

.method public addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    if-nez p1, :cond_4

    .line 634
    const/4 v0, 0x0

    .line 637
    :goto_3
    return v0

    .line 636
    :cond_4
    monitor-enter p0

    .line 637
    :try_start_5
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_3

    .line 636
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public addEventListener(Lcom/samsung/upnp/event/EventListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 948
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addSearchTarget(Ljava/lang/String;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 822
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->isValidTarget(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 830
    :cond_8
    :goto_8
    return-void

    .line 825
    :cond_9
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 829
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 825
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 826
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
    .line 426
    if-nez p1, :cond_4

    .line 427
    const/4 v0, 0x0

    .line 428
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
    .line 432
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->size()I

    move-result v3

    .line 434
    .local v3, nRoots:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    add-int/lit8 v5, v3, 0x1

    if-lt v2, v5, :cond_d

    .line 445
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 435
    :cond_d
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5, v2}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 436
    .local v4, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v4}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 437
    .local v1, dev:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_1c

    .line 434
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 439
    :cond_1c
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 441
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 442
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_19

    move-object v1, v0

    .line 443
    goto :goto_c
.end method

.method public getDeviceDisposer()Lcom/samsung/upnp/device/Disposer;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 10

    .prologue
    .line 392
    new-instance v1, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v1}, Lcom/samsung/upnp/DeviceList;-><init>()V

    .line 393
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7}, Lcom/samsung/xml/NodeList;->size()I

    move-result v5

    .line 394
    .local v5, nRoots:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_c
    if-lt v4, v5, :cond_f

    .line 408
    return-object v1

    .line 395
    :cond_f
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7, v4}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 396
    .local v6, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v6}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 397
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_1e

    .line 394
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 399
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 402
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

    .line 403
    .local v2, emDevice:Lcom/samsung/upnp/Device;
    if-eqz v2, :cond_29

    .line 404
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getEventSubURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .registers 3

    .prologue
    .line 532
    iget-wide v0, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lcom/samsung/upnp/control/RenewSubscriber;
    .registers 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .registers 2

    .prologue
    .line 812
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 13
    .parameter "httpReq"

    .prologue
    .line 906
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    .line 910
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 911
    new-instance v7, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v7, p1}, Lcom/samsung/upnp/event/NotifyRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 912
    .local v7, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->isValidNTS()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->hasNT()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 914
    :cond_1a
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    .line 932
    .end local v7           #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    :goto_1d
    return-void

    .line 917
    .restart local v7       #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    :cond_1e
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 918
    .local v1, uuid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 919
    .local v2, seq:J
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getPropertyList()Lcom/samsung/upnp/event/PropertyList;

    move-result-object v10

    .line 920
    .local v10, props:Lcom/samsung/upnp/event/PropertyList;
    invoke-virtual {v10}, Lcom/samsung/upnp/event/PropertyList;->size()I

    move-result v9

    .line 921
    .local v9, propCnt:I
    const/4 v6, 0x0

    .local v6, n:I
    :goto_2f
    if-lt v6, v9, :cond_35

    .line 927
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnOK()Z

    goto :goto_1d

    .line 922
    :cond_35
    invoke-virtual {v10, v6}, Lcom/samsung/upnp/event/PropertyList;->getProperty(I)Lcom/samsung/upnp/event/Property;

    move-result-object v8

    .line 923
    .local v8, prop:Lcom/samsung/upnp/event/Property;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 924
    .local v4, varName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, varValue:Ljava/lang/String;
    move-object v0, p0

    .line 925
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 921
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 931
    .end local v1           #uuid:Ljava/lang/String;
    .end local v2           #seq:J
    .end local v4           #varName:Ljava/lang/String;
    .end local v5           #varValue:Ljava/lang/String;
    .end local v6           #n:I
    .end local v7           #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .end local v8           #prop:Lcom/samsung/upnp/event/Property;
    .end local v9           #propCnt:I
    .end local v10           #props:Lcom/samsung/upnp/event/PropertyList;
    :cond_48
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_1d
.end method

.method public isTarget(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 846
    if-nez p1, :cond_6

    move v0, v1

    .line 854
    :goto_5
    return v0

    .line 848
    :cond_6
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    .line 849
    goto :goto_5

    .line 850
    :cond_10
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    .line 854
    goto :goto_5

    .line 850
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 851
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 852
    goto :goto_5
.end method

.method public isValidNotifyPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 3
    .parameter "packet"

    .prologue
    .line 701
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
    .line 705
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->isTarget(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 709
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 710
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 714
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$1;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    :cond_20
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 722
    return-void
.end method

.method public performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 651
    monitor-enter p0

    .line 652
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 653
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 651
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 669
    return-void

    .line 655
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 656
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 657
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceAdded(Lcom/samsung/api/DeviceItem;)V

    .line 653
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 658
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 659
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceAdded(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 660
    :catch_2d
    move-exception v0

    .line 661
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 651
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 663
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 664
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
    .line 964
    .line 965
    const-string v0, "LastChange"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 966
    invoke-direct {p0, p5}, Lcom/samsung/upnp/ControlPoint;->parseLastChangEvent(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v7

    .line 967
    if-nez v7, :cond_f

    .line 1015
    :cond_e
    return-void

    .line 970
    :cond_f
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 971
    const-string v0, "val"

    invoke-virtual {v7, v0}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 972
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 980
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v8

    .line 981
    const/4 v0, 0x0

    move v6, v0

    :goto_2b
    if-ge v6, v8, :cond_e

    .line 983
    :try_start_2d
    invoke-virtual {v7, v6}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 985
    const-string v1, "val"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 986
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

    .line 981
    :goto_47
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2b

    .line 972
    :cond_4b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 974
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_5b

    .line 975
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 976
    :cond_5b
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_1f

    .line 977
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 986
    :cond_67
    :try_start_67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_7c

    move-result-object v0

    .line 989
    :try_start_6b
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_7e

    .line 990
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_76} :catch_77
    .catch Ljava/lang/Error; {:try_start_6b .. :try_end_76} :catch_8a

    goto :goto_41

    .line 993
    :catch_77
    move-exception v0

    .line 994
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_41

    .line 1002
    :catch_7c
    move-exception v0

    goto :goto_47

    .line 991
    :cond_7e
    :try_start_7e
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_41

    .line 992
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_89} :catch_77
    .catch Ljava/lang/Error; {:try_start_7e .. :try_end_89} :catch_8a

    goto :goto_41

    .line 996
    :catch_8a
    move-exception v0

    .line 997
    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_7c

    goto :goto_41

    .line 1007
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

    .line 1009
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_ad

    .line 1010
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 1011
    :cond_ad
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_95

    .line 1012
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
    .line 559
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 560
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_7
    if-lt v3, v2, :cond_a

    .line 572
    return-void

    .line 562
    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/device/NotifyListener;

    .line 563
    .local v1, listener:Lcom/samsung/upnp/device/NotifyListener;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/NotifyListener;->deviceNotifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_15} :catch_1d

    .line 560
    .end local v1           #listener:Lcom/samsung/upnp/device/NotifyListener;
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 564
    :catch_18
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 567
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_15
.end method

.method public performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 673
    monitor-enter p0

    .line 674
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 675
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 673
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 694
    return-void

    .line 679
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 680
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 681
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceRemoved(Lcom/samsung/api/DeviceItem;)V

    .line 675
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 682
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 683
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceRemoved(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 685
    :catch_2d
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 673
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 688
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Error;
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    goto :goto_20
.end method

.method public removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 644
    monitor-enter p0

    .line 645
    :try_start_1
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 644
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public removeDeviceItem(Ljava/lang/String;)V
    .registers 2
    .parameter "udn"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public removeDeviceList(Ljava/lang/String;)V
    .registers 6
    .parameter "target"

    .prologue
    .line 412
    if-nez p1, :cond_3

    .line 423
    :cond_2
    :goto_2
    return-void

    .line 415
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v3}, Lcom/samsung/xml/NodeList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_b
    if-ltz v2, :cond_2

    .line 416
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v3, v2}, Lcom/samsung/xml/NodeList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/xml/Node;

    invoke-direct {p0, v3}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 417
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 418
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v3, v2}, Lcom/samsung/xml/NodeList;->remove(I)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2d

    .line 415
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 420
    .end local v0           #dev:Lcom/samsung/upnp/Device;
    .end local v2           #i:I
    :catch_2d
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public renewSubscriberService()V
    .registers 3

    .prologue
    .line 1195
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 1196
    return-void
.end method

.method public renewSubscriberService(J)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1187
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1188
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v1, :cond_c

    .line 1192
    return-void

    .line 1189
    :cond_c
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1190
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1188
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public renewSubscriberService(Lcom/samsung/upnp/Device;J)V
    .registers 14
    .parameter "dev"
    .parameter "timeout"

    .prologue
    .line 1165
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v7

    .line 1166
    .local v7, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v7}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v6

    .line 1167
    .local v6, serviceCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v6, :cond_17

    .line 1177
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1178
    .local v2, cdevList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1179
    .local v1, cdevCnt:I
    const/4 v4, 0x0

    :goto_14
    if-lt v4, v1, :cond_32

    .line 1183
    return-void

    .line 1168
    .end local v1           #cdevCnt:I
    .end local v2           #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    invoke-virtual {v7, v4}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v5

    .line 1169
    .local v5, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_24

    .line 1167
    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1171
    :cond_24
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 1172
    .local v8, sid:Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 1173
    .local v3, isRenewed:Z
    if-nez v3, :cond_21

    .line 1174
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;J)Z

    goto :goto_21

    .line 1180
    .end local v3           #isRenewed:Z
    .end local v5           #service:Lcom/samsung/upnp/Service;
    .end local v8           #sid:Ljava/lang/String;
    .restart local v1       #cdevCnt:I
    .restart local v2       #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_32
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1181
    .local v0, cdev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1179
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method public search()V
    .registers 5

    .prologue
    .line 871
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 872
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_f
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 879
    return-void

    .line 874
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 875
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;

    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSearchMx()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 876
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z

    goto :goto_15
.end method

.method public searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    return-void
.end method

.method public searchTarget(Ljava/lang/String;)V
    .registers 5
    .parameter "target"

    .prologue
    .line 882
    if-eqz p1, :cond_8

    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->isValidTarget(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 888
    :cond_8
    :goto_8
    return-void

    .line 885
    :cond_9
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;

    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSearchMx()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/samsung/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 886
    .local v0, msReq:Lcom/samsung/upnp/ssdp/SSDPSearchRequest;
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    .line 887
    .local v1, ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lcom/samsung/upnp/ssdp/SSDPSearchRequest;)Z

    goto :goto_8
.end method

.method public setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V
    .registers 2
    .parameter "disposer"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    .line 537
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 528
    iput-wide p1, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 529
    return-void
.end method

.method public setHTTPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 212
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 213
    return-void
.end method

.method public setNMPRMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/samsung/upnp/ControlPoint;->nmprMode:Z

    .line 223
    return-void
.end method

.method public setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

    .line 1206
    return-void
.end method

.method public setSSDPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 198
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 199
    return-void
.end method

.method public start()Z
    .registers 7

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x0

    .line 1217
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->stop()Z

    .line 1225
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1226
    :cond_12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Device Manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    .line 1227
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1228
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    .line 1229
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$2;

    invoke-direct {v1, p0}, Lcom/samsung/upnp/ControlPoint$2;-><init>(Lcom/samsung/upnp/ControlPoint;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1244
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    .line 1245
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v3

    move v1, v2

    .line 1247
    :goto_40
    invoke-virtual {v3, v0}, Lcom/samsung/http/HTTPServerList;->open(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1255
    invoke-virtual {v3}, Lcom/samsung/http/HTTPServerList;->size()I

    move-result v0

    if-nez v0, :cond_5b

    .line 1320
    :cond_4c
    :goto_4c
    return v2

    .line 1248
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 1249
    if-lt v5, v1, :cond_4c

    .line 1251
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setHTTPPort(I)V

    .line 1252
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_40

    .line 1258
    :cond_5b
    invoke-virtual {v3, p0}, Lcom/samsung/http/HTTPServerList;->addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V

    .line 1259
    invoke-virtual {v3}, Lcom/samsung/http/HTTPServerList;->start()V

    .line 1265
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 1268
    invoke-virtual {v0, p0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 1270
    :try_start_6e
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->start()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_b4

    .line 1279
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    .line 1281
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v3

    move v1, v2

    .line 1282
    :goto_7a
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1289
    invoke-virtual {v3, p0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lcom/samsung/upnp/ControlPoint;)V

    .line 1291
    :try_start_83
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->start()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_b6

    .line 1299
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->search()V

    .line 1305
    new-instance v0, Lcom/samsung/upnp/device/Disposer;

    invoke-direct {v0, p0}, Lcom/samsung/upnp/device/Disposer;-><init>(Lcom/samsung/upnp/IControlPoint;)V

    .line 1306
    const-string v1, "Device Disposer"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/device/Disposer;->setName(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 1308
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Disposer;->start()V

    .line 1315
    new-instance v0, Lcom/samsung/upnp/control/RenewSubscriber;

    invoke-direct {v0, p0}, Lcom/samsung/upnp/control/RenewSubscriber;-><init>(Lcom/samsung/upnp/IControlPoint;)V

    .line 1316
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 1317
    invoke-virtual {v0}, Lcom/samsung/upnp/control/RenewSubscriber;->start()V

    .line 1320
    const/4 v2, 0x1

    goto :goto_4c

    .line 1283
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    .line 1284
    if-lt v5, v1, :cond_4c

    .line 1286
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->setSSDPPort(I)V

    .line 1287
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    goto :goto_7a

    .line 1271
    :catch_b4
    move-exception v0

    goto :goto_4c

    .line 1292
    :catch_b6
    move-exception v0

    goto :goto_4c
.end method

.method public stop()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe()V

    .line 1374
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v3

    .line 1375
    .local v3, ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 1376
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 1377
    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 1379
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    .line 1380
    .local v4, ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 1381
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 1382
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 1384
    invoke-direct {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v1

    .line 1385
    .local v1, httpServerList:Lcom/samsung/http/HTTPServerList;
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->stop()V

    .line 1386
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->close()Z

    .line 1387
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->clear()V

    .line 1391
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->clear()V

    .line 1397
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceDisposer()Lcom/samsung/upnp/device/Disposer;

    move-result-object v0

    .line 1398
    .local v0, disposer:Lcom/samsung/upnp/device/Disposer;
    if-eqz v0, :cond_3c

    .line 1399
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Disposer;->stop()V

    .line 1400
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 1407
    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getRenewSubscriber()Lcom/samsung/upnp/control/RenewSubscriber;

    move-result-object v2

    .line 1408
    .local v2, renewSub:Lcom/samsung/upnp/control/RenewSubscriber;
    if-eqz v2, :cond_48

    .line 1409
    invoke-virtual {v2}, Lcom/samsung/upnp/control/RenewSubscriber;->stop()V

    .line 1410
    invoke-virtual {p0, v6}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 1416
    :cond_48
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    if-eqz v5, :cond_5b

    .line 1417
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->quit()Z

    .line 1418
    :goto_51
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_66

    .line 1420
    iput-object v6, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceManager:Landroid/os/HandlerThread;

    .line 1423
    :cond_5b
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->mExeutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v5, :cond_64

    .line 1424
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->mExeutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1426
    :cond_64
    const/4 v5, 0x1

    return v5

    .line 1419
    :cond_66
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_51
.end method

.method public subscribe(Lcom/samsung/upnp/Service;)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 1073
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lcom/samsung/upnp/Service;J)Z
    .registers 11
    .parameter "service"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 1050
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1051
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, sid:Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 1069
    .end local v2           #sid:Ljava/lang/String;
    :cond_f
    :goto_f
    return v5

    .line 1055
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 1056
    .local v1, rootDev:Lcom/samsung/upnp/Device;
    if-eqz v1, :cond_f

    .line 1058
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, ifAddress:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1060
    .local v3, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v6, p2, p3}, Lcom/samsung/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 1061
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 1062
    .local v4, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1063
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 1065
    const/4 v5, 0x1

    goto :goto_f

    .line 1068
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
    .line 1078
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1079
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/upnp/event/SubscriptionRequest;->setRenewRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 1080
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1081
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->print()V

    .line 1082
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1083
    .local v1, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1084
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1085
    :cond_1e
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1086
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 1088
    const/4 v2, 0x1

    .line 1091
    :goto_33
    return v2

    .line 1090
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    .line 1091
    const/4 v2, 0x0

    goto :goto_33
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1136
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1137
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v1, :cond_c

    .line 1141
    return-void

    .line 1138
    :cond_c
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1139
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Device;)V

    .line 1137
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public unsubscribe(Lcom/samsung/upnp/Device;)V
    .registers 10
    .parameter "device"

    .prologue
    .line 1118
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1119
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1120
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_17

    .line 1126
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1127
    .local v2, childDevList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1128
    .local v1, childDevCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_27

    .line 1132
    return-void

    .line 1121
    .end local v1           #childDevCnt:I
    .end local v2           #childDevList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1122
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4}, Lcom/samsung/upnp/Service;->hasSID()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1123
    invoke-virtual {p0, v4}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Service;)Z

    .line 1120
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1129
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #childDevCnt:I
    .restart local v2       #childDevList:Lcom/samsung/upnp/DeviceList;
    :cond_27
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1130
    .local v0, cdev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->unsubscribe(Lcom/samsung/upnp/Device;)V

    .line 1128
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public unsubscribe(Lcom/samsung/upnp/Service;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 1107
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1108
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lcom/samsung/upnp/Service;)V

    .line 1109
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1110
    .local v1, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1111
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    .line 1112
    const/4 v2, 0x1

    .line 1114
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method
