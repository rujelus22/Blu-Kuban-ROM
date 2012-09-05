.class public Lcom/google/android/youtube/videos/DownloadJanitorService;
.super Landroid/app/Service;
.source "DownloadJanitorService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;
    }
.end annotation


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private application:Lcom/google/android/youtube/videos/VideosApplication;

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private downloadServiceBound:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService;->scanFile(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Set;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->deleteUnusedFiles(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/DownloadJanitorService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->doUnbindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/DownloadJanitorService;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method private cancelRestart()V
    .registers 3

    .prologue
    .line 183
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 184
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 185
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/DownloadJanitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private deleteUnusedFiles(Ljava/util/Set;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, activeVideoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v0, allFiles:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, offlineDirectory:Ljava/lang/String;
    if-nez v3, :cond_c

    .line 159
    :cond_b
    return-void

    .line 146
    :cond_c
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, rootDir:Ljava/io/File;
    invoke-direct {p0, v5, v0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->recursivelyListFiles(Ljava/io/File;Ljava/util/Collection;)V

    .line 149
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, videoId:Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x36ee80

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_18

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting unused file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_18
.end method

.method private doBindService()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 255
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    if-nez v0, :cond_e

    .line 256
    invoke-static {p0}, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 257
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    .line 259
    :cond_e
    return-void
.end method

.method private doUnbindService()V
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    if-eqz v0, :cond_f

    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 264
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadServiceBound:Z

    .line 267
    :cond_f
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "username"

    .prologue
    .line 245
    iget-object v5, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 246
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_1b

    aget-object v0, v2, v3

    .line 247
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 251
    .end local v0           #account:Landroid/accounts/Account;
    :goto_17
    return-object v0

    .line 246
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 251
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private recursivelyListFiles(Ljava/io/File;Ljava/util/Collection;)V
    .registers 10
    .parameter "rootDirectory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, results:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 163
    .local v2, filesAndDirs:[Ljava/io/File;
    if-nez v2, :cond_1c

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t list files for directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 166
    :cond_1c
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1f
    if-ge v3, v4, :cond_37

    aget-object v1, v0, v3

    .line 167
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 168
    invoke-direct {p0, v1, p2}, Lcom/google/android/youtube/videos/DownloadJanitorService;->recursivelyListFiles(Ljava/io/File;Ljava/util/Collection;)V

    .line 166
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 170
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 173
    .end local v1           #file:Ljava/io/File;
    :cond_37
    return-void
.end method

.method private scanFile(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .registers 13
    .parameter "file"
    .parameter "ids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 189
    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getUserFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, username:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 192
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_34

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " removed, removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v7, p1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransfer(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->deleteFile(Ljava/lang/String;)V

    .line 242
    :goto_33
    return-void

    .line 199
    :cond_34
    iget-object v7, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    const-string v8, "youtube"

    invoke-virtual {v7, v0, v8, v9}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, authToken:Ljava/lang/String;
    if-nez v1, :cond_55

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to fetch authToken for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_33

    .line 205
    :cond_55
    new-instance v4, Lcom/google/android/youtube/core/model/UserAuth;

    sget-object v7, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v4, v5, v7, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 207
    .local v4, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, videoId:Ljava/lang/String;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 210
    .local v3, requestComplete:Ljava/util/concurrent/CountDownLatch;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6, v4, p2}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineSyncRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v2

    .line 212
    .local v2, drmRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v7, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v7}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v7

    new-instance v8, Lcom/google/android/youtube/videos/DownloadJanitorService$2;

    invoke-direct {v8, p0, p1, v3}, Lcom/google/android/youtube/videos/DownloadJanitorService$2;-><init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v7, v2, v8}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 241
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    goto :goto_33
.end method

.method private scheduleRestart()V
    .registers 7

    .prologue
    .line 176
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 177
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x55d4a80

    add-long/2addr v2, v4

    invoke-static {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService$AlarmReceiver;->createIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 71
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->accountManager:Landroid/accounts/AccountManager;

    .line 72
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 131
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->cancelRestart()V

    .line 133
    :cond_13
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 134
    return-void
.end method

.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 285
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 289
    return-void
.end method

.method public onRestored()V
    .registers 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    .line 96
    .local v0, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    new-instance v1, Lcom/google/android/youtube/videos/DownloadJanitorService$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/videos/DownloadJanitorService$1;-><init>(Lcom/google/android/youtube/videos/DownloadJanitorService;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/DownloadJanitorService$1;->start()V

    .line 125
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 270
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 272
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 276
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 279
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 76
    const-string v0, "Janitor starting"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->scheduleRestart()V

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/videos/DownloadJanitorService;->application:Lcom/google/android/youtube/videos/VideosApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->isSystemClockWrong()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->stopSelf()V

    .line 85
    :goto_13
    const/4 v0, 0x2

    return v0

    .line 83
    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DownloadJanitorService;->doBindService()V

    goto :goto_13
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 282
    return-void
.end method
