.class public Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
.super Ljava/lang/Object;
.source "FileShareControlAPI.java"

# interfaces
.implements Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;
    }
.end annotation


# instance fields
.field private mConnectedDeviceList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/upnp/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

.field private mDeviceEventListenerMutex:Ljava/lang/Object;

.field private mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

.field private mDeviceListChangedListenerMutex:Ljava/lang/Object;

.field private mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

.field private mTransferProgressListenerMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    .line 239
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangedListenerMutex:Ljava/lang/Object;

    .line 241
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListenerMutex:Ljava/lang/Object;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferProgressListenerMutex:Ljava/lang/Object;

    .line 244
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mConnectedDeviceList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-direct {v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0, p0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 31
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0, p0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->setTransferDeviceEventListener(Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;)V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mConnectedDeviceList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public cancelSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;)V
    .registers 8
    .parameter "device"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cancel Session(FileShareControlAPI) : sessionID :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-nez v2, :cond_32

    .line 118
    :cond_22
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v2
    :try_end_29
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_0 .. :try_end_29} :catch_29

    .line 121
    :catch_29
    move-exception v1

    .line 122
    .local v1, e:Lcom/samsung/upnp/UPnPException;
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v3, -0x3ef

    invoke-direct {v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v2

    .line 119
    .end local v1           #e:Lcom/samsung/upnp/UPnPException;
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 120
    .local v0, dev:Lcom/samsung/upnp/Device;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->cancelSession(Lcom/samsung/upnp/Device;Ljava/lang/String;)V
    :try_end_41
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_32 .. :try_end_41} :catch_29

    .line 124
    return-void
.end method

.method public closeSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;)V
    .registers 7
    .parameter "device"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-nez v2, :cond_1e

    .line 106
    :cond_e
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v2
    :try_end_15
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_4 .. :try_end_15} :catch_15

    .line 109
    :catch_15
    move-exception v1

    .line 110
    .local v1, e:Lcom/samsung/upnp/UPnPException;
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v3, -0x3ef

    invoke-direct {v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v2

    .line 107
    .end local v1           #e:Lcom/samsung/upnp/UPnPException;
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 108
    .local v0, dev:Lcom/samsung/upnp/Device;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->closeSession(Lcom/samsung/upnp/Device;Ljava/lang/String;)V
    :try_end_2d
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_1e .. :try_end_2d} :catch_15

    .line 112
    return-void
.end method

