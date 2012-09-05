.class public Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;
.super Ljava/lang/Object;
.source "FileShareControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

.field private mEventHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandlerMutext:Ljava/lang/Object;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mMulticastLockMutex:Ljava/lang/Object;

.field private mSenderDescription:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSessionDescription:Ljava/lang/String;

.field private mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/application/fileshare/api/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionsMutex:Ljava/lang/Object;

.field private mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 721
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    .line 722
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandlerMutext:Ljava/lang/Object;

    .line 723
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    .line 724
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 725
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLockMutex:Ljava/lang/Object;

    .line 726
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    .line 727
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 728
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    .line 729
    const-string v2, "My File Share Controller"

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderName:Ljava/lang/String;

    .line 730
    const-string v2, "This is my file share controller"

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderDescription:Ljava/lang/String;

    .line 731
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionDescription:Ljava/lang/String;

    .line 732
    iput-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 733
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;

    .line 150
    :try_start_38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    .line 151
    new-instance v2, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    invoke-direct {v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    .line 152
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setInterfaceAddress(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 155
    .local v1, manager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_92

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 157
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 159
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "FileShareControllerManager Worker"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v2, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;-><init>(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    .line 163
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_92} :catch_93

    .line 169
    .end local v1           #manager:Landroid/net/wifi/WifiManager;
    :cond_92
    :goto_92
    return-void

    .line 165
    :catch_93
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileShareControllerManager Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92
.end method

.method static synthetic access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    .registers 2
    .parameter

    .prologue
    .line 723
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .parameter

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method buildDescriptionByFiles([Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    .line 393
    if-nez p1, :cond_4

    .line 394
    const/4 v0, 0x0

    .line 404
    :cond_3
    return-object v0

    .line 396
    :cond_4
    const-string v1, ""

    .line 397
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_a
    if-ge v2, v3, :cond_3

    aget-object v1, p1, v2

    .line 399
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_2d

    move-result-object v0

    .line 397
    :goto_29
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 400
    :catch_2d
    move-exception v1

    .line 401
    const-string v4, "[FT]-Stack"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildDescriptionByFiles exception"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getTransferDeviceList()Ljava/util/ArrayList;
    .registers 2
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
    .line 342
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    if-eqz v0, :cond_b

    .line 343
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->getTransferDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    .line 345
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method lockMulticast()V
    .registers 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLockMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_1f

    .line 376
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 377
    const-string v2, "mlock"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 378
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 380
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 374
    monitor-exit v1

    .line 382
    return-void

    .line 374
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method notifyGUIEvent(ILjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 356
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandlerMutext:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 358
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mEventHandler: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_62

    .line 360
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    :try_start_27
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_4c

    move-result v0

    if-lt v1, v0, :cond_31

    .line 356
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_62

    .line 371
    return-void

    .line 361
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 362
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_48} :catch_4c

    .line 360
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 365
    :catch_4c
    move-exception v0

    .line 367
    :try_start_4d
    const-string v1, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mEventHandler: exception catched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 356
    :catchall_62
    move-exception v0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_62

    throw v0
.end method

.method releaseMulticast()V
    .registers 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLockMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 387
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 385
    :cond_14
    monitor-exit v1

    .line 390
    return-void

    .line 385
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public removeEventHandler(Landroid/os/Handler;)V
    .registers 6
    .parameter "handler"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandlerMutext:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    const-string v0, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====remove  EventHandler"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit v1

    .line 193
    return-void

    .line 189
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public requestCancelTransfer(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    .registers 6
    .parameter "session"

    .prologue
    const/16 v3, 0xbbf

    .line 302
    if-nez p1, :cond_8

    .line 303
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 320
    :cond_7
    :goto_7
    return-void

    .line 307
    :cond_8
    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 308
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    .line 309
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 312
    :cond_19
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    if-eqz v1, :cond_7

    .line 313
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v2, 0xfa6

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 315
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_7
.end method

.method public requestFileTransfer(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;[Ljava/io/File;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    :try_start_5
    array-length v1, p3

    if-nez v1, :cond_1b

    .line 254
    :cond_8
    const/16 v0, 0xbbe

    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 255
    const-string v0, "[FT]-Stack"

    const-string v1, "File transfer request is failed: invalid file(null or cannot read) is used."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_1a
    return-void

    .line 259
    :cond_1b
    array-length v2, p3

    move v1, v0

    :goto_1d
    if-lt v1, v2, :cond_88

    .line 267
    new-instance v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    invoke-direct {v1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;-><init>()V

    .line 268
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSenderName:Ljava/lang/String;

    .line 269
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " set session mSenderName :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-object p2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionDescription:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderDescription:Ljava/lang/String;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_aa

    .line 273
    :cond_4c
    invoke-virtual {p0, p3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->buildDescriptionByFiles([Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSenderDescription:Ljava/lang/String;

    .line 278
    :goto_52
    iput-object p3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    .line 279
    array-length v2, p3

    iput v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalCount:I

    .line 280
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    .line 281
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalByteSize:J

    .line 282
    iput-object p1, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 283
    array-length v2, p3

    :goto_62
    if-lt v0, v2, :cond_af

    .line 288
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v2, 0xfa5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_72

    goto :goto_1a

    .line 290
    :catch_72
    move-exception v0

    .line 291
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestFileTransfer Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 259
    :cond_88
    :try_start_88
    aget-object v3, p3, v1

    .line 260
    if-eqz v3, :cond_92

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_a6

    .line 261
    :cond_92
    const/16 v0, 0xbbe

    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 262
    const-string v0, "[FT]-Stack"

    const-string v1, "File transfer request is failed: invalid file(null or cannot read) is used. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 259
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1d

    .line 275
    :cond_aa
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderDescription:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSenderDescription:Ljava/lang/String;

    goto :goto_52

    .line 283
    :cond_af
    aget-object v3, p3, v0

    .line 284
    if-eqz v3, :cond_bd

    .line 285
    iget-wide v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalByteSize:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long v3, v4, v6

    iput-wide v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalByteSize:J
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_bd} :catch_72

    .line 283
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_62
.end method

.method public search()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xfa7

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 236
    :cond_b
    return-void
.end method

.method public setEventHandler(Landroid/os/Handler;)V
    .registers 6
    .parameter "handler"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandlerMutext:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v0, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====Add EventHandler"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    monitor-exit v1

    .line 186
    return-void

    .line 182
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public setSenderName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderName:Ljava/lang/String;

    .line 332
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " set mSenderName :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput-object p2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSenderDescription:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->lockMulticast()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    if-eqz v0, :cond_e

    .line 203
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->sendEmptyMessage(I)Z

    .line 204
    :cond_e
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/16 v2, 0xbba

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->releaseMulticast()V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    if-eqz v0, :cond_35

    .line 216
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xfa7

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xfa6

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    const/16 v1, 0xfa5

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->removeMessages(I)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mWorkerHandler:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 224
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    .line 225
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====Clear EventHandler"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mEventHandler:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method
