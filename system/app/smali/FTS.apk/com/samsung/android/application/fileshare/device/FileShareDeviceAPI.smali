.class public Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
.super Ljava/lang/Object;
.source "FileShareDeviceAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;,
        Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;
    }
.end annotation


# instance fields
.field mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

.field mInitialize:Z

.field mTransferStatusValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .registers 4
    .parameter "isMobileAPMode"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mTransferStatusValueList:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-direct {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mTransferStatusValueList:Ljava/util/ArrayList;

    const-string v1, "TRANSPORTING"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mTransferStatusValueList:Ljava/util/ArrayList;

    const-string v1, "READY_FOR_TRANSPORT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mTransferStatusValueList:Ljava/util/ArrayList;

    const-string v1, "CANCELED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public static createInstance(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    .registers 12
    .parameter "desc"
    .parameter "service"
    .parameter "friendlyName"
    .parameter "udn"
    .parameter "ipAddr"
    .parameter "isMobileAPMode"

    .prologue
    .line 51
    if-eqz p5, :cond_9

    .line 52
    const-string v1, "[FT]-Stack"

    const-string v2, "FileShareDeviceAPI createInstance set to MobileAP Mode "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_9
    new-instance v0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    invoke-direct {v0, p5}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;-><init>(Z)V

    .local v0, api:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->initialize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 58
    .end local v0           #api:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    :goto_19
    return-object v0

    .restart local v0       #api:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private initialize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "desc"
    .parameter "service"
    .parameter "friendlyName"
    .parameter "udn"
    .parameter "ipAddr"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_15

    .line 81
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->initailize(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z
    :try_end_13
    .catch Lcom/samsung/upnp/device/InvalidDescriptionException; {:try_start_2 .. :try_end_13} :catch_17

    move v0, v7

    .line 94
    :goto_14
    return v0

    :cond_15
    move v0, v8

    .line 91
    goto :goto_14

    .line 93
    :catch_17
    move-exception v6

    .local v6, e:Lcom/samsung/upnp/device/InvalidDescriptionException;
    move v0, v8

    .line 94
    goto :goto_14
.end method


# virtual methods
.method public setFriendlyName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_c

    .line 109
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 110
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setFriendlyName(Ljava/lang/String;Z)Z

    .line 113
    :cond_1b
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 5
    .parameter "ipaddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_13

    .line 121
    const-string v0, "[FT]-Stack"

    const-string v1, "fail cace1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 124
    :cond_13
    if-eqz p1, :cond_1d

    const-string v0, "0.0.0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 125
    :cond_1d
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail case2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/application/fileshare/Defines;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 128
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_46

    .line 129
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setInterfaceAddress(Ljava/lang/String;)V

    .line 131
    :cond_46
    return-void
.end method

.method public setOnSessionRequestListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 256
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->setSessionRequestListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;)V

    .line 257
    :cond_15
    return-void
.end method

.method public setOnTransferEventListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 248
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;)V

    .line 249
    :cond_15
    return-void
.end method

.method public setTransferStatus(Lcom/samsung/android/application/fileshare/api/SenderInfo;Ljava/lang/String;)V
    .registers 7
    .parameter "sender"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    const/16 v3, -0x3ec

    const/4 v2, -0x1

    .line 195
    iget-boolean v1, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v1, :cond_d

    .line 196
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    invoke-direct {v1, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v1

    .line 198
    :cond_d
    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-nez v1, :cond_19

    .line 199
    :cond_13
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v1

    .line 201
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mTransferStatusValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 202
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v1

    .line 204
    :cond_27
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getFileTransferService()Lcom/samsung/android/application/fileshare/device/TransferService;

    move-result-object v0

    .line 205
    .local v0, service:Lcom/samsung/android/application/fileshare/device/TransferService;
    if-nez v0, :cond_35

    .line 206
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    invoke-direct {v1, v3}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v1

    .line 208
    :cond_35
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 209
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v1

    .line 210
    :cond_45
    return-void
.end method

.method public setTransferTimeout(J)V
    .registers 5
    .parameter "time"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_c

    .line 168
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_15

    .line 170
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setTransferTimeout(J)V

    .line 174
    :cond_15
    return-void
.end method

.method public setUploadPath(Ljava/io/File;)Z
    .registers 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_c

    .line 139
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_17

    .line 141
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->setUploadPath(Ljava/io/File;)Z

    move-result v0

    .line 143
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_c

    .line 218
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 219
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->start()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 220
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ed

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 222
    :cond_1c
    const-string v0, "[FT]-Stack"

    const-string v1, "stack: start FileShare API"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/application/fileshare/api/FileShareException;
        }
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    if-nez v0, :cond_c

    .line 231
    new-instance v0, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v1, -0x3ec

    invoke-direct {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    throw v0

    .line 232
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_1d

    .line 233
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->stop()Z

    .line 234
    const-string v0, "[FT]-Stack"

    const-string v1, "stack: stoped FileShare API"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_1c
    return-void

    .line 237
    :cond_1d
    const-string v0, "[FT]-Stack"

    const-string v1, "mDevice is null : stop does not success"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    if-eqz v0, :cond_f

    .line 64
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->terminate()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->mInitialize:Z

    .line 68
    :cond_f
    return-void
.end method
