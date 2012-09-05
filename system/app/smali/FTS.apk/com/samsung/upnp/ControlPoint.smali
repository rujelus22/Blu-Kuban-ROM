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

    .line 186
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

    .line 187
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

    .line 193
    iput v3, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 207
    iput v3, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 236
    new-instance v0, Lcom/samsung/xml/NodeList;

    invoke-direct {v0}, Lcom/samsung/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    .line 549
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    .line 580
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/samsung/util/ListenerList;

    .line 613
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    .line 810
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/upnp/ControlPoint;->searchMx:I

    .line 811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    .line 901
    new-instance v0, Lcom/samsung/http/HTTPServerList;

    invoke-direct {v0}, Lcom/samsung/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->httpServerList:Lcom/samsung/http/HTTPServerList;

    .line 935
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    .line 1031
    const-string v0, "/evetSub"

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 167
    const-string v0, "[FT]-Server"

    const-string v1, "ssdp port is fixed "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/samsung/upnp/ssdp/SSDPNotifySocketList;

    .line 169
    new-instance v0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->setSSDPPort(I)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/ControlPoint;->setHTTPPort(I)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V

    .line 175
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 177
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 179
    invoke-virtual {p0, v3}, Lcom/samsung/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/ControlPoint;->setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V

    .line 181
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

    .line 182
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/xml/Node;)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->isActivityDevice(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->addActivityDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    return-void
.end method

.method private addActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 252
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private addDevice(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "rootNode"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method private getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 385
    if-nez p1, :cond_4

    .line 390
    :cond_3
    :goto_3
    return-object v0

    .line 387
    :cond_4
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_3

    .line 390
    new-instance v0, Lcom/samsung/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_3
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "host"

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isActivityDevice(Ljava/lang/String;)Z
    .registers 3
    .parameter "udn"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseLastChangEvent(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 1018
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 1019
    if-nez v1, :cond_c

    .line 1025
    :goto_b
    return-object v0

    .line 1021
    :cond_c
    const-string v2, "InstanceID"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    :try_end_11
    .catch Lcom/samsung/xml/ParserException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_b

    .line 1022
    :catch_13
    move-exception v1

    .line 1023
    invoke-virtual {v1}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    goto :goto_b
.end method

.method private removeActivityDevice(Ljava/lang/String;)V
    .registers 5
    .parameter "udn"

    .prologue
    .line 258
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove activit list udn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private removeDevice(Lcom/samsung/upnp/Device;)V
    .registers 3
    .parameter "dev"

    .prologue
    .line 484
    if-nez p1, :cond_3

    .line 487
    :goto_2
    return-void

    .line 486
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
    .line 495
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-nez v2, :cond_7

    .line 500
    :goto_6
    return-void

    .line 497
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, usn:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, uuid:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private removeDevice(Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "rootNode"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 477
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 478
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/ControlPoint;->performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V

    .line 480
    :cond_f
    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v1, p1}, Lcom/samsung/xml/NodeList;->remove(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method private removeDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 491
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/Device;)V

    .line 492
    return-void
.end method


# virtual methods
.method public getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "name"

    .prologue
    .line 434
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5}, Lcom/samsung/xml/NodeList;->size()I

    move-result v3

    .line 436
    .local v3, nRoots:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_7
    add-int/lit8 v5, v3, 0x1

    if-lt v2, v5, :cond_d

    .line 447
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 437
    :cond_d
    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v5, v2}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 438
    .local v4, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v4}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 439
    .local v1, dev:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_1c

    .line 436
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 441
    :cond_1c
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 443
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 444
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_19

    move-object v1, v0

    .line 445
    goto :goto_c
.end method

