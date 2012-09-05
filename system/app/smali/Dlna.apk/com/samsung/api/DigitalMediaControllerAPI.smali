.class public Lcom/samsung/api/DigitalMediaControllerAPI;
.super Ljava/lang/Object;
.source "DigitalMediaControllerAPI.java"


# static fields
.field protected static mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

.field private static volatile mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

.field private mProtocolCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ProtocolInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSimpleDevice:Lcom/samsung/upnp/media/server/SimpleDevice;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mMutex:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "libdoa1001svn321"

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mVersion:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mSimpleDevice:Lcom/samsung/upnp/media/server/SimpleDevice;

    .line 863
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mProtocolCache:Ljava/util/HashMap;

    .line 117
    new-instance v0, Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;-><init>()V

    sput-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    .line 118
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    const-string v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private browseItemByObjectId(Lcom/samsung/api/DeviceItem;Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/DeviceItem;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x191

    const/16 v4, 0xa

    const/4 v6, 0x7

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    if-nez p1, :cond_14

    .line 564
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 566
    :cond_14
    if-ltz p3, :cond_18

    if-gez p4, :cond_1f

    .line 567
    :cond_18
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 569
    :cond_1f
    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    .line 570
    :cond_27
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 572
    :cond_2f
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 573
    if-nez v0, :cond_3d

    .line 574
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 576
    :cond_3d
    const-string v2, "urn:schemas-upnp-org:service:ContentDirectory"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v0

    .line 577
    if-nez v0, :cond_4b

    .line 578
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 579
    :cond_4b
    invoke-virtual {v0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->createDefaultBrowseAction(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 583
    if-nez v0, :cond_5b

    .line 584
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 586
    :cond_5b
    const-string v2, "ObjectID"

    invoke-virtual {v0, v2, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "BrowseFlag"

    const-string v3, "BrowseDirectChildren"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "Filter"

    const-string v3, "*"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v2, "StartingIndex"

    invoke-virtual {v0, v2, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 592
    const-string v2, "RequestedCount"

    invoke-virtual {v0, v2, p4}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 594
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    .line 597
    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_bc

    .line 598
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 599
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 598
    invoke-direct {v1, v4, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 601
    :cond_bc
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 602
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 601
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 606
    :cond_cc
    const-string v2, "Result"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 607
    if-nez v0, :cond_da

    .line 608
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v6}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 609
    :cond_da
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 611
    if-nez v0, :cond_e6

    .line 612
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v6}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 614
    :cond_e6
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    .line 617
    :try_start_ea
    invoke-virtual {v2, v0}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 618
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 620
    const/4 v0, 0x0

    :goto_f3
    if-lt v0, v3, :cond_f6

    .line 632
    :goto_f5
    return-object v1

    .line 621
    :cond_f6
    invoke-virtual {v2, v0}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 622
    new-instance v5, Lcom/samsung/api/ContentItem;

    invoke-direct {v5, v4}, Lcom/samsung/api/ContentItem;-><init>(Lcom/samsung/xml/Node;)V

    .line 623
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_102
    .catch Lcom/samsung/xml/ParserException; {:try_start_ea .. :try_end_102} :catch_105
    .catch Ljava/lang/NullPointerException; {:try_start_ea .. :try_end_102} :catch_10c

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 626
    :catch_105
    move-exception v0

    .line 627
    const-string v0, "DLNA : DMC Service (BrowseItem) xml parser error"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    goto :goto_f5

    .line 628
    :catch_10c
    move-exception v0

    .line 629
    const-string v0, "DLNA : DMC Service (BrowseItem) xml parser error"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v6}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public static getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

    if-nez v0, :cond_13

    .line 107
    sget-object v1, Lcom/samsung/api/DigitalMediaControllerAPI;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_7
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

    if-nez v0, :cond_12

    .line 109
    new-instance v0, Lcom/samsung/api/DigitalMediaControllerAPI;

    invoke-direct {v0}, Lcom/samsung/api/DigitalMediaControllerAPI;-><init>()V

    sput-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

    .line 107
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 112
    :cond_13
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mInstance:Lcom/samsung/api/DigitalMediaControllerAPI;

    return-object v0

    .line 107
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private isSupportProtocolInfo(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)Z
    .registers 12
    .parameter "player"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 926
    invoke-virtual {p0, p1}, Lcom/samsung/api/DigitalMediaControllerAPI;->getProtocolInfo(Lcom/samsung/api/DeviceItem;)Ljava/util/List;

    move-result-object v1

    .line 928
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/api/ProtocolInfo;>;"
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_e
    move v4, v5

    .line 945
    :cond_f
    :goto_f
    return v4

    .line 931
    :cond_10
    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/api/ContentResource;->getProtocolInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/api/ProtocolInfo;->ParseProtocolInfo(Ljava/lang/String;)Lcom/samsung/api/ProtocolInfo;

    move-result-object v3

    .line 932
    .local v3, protocol:Lcom/samsung/api/ProtocolInfo;
    invoke-virtual {v3}, Lcom/samsung/api/ProtocolInfo;->getDlnaPN()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, dlnaPN:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    .line 937
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_34

    move v4, v5

    .line 945
    goto :goto_f

    .line 937
    :cond_34
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/api/ProtocolInfo;

    .line 938
    .local v2, p:Lcom/samsung/api/ProtocolInfo;
    invoke-virtual {v3}, Lcom/samsung/api/ProtocolInfo;->get1stField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/api/ProtocolInfo;->get1stField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 939
    invoke-virtual {v3}, Lcom/samsung/api/ProtocolInfo;->get2ndField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/api/ProtocolInfo;->get2ndField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 940
    invoke-virtual {v3}, Lcom/samsung/api/ProtocolInfo;->get3rdField()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/api/ProtocolInfo;->get3rdField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 941
    invoke-virtual {v2}, Lcom/samsung/api/ProtocolInfo;->getDlnaPN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v2}, Lcom/samsung/api/ProtocolInfo;->getDlnaPN()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2a

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_f
.end method

.method private makeRequestedList(IILjava/util/ArrayList;)Ljava/util/List;
    .registers 6
    .parameter "offset"
    .parameter "requestSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 328
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_d

    .line 329
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 330
    :cond_d
    add-int v0, p1, p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1e

    .line 331
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 333
    :goto_1d
    return-object v0

    :cond_1e
    add-int v0, p1, p2

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1d
.end method

.method private unsubscribeDevice(Ljava/lang/String;)V
    .registers 4
    .parameter "udn"

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 342
    :cond_2
    :goto_2
    return-void

    .line 339
    :cond_3
    sget-object v1, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v1, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 340
    .local v0, device:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_2

    .line 341
    sget-object v1, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v1, v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->unsubscribe(Lcom/samsung/upnp/Device;)V

    goto :goto_2
.end method


# virtual methods
.method public addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    move-result v0

    return v0
.end method

.method public addEventListener(Lcom/samsung/upnp/event/EventListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addEventListener(Lcom/samsung/upnp/event/EventListener;)Z

    move-result v0

    return v0
.end method

.method public browseItemsDown(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;II)Ljava/util/List;
    .registers 7
    .parameter "server"
    .parameter "item"
    .parameter "offset"
    .parameter "requestSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/DeviceItem;",
            "Lcom/samsung/api/ContentItem;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 408
    if-nez p2, :cond_a

    .line 409
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 411
    :cond_a
    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/api/DigitalMediaControllerAPI;->browseItemByObjectId(Lcom/samsung/api/DeviceItem;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    goto :goto_16
.end method

.method convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .parameter

    .prologue
    .line 2146
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2147
    const/4 v0, 0x0

    .line 2150
    :try_start_8
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    .line 2162
    :goto_c
    return-object v0

    .line 2152
    :catch_d
    move-exception v2

    .line 2156
    :try_start_e
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_13} :catch_15

    move-result-object v0

    goto :goto_c

    .line 2158
    :catch_15
    move-exception v1

    .line 2160
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_c
.end method

.method public createObject(Lcom/samsung/api/ContentItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x1f5

    .line 1538
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getResourceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1539
    :cond_12
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1542
    :cond_1a
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p2}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1543
    if-nez v0, :cond_29

    .line 1544
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1547
    :cond_29
    if-nez p3, :cond_32

    .line 1548
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1551
    :cond_32
    const-string v1, "CreateObject"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v1

    .line 1552
    if-nez v1, :cond_42

    .line 1553
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1555
    :cond_42
    const-string v0, "ContainerID"

    invoke-virtual {v1, v0, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    new-instance v2, Lcom/samsung/upnp/media/server/object/DIDLLite;

    invoke-direct {v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;-><init>()V

    .line 1557
    new-instance v3, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    invoke-direct {v3}, Lcom/samsung/upnp/media/server/object/item/ItemNode;-><init>()V

    .line 1558
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setID(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v3, p3}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setParentID(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setRestricted(I)V

    .line 1561
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setTitle(Ljava/lang/String;)V

    .line 1562
    const-string v0, ""

    .line 1563
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v4

    packed-switch v4, :pswitch_data_15e

    .line 1574
    :goto_70
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setUPnPClass(Ljava/lang/String;)V

    .line 1576
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>()V

    .line 1577
    const-string v4, "res"

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setName(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v4

    .line 1579
    if-eqz v4, :cond_8c

    .line 1580
    const-string v5, "protocolInfo"

    invoke-virtual {v4}, Lcom/samsung/api/ContentResource;->getCreateObjectProtocolInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_8c
    const-string v5, "size"

    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v3, v0}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 1585
    if-eqz v4, :cond_be

    .line 1586
    const-string v0, "sec:uploadItemID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :cond_be
    const-string v0, "sec:uploadDeviceType"

    sget-object v4, Lcom/samsung/api/HTTP_API;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v0, "sec:uploadDeviceName"

    sget-object v4, Lcom/samsung/http/HTTP;->FRIENDLYNAME:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/object/DIDLLite;->setContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V

    .line 1591
    const-string v0, "Elements"

    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v0

    if-nez v0, :cond_114

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "action fail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    .line 1596
    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-virtual {v1}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    .line 1595
    invoke-direct {v0, v7, v2, v1}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 1565
    :pswitch_108
    const-string v0, "object.item.audioItem.musicTrack"

    goto/16 :goto_70

    .line 1568
    :pswitch_10c
    const-string v0, "object.item.imageItem.photo"

    goto/16 :goto_70

    .line 1571
    :pswitch_110
    const-string v0, "object.item.videoItem.movie"

    goto/16 :goto_70

    .line 1600
    :cond_114
    const-string v0, "Result"

    invoke-virtual {v1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 1601
    if-nez v0, :cond_122

    .line 1602
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1604
    :cond_122
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1606
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    .line 1607
    if-nez v2, :cond_132

    .line 1608
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1610
    :cond_132
    const/4 v0, 0x0

    .line 1612
    :try_start_133
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 1613
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 1614
    if-eqz v1, :cond_14c

    .line 1615
    const-string v2, "res"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_14c

    .line 1617
    const-string v0, "importUri"

    invoke-virtual {v1, v0}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14b
    .catch Lcom/samsung/xml/ParserException; {:try_start_133 .. :try_end_14b} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_14b} :catch_157

    move-result-object v0

    .line 1625
    :cond_14c
    return-object v0

    .line 1619
    :catch_14d
    move-exception v0

    .line 1620
    invoke-virtual {v0}, Lcom/samsung/xml/ParserException;->printStackTrace()V

    .line 1621
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1622
    :catch_157
    move-exception v0

    .line 1623
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1563
    :pswitch_data_15e
    .packed-switch 0x3
        :pswitch_108
        :pswitch_110
        :pswitch_10c
    .end packed-switch
.end method

.method public getBrowseTotalMatchCount(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)I
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x191

    const/16 v3, 0xa

    .line 441
    if-nez p2, :cond_e

    .line 442
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 444
    :cond_e
    if-nez p1, :cond_18

    .line 445
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 447
    :cond_18
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 448
    if-nez v0, :cond_26

    .line 449
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 452
    :cond_26
    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getChildCount()I

    move-result v1

    if-ltz v1, :cond_31

    .line 453
    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getChildCount()I

    move-result v0

    .line 488
    :goto_30
    return v0

    .line 455
    :cond_31
    const-string v1, "urn:schemas-upnp-org:service:ContentDirectory"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v0

    .line 456
    if-nez v0, :cond_3f

    .line 457
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 458
    :cond_3f
    invoke-virtual {v0}, Lcom/samsung/upnp/Service;->getServiceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->createDefaultBrowseAction(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 462
    if-nez v0, :cond_4f

    .line 463
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 465
    :cond_4f
    const-string v1, "ObjectID"

    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "BrowseFlag"

    const-string v2, "BrowseDirectChildren"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "Filter"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v1, "StartingIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 471
    const-string v1, "RequestedCount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 473
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_c6

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_b6

    .line 477
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 478
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 477
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 480
    :cond_b6
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 481
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 480
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 485
    :cond_c6
    const-string v1, "TotalMatches"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 486
    if-nez v0, :cond_d5

    .line 487
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 488
    :cond_d5
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getIntegerValue()I

    move-result v0

    goto/16 :goto_30
.end method

.method getCP()Lcom/samsung/upnp/media/server/MediaControlPoint;
    .registers 2

    .prologue
    .line 2198
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    return-object v0
.end method

.method public getDMRList(II)Ljava/util/List;
    .registers 10
    .parameter "offset"
    .parameter "requestSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 256
    sget-object v4, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 257
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    if-ltz p1, :cond_f

    if-gtz p2, :cond_16

    .line 260
    :cond_f
    new-instance v4, Lcom/samsung/api/DMCAPIException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v4

    .line 264
    :cond_16
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_25

    .line 272
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/api/DigitalMediaControllerAPI;->makeRequestedList(IILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 264
    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 265
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaRenderer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 266
    new-instance v2, Lcom/samsung/api/DeviceItem;

    invoke-direct {v2, v0}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    .line 267
    .local v2, item:Lcom/samsung/api/DeviceItem;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/samsung/api/DeviceItem;->setDeviceType(I)V

    .line 268
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public getDMSList(II)Ljava/util/List;
    .registers 11
    .parameter "offset"
    .parameter "requestSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 228
    sget-object v4, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 229
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    if-ltz p1, :cond_10

    if-gtz p2, :cond_16

    .line 232
    :cond_10
    new-instance v4, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v4, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v4

    .line 234
    :cond_16
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_28

    .line 243
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 244
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/api/DigitalMediaControllerAPI;->makeRequestedList(IILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 234
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 235
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaServer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 236
    new-instance v2, Lcom/samsung/api/DeviceItem;

    invoke-direct {v2, v0}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    .line 237
    .local v2, item:Lcom/samsung/api/DeviceItem;
    invoke-virtual {v2, v7}, Lcom/samsung/api/DeviceItem;->setDeviceType(I)V

    .line 238
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public getDevice(Ljava/lang/String;)Lcom/samsung/api/DeviceItem;
    .registers 4
    .parameter "udn"

    .prologue
    .line 283
    sget-object v1, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v1, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 284
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-nez v0, :cond_a

    .line 285
    const/4 v1, 0x0

    .line 287
    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Lcom/samsung/api/DeviceItem;

    invoke-direct {v1, v0}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    goto :goto_9
.end method

.method public getPosition(Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/ContentPositionInfo;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 1661
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    if-nez v0, :cond_d

    .line 1662
    new-instance v0, Lcom/samsung/api/ContentPositionInfo;

    invoke-direct {v0}, Lcom/samsung/api/ContentPositionInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    .line 1663
    :cond_d
    if-nez p1, :cond_17

    .line 1664
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1665
    :cond_17
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1667
    if-nez v0, :cond_2a

    .line 1668
    const-string v0, "DLNA : DMC Service (getPosition) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1669
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1671
    :cond_2a
    const-string v1, "GetPositionInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v5

    .line 1672
    if-nez v5, :cond_38

    .line 1673
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1675
    :cond_38
    const-string v0, "InstanceID"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1678
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DLNA : DMC Service"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1680
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v0

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_7a

    .line 1681
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    .line 1682
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v1

    .line 1683
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    .line 1681
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 1685
    :cond_7a
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x1f5

    .line 1686
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1687
    invoke-virtual {v5}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v3

    .line 1685
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 1691
    :cond_8a
    const-string v0, ""

    .line 1692
    const-string v1, ""

    .line 1693
    const-string v2, ""

    .line 1694
    const-string v3, ""

    .line 1695
    const-string v4, ""

    .line 1697
    const-string v6, "TrackDuration"

    invoke-virtual {v5, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 1698
    if-eqz v6, :cond_a0

    .line 1699
    invoke-virtual {v6}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1700
    :cond_a0
    const-string v6, "RelTime"

    invoke-virtual {v5, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 1701
    if-eqz v6, :cond_ac

    .line 1702
    invoke-virtual {v6}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1703
    :cond_ac
    const-string v6, "AbsTime"

    invoke-virtual {v5, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 1704
    if-eqz v6, :cond_b8

    .line 1705
    invoke-virtual {v6}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1706
    :cond_b8
    const-string v6, "RelCount"

    invoke-virtual {v5, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 1707
    if-eqz v6, :cond_c4

    .line 1708
    invoke-virtual {v6}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1709
    :cond_c4
    const-string v6, "AbsCount"

    invoke-virtual {v5, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v5

    .line 1710
    if-eqz v5, :cond_d0

    .line 1711
    invoke-virtual {v5}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1713
    :cond_d0
    iget-object v5, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    invoke-virtual {v5, v0}, Lcom/samsung/api/ContentPositionInfo;->setTrackDuration(Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/api/ContentPositionInfo;->setRelTime(Ljava/lang/String;)V

    .line 1715
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/api/ContentPositionInfo;->setAbsTime(Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    invoke-virtual {v0, v3}, Lcom/samsung/api/ContentPositionInfo;->setRelCount(Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    invoke-virtual {v0, v4}, Lcom/samsung/api/ContentPositionInfo;->setAbsCount(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mPositionInfo:Lcom/samsung/api/ContentPositionInfo;

    return-object v0
.end method

.method public getProtocolInfo(Lcom/samsung/api/DeviceItem;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/DeviceItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ProtocolInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 872
    if-nez p1, :cond_c

    .line 873
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 875
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 877
    if-nez v1, :cond_1a

    .line 878
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 881
    :cond_1a
    iget-object v0, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mProtocolCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 882
    if-eqz v0, :cond_29

    .line 914
    :goto_28
    return-object v0

    .line 885
    :cond_29
    const-string v0, "GetProtocolInfo"

    invoke-virtual {v1, v0}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 886
    if-nez v0, :cond_39

    .line 887
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 890
    :cond_39
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_69

    .line 891
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_59

    .line 892
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 893
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 892
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 896
    :cond_59
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 897
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 896
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 902
    :cond_69
    const-string v1, "Sink"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    const-string v2, "Source"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    new-instance v2, Ljava/util/StringTokenizer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    :goto_99
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 913
    iget-object v1, p0, Lcom/samsung/api/DigitalMediaControllerAPI;->mProtocolCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 908
    :cond_a9
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {v1}, Lcom/samsung/api/ProtocolInfo;->ParseProtocolInfo(Ljava/lang/String;)Lcom/samsung/api/ProtocolInfo;

    move-result-object v1

    .line 910
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99
.end method

.method public getTransportInfo(Lcom/samsung/api/DeviceItem;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 1733
    if-nez p1, :cond_c

    .line 1734
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1735
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1736
    if-nez v0, :cond_1f

    .line 1737
    const-string v0, "DLNA : DMC Service (getTransportInfo) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1738
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1740
    :cond_1f
    const-string v1, "GetTransportInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1741
    if-nez v0, :cond_2d

    .line 1742
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1743
    :cond_2d
    const-string v1, "InstanceID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1745
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1746
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_6f

    .line 1748
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1749
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1750
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1748
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1752
    :cond_6f
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 1753
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 1754
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1752
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1757
    :cond_7f
    const-string v1, "CurrentTransportState"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 1758
    if-nez v0, :cond_8e

    .line 1759
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1760
    :cond_8e
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1761
    return-object v0
.end method

.method public getVolume(Lcom/samsung/api/DeviceItem;ILjava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f5

    const/16 v3, 0x9

    .line 1310
    if-nez p1, :cond_e

    .line 1311
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1312
    :cond_e
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1314
    if-nez v0, :cond_21

    .line 1315
    const-string v0, "DLNA : DMC Service (getVolume) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1318
    :cond_21
    const-string v1, "GetVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1319
    if-nez v0, :cond_34

    .line 1320
    const-string v0, "DLNA : DMC Service (GetVolume) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1321
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1323
    :cond_34
    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1324
    const-string v1, "Channel"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v1, "Channel"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 1326
    if-eqz v1, :cond_4c

    invoke-virtual {v1, p3}, Lcom/samsung/upnp/Argument;->isAllowedValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1327
    :cond_4c
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1328
    :cond_53
    invoke-virtual {v1, p3}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_92

    .line 1333
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1334
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1333
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1337
    :cond_92
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1338
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1337
    invoke-direct {v1, v4, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1345
    :cond_a0
    :try_start_a0
    const-string v1, "CurrentVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a9} :catch_ab

    move-result v0

    .line 1349
    return v0

    .line 1346
    :catch_ab
    move-exception v0

    .line 1347
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v4}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0
.end method

.method public pauseItem(Lcom/samsung/api/DeviceItem;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 1048
    if-nez p1, :cond_c

    .line 1049
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1050
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_1f

    .line 1053
    const-string v0, "DLNA : DMC Service (Pause) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1057
    :cond_1f
    const-string v1, "Pause"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1058
    if-nez v0, :cond_34

    .line 1059
    const-string v0, "DLNA : DMC Service (Pause) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1060
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1062
    :cond_34
    const-string v1, "InstanceID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1064
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_86

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_76

    .line 1067
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1068
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1067
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1071
    :cond_76
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 1072
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1071
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1076
    :cond_86
    return-void
.end method

.method public play(Lcom/samsung/api/DeviceItem;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 966
    if-nez p1, :cond_c

    .line 967
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 968
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 969
    if-nez v0, :cond_1f

    .line 970
    const-string v0, "DLNA : DMC Service (Play) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 971
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 974
    :cond_1f
    const-string v1, "Play"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 975
    if-nez v0, :cond_32

    .line 976
    const-string v0, "DLNA : DMC Service (Play) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 979
    :cond_32
    const-string v1, "InstanceID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 980
    const-string v1, "Speed"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_7b

    .line 986
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 987
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 986
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 990
    :cond_7b
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 991
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 992
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 990
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 995
    :cond_8b
    return-void
.end method

.method public refreshDeviceList()V
    .registers 2

    .prologue
    .line 1821
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->search()V

    .line 1822
    return-void
.end method

.method public refreshDeviceList(Ljava/lang/String;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 1807
    if-nez p1, :cond_3

    .line 1816
    :cond_2
    :goto_2
    return-void

    .line 1810
    :cond_3
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1811
    const-string v0, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1813
    :cond_13
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->removeDeviceList(Ljava/lang/String;)V

    .line 1814
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->searchTarget(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public removeDevice(Ljava/lang/String;)V
    .registers 3
    .parameter "udn"

    .prologue
    .line 1828
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->removeDeviceItem(Ljava/lang/String;)V

    .line 1829
    return-void
.end method

.method public removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    move-result v0

    return v0
.end method

.method public seek(Lcom/samsung/api/DeviceItem;ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 1097
    if-nez p1, :cond_c

    .line 1098
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1099
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1101
    if-nez v0, :cond_1f

    .line 1102
    const-string v0, "DLNA : DMC Service (Seek) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1103
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1106
    :cond_1f
    invoke-virtual {p0, p3}, Lcom/samsung/api/DigitalMediaControllerAPI;->convertStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 1107
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1109
    :cond_2c
    const-string v1, "Seek"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1110
    if-nez v0, :cond_41

    .line 1111
    const-string v0, "DLNA : DMC Service (Seek) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1112
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1115
    :cond_41
    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1116
    const-string v1, "Unit"

    const-string v2, "REL_TIME"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v1, "Target"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_8e

    .line 1122
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1123
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1122
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1126
    :cond_8e
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 1127
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 1128
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1126
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1131
    :cond_9e
    return-void
.end method

.method public setAvtTransport(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x0

    .line 802
    if-nez p2, :cond_12

    .line 803
    const-string v0, "DLNA : DMC Service (SetAVTransportURI) Fail cuz there is no selected contents"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 804
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 807
    :cond_12
    if-nez p1, :cond_1c

    .line 808
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 809
    :cond_1c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 811
    if-nez v0, :cond_2f

    .line 812
    const-string v0, "DLNA : DMC Service (setAVTransportURI) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 813
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 816
    :cond_2f
    invoke-direct {p0, p1, p2}, Lcom/samsung/api/DigitalMediaControllerAPI;->isSupportProtocolInfo(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 817
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 819
    :cond_3c
    const-string v2, "SetAVTransportURI"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v2

    .line 820
    if-nez v2, :cond_4f

    .line 821
    const-string v0, "DLNA : DMC Service (SetAVTransportURI) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 822
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 825
    :cond_4f
    const-string v0, "InstanceID"

    invoke-virtual {v2, v0, v1}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 826
    const-string v3, "CurrentURI"

    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->getResourceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/ContentResource;

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "CurrentURIMetaData"

    invoke-virtual {p2}, Lcom/samsung/api/ContentItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 831
    :goto_71
    const/4 v1, 0x3

    if-lt v0, v1, :cond_75

    .line 859
    :cond_74
    return-void

    .line 832
    :cond_75
    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_74

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DLNA : DMC Service"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "action fail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v3, 0x19a

    if-ne v1, v3, :cond_b1

    .line 836
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0

    .line 838
    :cond_b1
    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v3, 0x2c1

    if-ne v1, v3, :cond_df

    .line 840
    add-int/lit8 v0, v0, 0x1

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DLNA : DMC Service Retry setAVTranport Action!!!"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 843
    mul-int/lit16 v1, v0, 0xc8

    int-to-long v3, v1

    :try_start_d6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_71

    .line 844
    :catch_da
    move-exception v1

    .line 845
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_71

    .line 849
    :cond_df
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x1f5

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 851
    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 850
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v2}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v2

    .line 849
    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v0
.end method

.method public setVolume(Lcom/samsung/api/DeviceItem;ILjava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x2

    .line 1245
    if-nez p1, :cond_d

    .line 1246
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1247
    :cond_d
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1249
    if-nez v0, :cond_20

    .line 1250
    const-string v0, "DLNA : DMC Service (SetVolume) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1251
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1254
    :cond_20
    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2a

    .line 1255
    :cond_28
    const-string p3, "Master"

    .line 1257
    :cond_2a
    const-string v1, "SetVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1258
    if-nez v0, :cond_3f

    .line 1259
    const-string v0, "DLNA : DMC Service (SetVolume) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1260
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1263
    :cond_3f
    const-string v1, "Channel"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 1264
    if-eqz v1, :cond_4d

    invoke-virtual {v1, p3}, Lcom/samsung/upnp/Argument;->isAllowedValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1265
    :cond_4d
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1267
    :cond_53
    const-string v1, "DesiredVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 1268
    if-eqz v1, :cond_61

    invoke-virtual {v1, p4}, Lcom/samsung/upnp/Argument;->isAllowedValue(I)Z

    move-result v1

    if-nez v1, :cond_67

    .line 1269
    :cond_61
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1271
    :cond_67
    const-string v1, "InstanceID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1272
    const-string v1, "Channel"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v1, "DesiredVolume"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1275
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_b2

    .line 1278
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1279
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1280
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1278
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1282
    :cond_b2
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 1283
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 1284
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1282
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1287
    :cond_c2
    return-void
.end method

.method public startDMC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->start()Z

    move-result v0

    if-nez v0, :cond_f

    .line 194
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 195
    :cond_f
    return-void
.end method

.method public stopItem(Lcom/samsung/api/DeviceItem;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x9

    .line 1008
    if-nez p1, :cond_c

    .line 1009
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1010
    :cond_c
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1011
    if-nez v0, :cond_1f

    .line 1012
    const-string v0, "DLNA : DMC Service (Stop) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1013
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1016
    :cond_1f
    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1017
    if-nez v0, :cond_34

    .line 1018
    const-string v0, "DLNA : DMC Service (Stop) Fail cuz there is no DMR"

    invoke-static {v0}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 1021
    :cond_34
    const-string v1, "InstanceID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;I)V

    .line 1022
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    .line 1023
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_89

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA : DMC Service"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "action fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v1

    const/16 v2, 0x19a

    if-ne v1, v2, :cond_79

    .line 1026
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    .line 1027
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v2

    .line 1028
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1026
    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1030
    :cond_79
    new-instance v1, Lcom/samsung/api/DMCAPIException;

    const/16 v2, 0x1f5

    .line 1031
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 1030
    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/api/DMCAPIException;-><init>(ILjava/lang/String;Lcom/samsung/upnp/UPnPStatus;)V

    throw v1

    .line 1035
    :cond_89
    return-void
.end method

.method public subscribePlayer(Lcom/samsung/api/DeviceItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1837
    if-nez p1, :cond_6

    move v0, v2

    .line 1860
    :goto_5
    return v0

    .line 1840
    :cond_6
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1842
    if-eqz v0, :cond_51

    .line 1843
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Lcom/samsung/upnp/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    move v0, v3

    .line 1860
    goto :goto_5

    .line 1844
    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 1845
    check-cast v0, Lcom/samsung/upnp/Service;

    invoke-virtual {v0}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AVTransport"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1846
    sget-object v4, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    move-object v0, v1

    check-cast v0, Lcom/samsung/upnp/Service;

    invoke-virtual {v4, v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->subscribe(Lcom/samsung/upnp/Service;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1850
    check-cast v1, Lcom/samsung/upnp/Service;

    invoke-virtual {v1}, Lcom/samsung/upnp/Service;->getTimeout()J

    move-result-wide v0

    const-wide/16 v3, 0x12c

    cmp-long v0, v0, v3

    if-gez v0, :cond_4d

    .line 1851
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->renewSubscriberService()V

    :cond_4d
    move v0, v2

    .line 1852
    goto :goto_5

    :cond_4f
    move v0, v3

    .line 1854
    goto :goto_5

    .line 1857
    :cond_51
    if-nez v0, :cond_1c

    move v0, v3

    .line 1858
    goto :goto_5
.end method

.method public switchPlayer(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/DeviceItem;)Z
    .registers 7
    .parameter "oldPlayer"
    .parameter "newPlayer"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1871
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 1887
    :cond_6
    :goto_6
    return v1

    .line 1875
    :cond_7
    sget-object v2, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v2, p1}, Lcom/samsung/upnp/media/server/MediaControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1877
    .local v0, device:Lcom/samsung/upnp/Device;
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getDeviceType()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 1880
    :cond_15
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Lcom/samsung/api/DeviceItem;->getDeviceType()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 1883
    :cond_1d
    if-eqz v0, :cond_26

    .line 1884
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->unsubscribeDevice(Ljava/lang/String;)V

    .line 1887
    :cond_26
    invoke-virtual {p0, p2}, Lcom/samsung/api/DigitalMediaControllerAPI;->subscribePlayer(Lcom/samsung/api/DeviceItem;)Z

    move-result v1

    goto :goto_6
.end method

.method public terminateDMC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/samsung/api/DigitalMediaControllerAPI;->mCp:Lcom/samsung/upnp/media/server/MediaControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/MediaControlPoint;->stop()Z

    move-result v0

    if-nez v0, :cond_f

    .line 211
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 212
    :cond_f
    return-void
.end method
