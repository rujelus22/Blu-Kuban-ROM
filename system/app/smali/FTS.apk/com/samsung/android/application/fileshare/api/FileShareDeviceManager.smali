.class public Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
.super Ljava/lang/Object;
.source "FileShareDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

.field private mEventHandler:Landroid/os/Handler;

.field private mEventHandlerMutext:Ljava/lang/Object;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mMulticastLockMutex:Ljava/lang/Object;

.field private mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandlerMutext:Ljava/lang/Object;

    .line 487
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    .line 488
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLockMutex:Ljava/lang/Object;

    .line 490
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    .line 491
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 492
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    .registers 2
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;II)Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
    .registers 14
    .parameter "context"
    .parameter "resDeviceDescription"
    .parameter "resServiceDescription"

    .prologue
    const/4 v10, 0x0

    .line 153
    :try_start_1
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 154
    .local v9, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v5

    .line 155
    .local v5, isMobileAPMode:Z
    if-eqz v5, :cond_16

    .line 157
    const-string v2, "[FT]-Stack"

    const-string v3, "this is Mobile AP Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_16
    new-instance v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    invoke-direct {v7}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;-><init>()V

    .line 162
    .local v7, manager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    .line 163
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 164
    .local v0, desc:Ljava/io/InputStream;
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 165
    .local v1, service:Ljava/io/InputStream;
    const-string v2, "My File Share"

    invoke-static {p0}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->createInstance(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    .line 166
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    if-nez v2, :cond_51

    .line 168
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 169
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v7, v10

    .line 187
    .end local v0           #desc:Ljava/io/InputStream;
    .end local v1           #service:Ljava/io/InputStream;
    .end local v5           #isMobileAPMode:Z
    .end local v7           #manager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
    .end local v9           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_50
    return-object v7

    .line 173
    .restart local v0       #desc:Ljava/io/InputStream;
    .restart local v1       #service:Ljava/io/InputStream;
    .restart local v5       #isMobileAPMode:Z
    .restart local v7       #manager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
    .restart local v9       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_51
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 174
    .local v8, wifi:Landroid/net/wifi/WifiManager;
    const-string v2, "mlock"

    invoke-virtual {v8, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    iput-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 175
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 177
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FileShareDeviceManager Worker"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 178
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;-><init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;Landroid/os/Looper;)V

    iput-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    .line 181
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    iget-object v3, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setOnTransferEventListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;)V

    .line 182
    iget-object v2, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    iget-object v3, v7, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setOnSessionRequestListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_95} :catch_96
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_95} :catch_99

    goto :goto_50

    .line 184
    .end local v0           #desc:Ljava/io/InputStream;
    .end local v1           #service:Ljava/io/InputStream;
    .end local v5           #isMobileAPMode:Z
    .end local v7           #manager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
    .end local v8           #wifi:Landroid/net/wifi/WifiManager;
    .end local v9           #wifiManager:Landroid/net/wifi/WifiManager;
    :catch_96
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    move-object v7, v10

    .line 185
    goto :goto_50

    .line 186
    .end local v6           #e:Ljava/io/IOException;
    :catch_99
    move-exception v6

    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    move-object v7, v10

    .line 187
    goto :goto_50
.end method


# virtual methods
.method public allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    .registers 5
    .parameter "sender"
    .parameter "allow"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;-><init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;ZLcom/samsung/android/application/fileshare/api/SenderInfo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public cancelSession(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 4
    .parameter "sender"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;-><init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method lockMulticast()V
    .registers 5

    .prologue
    .line 373
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLockMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v1, :cond_1f

    .line 375
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 376
    .local v0, manager:Landroid/net/wifi/WifiManager;
    const-string v1, "mlock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 377
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 379
    .end local v0           #manager:Landroid/net/wifi/WifiManager;
    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 373
    monitor-exit v2

    .line 381
    return-void

    .line 373
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method notifyEvent(ILjava/lang/Object;)V
    .registers 6
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 364
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandlerMutext:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_12

    .line 366
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    .end local v0           #msg:Landroid/os/Message;
    :cond_12
    monitor-exit v2

    .line 370
    return-void

    .line 364
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method releaseMulticast()V
    .registers 3

    .prologue
    .line 384
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLockMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 385
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 384
    :cond_14
    monitor-exit v1

    .line 389
    return-void

    .line 384
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setDeviceFriendlyName(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    if-eqz v0, :cond_12

    .line 266
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    const/16 v1, 0xfa4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :goto_11
    return-void

    .line 270
    :cond_12
    const-string v0, "[FT]-Stack"

    const-string v1, "setDeviceFriendlyName :mWorkerHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setEventHandler(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandlerMutext:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    .line 224
    monitor-exit v1

    .line 227
    return-void

    .line 224
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setReadyForTransferdTimeout(J)Z
    .registers 5
    .parameter "time"

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setTransferTimeout(J)V
    :try_end_5
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_0 .. :try_end_5} :catch_7

    .line 346
    const/4 v1, 0x1

    .line 348
    :goto_6
    return v1

    .line 347
    :catch_7
    move-exception v0

    .line 348
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setUploadPath(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 326
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setUploadPath(Ljava/io/File;)Z
    :try_end_25
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_0 .. :try_end_25} :catch_27

    move-result v0

    .line 331
    :goto_26
    return v0

    .line 330
    :catch_27
    move-exception v0

    .line 331
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public start()V
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->lockMulticast()V

    .line 236
    const-string v0, "[FT]-Stack"

    const-string v1, "Stack - start() : send msg: device Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    if-eqz v0, :cond_16

    .line 238
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    const/16 v1, 0x1b59

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 242
    :goto_15
    return-void

    .line 240
    :cond_16
    const-string v0, "[FT]-Stack"

    const-string v1, "start: mWorkerHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->releaseMulticast()V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    if-eqz v0, :cond_f

    .line 252
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    const/16 v1, 0x1b5a

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 256
    :goto_e
    return-void

    .line 254
    :cond_f
    const-string v0, "[FT]-Stack"

    const-string v1, "stop : mWorkerHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public terminate()V
    .registers 5

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->stop()V

    .line 199
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->terminate()V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->releaseMulticast()V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    const/16 v1, 0x1b5a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandler:Landroid/os/Handler;

    .line 204
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mEventHandlerMutext:Ljava/lang/Object;

    .line 205
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;

    .line 210
    const-string v1, "[FT]-Stack"

    const-string v2, "stack: Device API is terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_0 .. :try_end_38} :catch_39

    .line 214
    :goto_38
    return-void

    .line 211
    :catch_39
    move-exception v0

    .line 212
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminate exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