.method public getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 10

    .prologue
    .line 394
    new-instance v1, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v1}, Lcom/samsung/upnp/DeviceList;-><init>()V

    .line 395
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7}, Lcom/samsung/xml/NodeList;->size()I

    move-result v5

    .line 396
    .local v5, nRoots:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_c
    if-lt v4, v5, :cond_f

    .line 410
    return-object v1

    .line 397
    :cond_f
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint;->devNodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v7, v4}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v6

    .line 398
    .local v6, rootNode:Lcom/samsung/xml/Node;
    invoke-direct {p0, v6}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 399
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_1e

    .line 396
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 401
    :cond_1e
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 404
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

    .line 405
    .local v2, emDevice:Lcom/samsung/upnp/Device;
    if-eqz v2, :cond_29

    .line 406
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method public getEventSubURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .registers 3

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 13
    .parameter "httpReq"

    .prologue
    .line 908
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    .line 912
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 913
    new-instance v7, Lcom/samsung/upnp/event/NotifyRequest;

    invoke-direct {v7, p1}, Lcom/samsung/upnp/event/NotifyRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 914
    .local v7, notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 915
    .local v1, uuid:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 916
    .local v2, seq:J
    invoke-virtual {v7}, Lcom/samsung/upnp/event/NotifyRequest;->getPropertyList()Lcom/samsung/upnp/event/PropertyList;

    move-result-object v10

    .line 917
    .local v10, props:Lcom/samsung/upnp/event/PropertyList;
    invoke-virtual {v10}, Lcom/samsung/upnp/event/PropertyList;->size()I

    move-result v9

    .line 918
    .local v9, propCnt:I
    const/4 v6, 0x0

    .local v6, n:I
    :goto_1f
    if-lt v6, v9, :cond_25

    .line 924
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnOK()Z

    .line 929
    .end local v1           #uuid:Ljava/lang/String;
    .end local v2           #seq:J
    .end local v6           #n:I
    .end local v7           #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .end local v9           #propCnt:I
    .end local v10           #props:Lcom/samsung/upnp/event/PropertyList;
    :goto_24
    return-void

    .line 919
    .restart local v1       #uuid:Ljava/lang/String;
    .restart local v2       #seq:J
    .restart local v6       #n:I
    .restart local v7       #notifyReq:Lcom/samsung/upnp/event/NotifyRequest;
    .restart local v9       #propCnt:I
    .restart local v10       #props:Lcom/samsung/upnp/event/PropertyList;
    :cond_25
    invoke-virtual {v10, v6}, Lcom/samsung/upnp/event/PropertyList;->getProperty(I)Lcom/samsung/upnp/event/Property;

    move-result-object v8

    .line 920
    .local v8, prop:Lcom/samsung/upnp/event/Property;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, varName:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, varValue:Ljava/lang/String;
    move-object v0, p0

    .line 922
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 918
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 928
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

    .line 848
    if-nez p1, :cond_6

    move v0, v1

    .line 856
    :goto_5
    return v0

    .line 850
    :cond_6
    const-string v0, "upnp:rootdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    .line 851
    goto :goto_5

    .line 852
    :cond_10
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->searchTargetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    .line 856
    goto :goto_5

    .line 852
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 853
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 854
    goto :goto_5
.end method

