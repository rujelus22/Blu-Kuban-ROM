.class public Lcom/samsung/api/SyncControllerAPI;
.super Ljava/lang/Object;
.source "SyncControllerAPI.java"


# static fields
.field private static cp:Lcom/samsung/upnp/ControlPoint;

.field private static volatile instance:Lcom/samsung/api/SyncControllerAPI;


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/api/SyncControllerAPI;->instance:Lcom/samsung/api/SyncControllerAPI;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "Kies_Wifi_0816"

    iput-object v0, p0, Lcom/samsung/api/SyncControllerAPI;->mVersion:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/samsung/upnp/ControlPoint;

    invoke-direct {v0}, Lcom/samsung/upnp/ControlPoint;-><init>()V

    sput-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    .line 72
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    const-string v1, "urn:dmc-samsung-com:device:SyncServer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    const-string v1, "urn:dmc-samsung-com:service:SyncManager:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 76
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/upnp/UPnP;->setEnable(I)V

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/samsung/api/SyncControllerAPI;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->instance:Lcom/samsung/api/SyncControllerAPI;

    if-nez v0, :cond_13

    .line 61
    const-class v1, Lcom/samsung/api/SyncControllerAPI;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->instance:Lcom/samsung/api/SyncControllerAPI;

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Lcom/samsung/api/SyncControllerAPI;

    invoke-direct {v0}, Lcom/samsung/api/SyncControllerAPI;-><init>()V

    sput-object v0, Lcom/samsung/api/SyncControllerAPI;->instance:Lcom/samsung/api/SyncControllerAPI;

    .line 61
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 66
    :cond_13
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->instance:Lcom/samsung/api/SyncControllerAPI;

    return-object v0

    .line 61
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
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
    .line 411
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_d

    .line 412
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 413
    :cond_d
    add-int v0, p1, p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1e

    .line 414
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 416
    :goto_1d
    return-object v0

    :cond_1e
    add-int v0, p1, p2

    invoke-virtual {p3, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_1d
.end method


# virtual methods
.method public addDeviceChangeListener(Lcom/samsung/api/DeviceChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/ControlPoint;->addDeviceChangeListener(Lcom/samsung/api/DeviceChangeListener;)Z

    .line 91
    return-void
.end method

.method public getKiesList(II)Ljava/util/List;
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
    .line 157
    sget-object v4, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v4}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 158
    .local v1, devList:Lcom/samsung/upnp/DeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/DeviceItem;>;"
    if-ltz p1, :cond_f

    if-gtz p2, :cond_16

    .line 161
    :cond_f
    new-instance v4, Lcom/samsung/api/DMCAPIException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v4

    .line 163
    :cond_16
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_28

    .line 170
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/api/SyncControllerAPI;->makeRequestedList(IILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 163
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 164
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SyncServer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 165
    new-instance v2, Lcom/samsung/api/DeviceItem;

    invoke-direct {v2, v0}, Lcom/samsung/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    .line 166
    .local v2, item:Lcom/samsung/api/DeviceItem;
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/samsung/api/DeviceItem;->setDeviceType(I)V

    .line 167
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public optionalCommand(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
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
    const/16 v3, 0x1f5

    const/4 v1, 0x3

    const/16 v2, 0x191

    .line 342
    if-nez p1, :cond_d

    .line 343
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 345
    :cond_d
    if-nez p2, :cond_15

    .line 346
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 348
    :cond_15
    if-nez p3, :cond_1d

    .line 349
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 353
    :cond_1d
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 354
    if-nez v0, :cond_2b

    .line 355
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 358
    :cond_2b
    const-string v1, "urn:dmc-samsung-com:service:SyncManager:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 359
    if-nez v1, :cond_39

    .line 360
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 361
    :cond_39
    const-string v1, "OptionalCommand"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 365
    if-nez v0, :cond_47

    .line 366
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v2}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 368
    :cond_47
    const-string v1, "IPAddress"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "CommandName"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "Argument1"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "Argument2"

    invoke-virtual {v0, v1, p5}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-nez v1, :cond_9d

    .line 375
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

    .line 376
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v0

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_97

    .line 378
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 380
    :cond_97
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v0, v3}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 384
    :cond_9d
    const-string v1, "Result"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method public setSyncConnectionInfo(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "kies"
    .parameter "ipAddress"
    .parameter "portNumber"
    .parameter "deviceModel"
    .parameter "ConnectionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1f5

    const/4 v8, 0x3

    const/16 v7, 0x191

    .line 196
    if-nez p1, :cond_d

    .line 197
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 199
    :cond_d
    if-nez p2, :cond_15

    .line 200
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 202
    :cond_15
    if-nez p3, :cond_1d

    .line 203
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 205
    :cond_1d
    if-nez p4, :cond_25

    .line 206
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 208
    :cond_25
    sget-object v6, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v6, p1}, Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/api/DeviceItem;)Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 209
    .local v3, device:Lcom/samsung/upnp/Device;
    if-nez v3, :cond_33

    .line 210
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v8}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 213
    :cond_33
    const-string v6, "urn:dmc-samsung-com:service:SyncManager:1"

    invoke-virtual {v3, v6}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v2

    .line 214
    .local v2, cds:Lcom/samsung/upnp/Service;
    if-nez v2, :cond_41

    .line 215
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 216
    :cond_41
    const-string v6, "SetSyncConnectionInfo"

    invoke-virtual {v3, v6}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 220
    .local v0, action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_4f

    .line 221
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v7}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 223
    :cond_4f
    const-string v6, "IPAddress"

    invoke-virtual {v0, v6, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v6, "PortNumber"

    invoke-virtual {v0, v6, p3}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v6, "DeviceModel"

    invoke-virtual {v0, v6, p4}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v6, "ConnectionType"

    invoke-virtual {v0, v6, p5}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v6

    if-nez v6, :cond_a5

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DLNA : DMC Service"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "action fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/api/Debugs;->error(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getControlStatus()Lcom/samsung/upnp/UPnPStatus;

    move-result-object v5

    .line 232
    .local v5, status:Lcom/samsung/upnp/UPnPStatus;
    invoke-virtual {v5}, Lcom/samsung/upnp/UPnPStatus;->getCode()I

    move-result v6

    const/16 v7, 0x19a

    if-ne v6, v7, :cond_9f

    .line 233
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v9}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 235
    :cond_9f
    new-instance v6, Lcom/samsung/api/DMCAPIException;

    invoke-direct {v6, v9}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v6

    .line 239
    .end local v5           #status:Lcom/samsung/upnp/UPnPStatus;
    :cond_a5
    const-string v6, "Result"

    invoke-virtual {v0, v6}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 240
    .local v1, argument:Lcom/samsung/upnp/Argument;
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, result:Ljava/lang/String;
    return-object v4
.end method

.method public startDMC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/ControlPoint;->start()Z

    move-result v0

    if-nez v0, :cond_f

    .line 132
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 133
    :cond_f
    return-void
.end method

.method public terminateDMC()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/samsung/api/SyncControllerAPI;->cp:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v0}, Lcom/samsung/upnp/ControlPoint;->stop()Z

    move-result v0

    if-nez v0, :cond_f

    .line 143
    new-instance v0, Lcom/samsung/api/DMCAPIException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/api/DMCAPIException;-><init>(I)V

    throw v0

    .line 144
    :cond_f
    return-void
.end method
