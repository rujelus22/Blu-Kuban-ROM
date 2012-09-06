.class public Lcom/google/android/music/download/keepon/KeeponSchedulingService;
.super Lcom/google/android/music/download/AbstractSchedulingService;
.source "KeeponSchedulingService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOGV:Z

.field private volatile mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/android/music/download/DownloadRequest$Owner;->KEEPON:Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;-><init>(Ljava/lang/String;Lcom/google/android/music/download/DownloadRequest$Owner;)V

    .line 30
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->LOGV:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected getNextDownloads(Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/download/cache/ICacheManager;)Ljava/util/List;
    .registers 17
    .parameter "storeService"
    .parameter "cacheManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/IStoreService;",
            "Lcom/google/android/music/download/cache/ICacheManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/download/DownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v12, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/download/DownloadRequest;>;"
    const/4 v13, 0x0

    .line 99
    .local v13, trackIds:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v0, 0x1

    :try_start_7
    invoke-interface {p1, v0}, Lcom/google/android/music/store/IStoreService;->getNextKeeponToDownload(I)[Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_19

    move-result-object v13

    .line 104
    :goto_b
    if-nez v13, :cond_22

    .line 105
    iget-boolean v0, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->LOGV:Z

    if-eqz v0, :cond_18

    .line 106
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    const-string v2, "getNextDownloads: trackIds=null"

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_18
    return-object v12

    .line 100
    :catch_19
    move-exception v9

    .line 101
    .local v9, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get tracks"

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 111
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_22
    iget-boolean v0, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->LOGV:Z

    if-eqz v0, :cond_3f

    .line 112
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextDownloads: trackIds.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_3f
    const/4 v7, 0x0

    .line 118
    .local v7, cacheFile:Ljava/io/File;
    move-object v8, v13

    .local v8, arr$:[Lcom/google/android/music/dl/ContentIdentifier;
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_43
    if-ge v10, v11, :cond_18

    aget-object v1, v8, v10

    .line 119
    .local v1, id:Lcom/google/android/music/dl/ContentIdentifier;
    new-instance v0, Lcom/google/android/music/download/DownloadRequest;

    sget v2, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_KEEPON:I

    sget-object v3, Lcom/google/android/music/download/DownloadRequest$Owner;->KEEPON:Lcom/google/android/music/download/DownloadRequest$Owner;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/download/DownloadRequest;-><init>(Lcom/google/android/music/dl/ContentIdentifier;ILcom/google/android/music/download/DownloadRequest$Owner;JZLjava/io/File;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto :goto_43
.end method

.method protected notifyDownloadProgress(Lcom/google/android/music/download/DownloadProgress;)V
    .registers 5
    .parameter "progress"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->LOGV:Z

    if-eqz v0, :cond_1c

    .line 89
    sget-object v0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1c
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/music/download/AbstractSchedulingService;->onCreate()V

    .line 78
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->LOGV:Z

    if-eqz v1, :cond_1d

    .line 57
    sget-object v1, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_24

    .line 72
    :goto_23
    return v4

    .line 64
    :cond_24
    const-string v1, "com.google.android.music.download.keepon.KeeponSchedulingService.STOP_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 65
    invoke-virtual {p0, p3}, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->stopSelf(I)V

    goto :goto_23

    .line 66
    :cond_30
    const-string v1, "com.google.android.music.download.keepon.KeeponSchedulingService.START_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->sendScheduleDownloadsMessage(I)V

    goto :goto_23

    .line 69
    :cond_3c
    sget-object v1, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p3}, Lcom/google/android/music/download/keepon/KeeponSchedulingService;->stopSelf(I)V

    goto :goto_23
.end method