.method public isValidNotifyPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z
    .registers 3
    .parameter "packet"

    .prologue
    .line 703
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
    .line 707
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
    .line 711
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 712
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 716
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$1;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    :cond_20
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/ControlPoint;->performNotifyListener(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 724
    return-void
.end method

.method public performAddDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 655
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 653
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 671
    return-void

    .line 657
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 658
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 659
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceAdded(Lcom/samsung/api/DeviceItem;)V

    .line 655
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 660
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 661
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceAdded(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 662
    :catch_2d
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 653
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 665
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 666
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
    .line 961
    .line 962
    const-string v0, "LastChange"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 963
    invoke-direct {p0, p5}, Lcom/samsung/upnp/ControlPoint;->parseLastChangEvent(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v7

    .line 964
    if-nez v7, :cond_f

    .line 1012
    :cond_e
    return-void

    .line 967
    :cond_f
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 968
    const-string v0, "val"

    invoke-virtual {v7, v0}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 969
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->eventListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 977
    invoke-virtual {v7}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v8

    .line 978
    const/4 v0, 0x0

    move v6, v0

    :goto_2b
    if-ge v6, v8, :cond_e

    .line 980
    :try_start_2d
    invoke-virtual {v7, v6}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 982
    const-string v1, "val"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 983
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

    .line 978
    :goto_47
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2b

    .line 969
    :cond_4b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 971
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_5b

    .line 972
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 973
    :cond_5b
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_1f

    .line 974
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 983
    :cond_67
    :try_start_67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_7c

    move-result-object v0

    .line 986
    :try_start_6b
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_7e

    .line 987
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_76} :catch_77
    .catch Ljava/lang/Error; {:try_start_6b .. :try_end_76} :catch_8a

    goto :goto_41

    .line 990
    :catch_77
    move-exception v0

    .line 991
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_41

    .line 999
    :catch_7c
    move-exception v0

    goto :goto_47

    .line 988
    :cond_7e
    :try_start_7e
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_41

    .line 989
    check-cast v0, Lcom/samsung/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_89} :catch_77
    .catch Ljava/lang/Error; {:try_start_7e .. :try_end_89} :catch_8a

    goto :goto_41

    .line 993
    :catch_8a
    move-exception v0

    .line 994
    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_7c

    goto :goto_41

    .line 1004
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

    .line 1006
    instance-of v1, v0, Lcom/samsung/api/EventListener;

    if-eqz v1, :cond_ad

    .line 1007
    check-cast v0, Lcom/samsung/api/EventListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/api/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 1008
    :cond_ad
    instance-of v1, v0, Lcom/samsung/upnp/event/EventListener;

    if-eqz v1, :cond_95

    .line 1009
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
    .line 561
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 562
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_7
    if-lt v3, v2, :cond_a

    .line 574
    return-void

    .line 564
    :cond_a
    :try_start_a
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/device/NotifyListener;

    .line 565
    .local v1, listener:Lcom/samsung/upnp/device/NotifyListener;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/NotifyListener;->deviceNotifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_15} :catch_1d

    .line 562
    .end local v1           #listener:Lcom/samsung/upnp/device/NotifyListener;
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 566
    :catch_18
    move-exception v0

    .line 567
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 569
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 570
    .local v0, e:Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_15
.end method

.method public performRemoveDeviceListener(Lcom/samsung/upnp/Device;)V
    .registers 7
    .parameter "dev"

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    :try_start_1
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4}, Lcom/samsung/util/ListenerList;->size()I

    move-result v2

    .line 677
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v2, :cond_c

    .line 675
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    .line 696
    return-void

    .line 681
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint;->deviceChangeListenerList:Lcom/samsung/util/ListenerList;

    invoke-virtual {v4, v3}, Lcom/samsung/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 682
    .local v1, listener:Ljava/lang/Object;
    instance-of v4, v1, Lcom/samsung/api/DeviceChangeListener;

    if-eqz v4, :cond_23

    .line 683
    check-cast v1, Lcom/samsung/api/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    new-instance v4, Lcom/samsung/api/DeviceItem;

    invoke-direct {v4, p1}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v1, v4}, Lcom/samsung/api/DeviceChangeListener;->deviceRemoved(Lcom/samsung/api/DeviceItem;)V

    .line 677
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 684
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_23
    instance-of v4, v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    if-eqz v4, :cond_20

    .line 685
    check-cast v1, Lcom/samsung/upnp/device/DeviceChangeListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/samsung/upnp/device/DeviceChangeListener;->deviceRemoved(Lcom/samsung/upnp/Device;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_2c} :catch_35

    goto :goto_20

    .line 687
    :catch_2d
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 675
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #listenerSize:I
    .end local v3           #n:I
    :catchall_32
    move-exception v4

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v4

    .line 690
    .restart local v2       #listenerSize:I
    .restart local v3       #n:I
    :catch_35
    move-exception v0

    .line 691
    .local v0, e:Ljava/lang/Error;
    :try_start_36
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    goto :goto_20
.end method

.method public renewSubscriberService()V
    .registers 3

    .prologue
    .line 1192
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 1193
    return-void
.end method

