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
    .line 1093
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 1094
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1097
    new-instance v0, Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager;-><init>(Landroid/app/Service;)V

    sput-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 1098
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
    .line 1172
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_3
    sget-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    if-eqz v0, :cond_f

    .line 1174
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    .line 1176
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    .line 1178
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .parameter "intent"

    .prologue
    .line 1153
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->LOGV:Z
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadManager;->access$500(Lcom/google/android/music/dl/DownloadManager;)Z

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_20
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 1102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1103
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_6
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onCreate()V

    .line 1105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 1106
    monitor-exit v1

    .line 1107
    return-void

    .line 1106
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
    .line 1159
    sget-object v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1160
    :try_start_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1161
    sget-object v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->onDestroy()V

    .line 1162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mServiceCreated:Z

    .line 1163
    monitor-exit v1

    .line 1164
    return-void

    .line 1163
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-wide/16 v6, -0x1

    .line 1112
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 1113
    const-string v5, "com.android.music.queuechanged"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1119
    :cond_1a
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->updateDownloadQueue(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V
    invoke-static {p0, v5}, Lcom/google/android/music/dl/DownloadManager;->access$900(Landroid/content/Context;Lcom/google/android/music/dl/DownloadManager;)V

    .line 1148
    .end local v0           #action:Ljava/lang/String;
    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    return v5

    .line 1120
    .restart local v0       #action:Ljava/lang/String;
    :cond_21
    const-string v5, "com.google.android.music.accountchanged"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1121
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v5}, Lcom/google/android/music/dl/DownloadManager;->stop()V

    .line 1122
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_1f

    .line 1123
    :cond_38
    const-string v5, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1124
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1100(Lcom/google/android/music/dl/DownloadManager;)V

    .line 1125
    const-string v5, "deleteCachedFiles"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1128
    .local v1, fileCleanupRequested:Z
    if-eqz v1, :cond_1f

    .line 1129
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_1f

    .line 1131
    .end local v1           #fileCleanupRequested:Z
    :cond_58
    const-string v5, "com.google.android.music.CLEAN_ORPHANED_FILES"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1132
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    goto :goto_1f

    .line 1133
    :cond_6a
    const-string v5, "com.google.android.music.RINGTONE_REQUEST_START"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1134
    const-string v5, "musicId"

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1136
    .local v2, musicId:J
    cmp-long v5, v2, v6

    if-eqz v5, :cond_88

    .line 1137
    new-instance v4, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v5, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 1139
    .local v4, songId:Lcom/google/android/music/dl/ContentIdentifier;
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->downloadRingtoneAsync(Lcom/google/android/music/dl/ContentIdentifier;)V
    invoke-static {v5, v4}, Lcom/google/android/music/dl/DownloadManager;->access$1200(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 1142
    .end local v4           #songId:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_88
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1300(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/RingtoneScheduler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState()V

    .line 1144
    sget-object v5, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V
    invoke-static {v5}, Lcom/google/android/music/dl/DownloadManager;->access$1100(Lcom/google/android/music/dl/DownloadManager;)V

    goto :goto_1f
.end method