.method public connectToDevice(Lcom/samsung/android/application/fileshare/api/DeviceItem;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 74
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-nez v1, :cond_8

    .line 75
    :cond_6
    const/4 v1, 0x0

    .line 77
    :goto_7
    return v1

    .line 76
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 77
    .local v0, dev:Lcom/samsung/upnp/Device;
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->connectToDevice(Lcom/samsung/upnp/Device;)Z

    move-result v1

    goto :goto_7
.end method

.method public createSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 18
    .parameter "device"
    .parameter "name"
    .parameter "senderDesc"
    .parameter "sessionDesc"
    .parameter "count"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-nez v0, :cond_1e

    .line 90
    :cond_e
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0
    :try_end_15
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_4 .. :try_end_15} :catch_15

    .line 98
    :catch_15
    move-exception v8

    .line 99
    .local v8, e:Lcom/samsung/upnp/UPnPException;
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v2, -0x3ef

    invoke-direct {v0, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 92
    .end local v8           #e:Lcom/samsung/upnp/UPnPException;
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 93
    .local v1, dev:Lcom/samsung/upnp/Device;
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->createSession(Lcom/samsung/upnp/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, sessionID:Ljava/lang/String;
    if-nez v9, :cond_3e

    .line 95
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v2, -0x3ee

    invoke-direct {v0, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0
    :try_end_3e
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_1e .. :try_end_3e} :catch_15

    .line 97
    :cond_3e
    return-object v9
.end method

.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 5
    .parameter

    .prologue
    .line 190
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangedListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    if-eqz v0, :cond_1e

    .line 192
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:samsung.com:device:FileTransferServer:1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 193
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;->onDeviceChanged()V

    .line 190
    :cond_1e
    monitor-exit v1

    .line 196
    return-void

    .line 190
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 5
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->unsubscribe(Lcom/samsung/upnp/Device;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangedListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    if-eqz v0, :cond_2d

    .line 203
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:samsung.com:device:FileTransferServer:1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 205
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    new-instance v2, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-direct {v2, p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;->onDeviceRemoved(Lcom/samsung/android/application/fileshare/api/DeviceItem;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;->onDeviceChanged()V

    .line 201
    :cond_2d
    monitor-exit v1

    .line 210
    return-void

    .line 201
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public getTransferDeviceList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 146
    .local v2, list:Lcom/samsung/upnp/DeviceList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    .line 153
    .end local v2           #list:Lcom/samsung/upnp/DeviceList;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :goto_15
    return-object v3

    .line 147
    .restart local v2       #list:Lcom/samsung/upnp/DeviceList;
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 148
    .local v0, dev:Lcom/samsung/upnp/Device;
    new-instance v5, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-direct {v5, v0}, Lcom/samsung/android/application/fileshare/api/DeviceItem;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_f

    .line 151
    .end local v0           #dev:Lcom/samsung/upnp/Device;
    .end local v2           #list:Lcom/samsung/upnp/DeviceList;
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :catch_25
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public onTransportStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 215
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 235
    :cond_10
    :goto_10
    return-void

    .line 222
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    if-eqz v0, :cond_25

    .line 224
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p2, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 222
    :cond_25
    monitor-exit v1

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v0

    .line 226
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 227
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 229
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 230
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;->onTransportStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_27

    goto :goto_1f
.end method

.method public search()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->search()V

    .line 60
    :cond_9
    return-void
.end method

.method public sendItem(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .parameter "device"
    .parameter "sessionID"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    :try_start_4
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-nez v3, :cond_1e

    .line 130
    :cond_e
    new-instance v3, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v3
    :try_end_15
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_4 .. :try_end_15} :catch_15

    .line 138
    :catch_15
    move-exception v1

    .line 139
    .local v1, e:Lcom/samsung/upnp/UPnPException;
    new-instance v3, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v4, -0x3ef

    invoke-direct {v3, v4}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v3

    .line 132
    .end local v1           #e:Lcom/samsung/upnp/UPnPException;
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 133
    .local v0, dev:Lcom/samsung/upnp/Device;
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v3, v0, p2, p3}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->transportItem(Lcom/samsung/upnp/Device;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, transferId:Ljava/lang/String;
    if-nez v2, :cond_38

    .line 135
    new-instance v3, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v4, -0x3ee

    invoke-direct {v3, v4}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v3
    :try_end_38
    .catch Lcom/samsung/upnp/UPnPException; {:try_start_1e .. :try_end_38} :catch_15

    .line 137
    :cond_38
    return-object v2
.end method

.method public setDeviceListChangedListener(Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangedListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceListChangeListener:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;

    .line 171
    monitor-exit v1

    .line 174
    return-void

    .line 171
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setFileTransferEventListener(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferProgressListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->setFileEventHandler(Landroid/os/Handler;)V

    .line 183
    monitor-exit v1

    .line 186
    return-void

    .line 183
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 3
    .parameter "ipaddress"

    .prologue
    .line 67
    if-eqz p1, :cond_c

    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    :cond_c
    :goto_c
    return-void

    .line 69
    :cond_d
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->setInterface(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public setTransferDeviceEventListener(Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    .line 177
    monitor-exit v1

    .line 180
    return-void

    .line 177
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->start()Z

    move-result v0

    if-nez v0, :cond_10

    .line 43
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 44
    :cond_10
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->mTransferCP:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->stop()Z

    .line 55
    :cond_9
    return-void
.end method