.method public renewSubscriberService(J)V
    .registers 7
    .parameter "timeout"

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1184
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1185
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v1, :cond_c

    .line 1189
    return-void

    .line 1186
    :cond_c
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1187
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1185
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public renewSubscriberService(Lcom/samsung/upnp/Device;J)V
    .registers 14
    .parameter "dev"
    .parameter "timeout"

    .prologue
    .line 1162
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v7

    .line 1163
    .local v7, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v7}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v6

    .line 1164
    .local v6, serviceCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v6, :cond_17

    .line 1174
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1175
    .local v2, cdevList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1176
    .local v1, cdevCnt:I
    const/4 v4, 0x0

    :goto_14
    if-lt v4, v1, :cond_32

    .line 1180
    return-void

    .line 1165
    .end local v1           #cdevCnt:I
    .end local v2           #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    invoke-virtual {v7, v4}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v5

    .line 1166
    .local v5, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_24

    .line 1164
    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1168
    :cond_24
    invoke-virtual {v5}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 1169
    .local v8, sid:Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 1170
    .local v3, isRenewed:Z
    if-nez v3, :cond_21

    .line 1171
    invoke-virtual {p0, v5, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;J)Z

    goto :goto_21

    .line 1177
    .end local v3           #isRenewed:Z
    .end local v5           #service:Lcom/samsung/upnp/Service;
    .end local v8           #sid:Ljava/lang/String;
    .restart local v1       #cdevCnt:I
    .restart local v2       #cdevList:Lcom/samsung/upnp/DeviceList;
    :cond_32
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1178
    .local v0, cdev:Lcom/samsung/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/upnp/ControlPoint;->renewSubscriberService(Lcom/samsung/upnp/Device;J)V

    .line 1176
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method public searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;

    invoke-direct {v1, p0, p1}, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 804
    return-void
.end method

.method public setDeviceDisposer(Lcom/samsung/upnp/device/Disposer;)V
    .registers 2
    .parameter "disposer"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->deviceDisposer:Lcom/samsung/upnp/device/Disposer;

    .line 539
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .registers 3
    .parameter "interval"

    .prologue
    .line 530
    iput-wide p1, p0, Lcom/samsung/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 531
    return-void
.end method

.method public setHTTPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 214
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->httpPort:I

    .line 215
    return-void
.end method

.method public setNMPRMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/samsung/upnp/ControlPoint;->nmprMode:Z

    .line 225
    return-void
.end method

.method public setRenewSubscriber(Lcom/samsung/upnp/control/RenewSubscriber;)V
    .registers 2
    .parameter "sub"

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint;->renewSubscriber:Lcom/samsung/upnp/control/RenewSubscriber;

    .line 1203
    return-void
.end method

.method public setSSDPPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 200
    iput p1, p0, Lcom/samsung/upnp/ControlPoint;->ssdpPort:I

    .line 201
    return-void
.end method

.method public subscribe(Lcom/samsung/upnp/Service;J)Z
    .registers 11
    .parameter "service"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 1047
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->isSubscribed()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1048
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, sid:Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/samsung/upnp/ControlPoint;->subscribe(Lcom/samsung/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 1066
    .end local v2           #sid:Ljava/lang/String;
    :cond_f
    :goto_f
    return v5

    .line 1052
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 1053
    .local v1, rootDev:Lcom/samsung/upnp/Device;
    if-eqz v1, :cond_f

    .line 1055
    invoke-virtual {v1}, Lcom/samsung/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, ifAddress:Ljava/lang/String;
    new-instance v3, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1057
    .local v3, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v6, p2, p3}, Lcom/samsung/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 1058
    invoke-virtual {v3}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 1059
    .local v4, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1060
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 1062
    const/4 v5, 0x1

    goto :goto_f

    .line 1065
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
    .line 1075
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>()V

    .line 1076
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/upnp/event/SubscriptionRequest;->setRenewRequest(Lcom/samsung/upnp/Service;Ljava/lang/String;J)V

    .line 1077
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1078
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->print()V

    .line 1079
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post()Lcom/samsung/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 1080
    .local v1, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1081
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1082
    :cond_1e
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1083
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/upnp/Service;->setTimeout(J)V

    .line 1085
    const/4 v2, 0x1

    .line 1088
    :goto_33
    return v2

    .line 1087
    :cond_34
    invoke-virtual {p1}, Lcom/samsung/upnp/Service;->clearSID()V

    .line 1088
    const/4 v2, 0x0

    goto :goto_33
.end method
