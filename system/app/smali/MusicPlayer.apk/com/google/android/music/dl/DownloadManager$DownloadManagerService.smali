.class public Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;
.super Landroid/app/Service;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadManagerService"
.end annotation


# static fields
.field private static volatile mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field private static mServiceCreated:Z

.field private static final mServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 953
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 954
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 957
    new-instance v0, Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager;-><init>(Landroid/app/Service;)V

    sput-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 958
    return-void
.end method

.method public static getCurrentDownloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1037
    :try_start_3
    sget-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    if-eqz v0, :cond_f

    .line 1038
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 1040
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1042
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1023
    const-string v2, "DownloadManagerService:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$500(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 1025
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_f

    .line 1027
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1f
    invoke-static {p2}, Lcom/google/android/music/log/Log;->dump(Ljava/io/PrintWriter;)V

    .line 1028
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 1006
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->LOGV:Z
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadManager;->access$600(Lcom/google/android/music/dl/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadManager binded via: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_20
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 962
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 963
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_6
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onCreate()V

    .line 965
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 966
    monitor-exit v1

    .line 967
    return-void

    .line 966
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 1012
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->LOGV:Z
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadManager;->access$600(Lcom/google/android/music/dl/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "MusicDL"

    const-string v1, "DownloadManagerService: onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :cond_f
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_12
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1016
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onDestroy()V

    .line 1017
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 1018
    monitor-exit v1

    .line 1019
    return-void

    .line 1018
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 972
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 973
    const-string v2, "com.google.android.music.accountchanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 974
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadManager;->stop()V

    .line 975
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$700(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 1001
    .end local v0           #action:Ljava/lang/String;
    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    return v2

    .line 976
    .restart local v0       #action:Ljava/lang/String;
    :cond_20
    const-string v2, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 977
    invoke-static {}, Lcom/google/android/music/dl/DownloadManager;->access$800()Lcom/google/android/music/log/LogFile;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 978
    invoke-static {}, Lcom/google/android/music/dl/DownloadManager;->access$800()Lcom/google/android/music/log/LogFile;

    move-result-object v2

    const-string v3, "MusicDL"

    const-string v4, "Received intent: SHOULDKEEPON_UPDATED"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_39
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$900(Lcom/google/android/music/dl/DownloadManager;)V

    .line 981
    const-string v2, "deleteCachedFiles"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 984
    .local v1, fileCleanupRequested:Z
    if-eqz v1, :cond_1e

    .line 985
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$700(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_1e

    .line 987
    .end local v1           #fileCleanupRequested:Z
    :cond_51
    const-string v2, "com.google.android.music.CLEAN_ORPHANED_FILES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 988
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$700(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_1e

    .line 989
    :cond_63
    const-string v2, "com.google.android.music.RINGTONE_REQUEST_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 991
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/RingtoneScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState()V

    .line 993
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$900(Lcom/google/android/music/dl/DownloadManager;)V

    goto :goto_1e

    .line 994
    :cond_7a
    const-string v2, "com.google.android.music.SELF_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 995
    sget-object v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->LOGV:Z
    invoke-static {v2}, Lcom/google/android/music/dl/DownloadManager;->access$600(Lcom/google/android/music/dl/DownloadManager;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 996
    const-string v2, "MusicDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Self starting with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method
