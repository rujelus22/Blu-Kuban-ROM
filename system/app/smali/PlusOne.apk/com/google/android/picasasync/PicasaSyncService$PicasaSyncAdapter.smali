.class Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "PicasaSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PicasaSyncAdapter"
.end annotation


# instance fields
.field private mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

.field private final mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 69
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    .line 70
    return-void
.end method

.method private isGoogleAccount(Landroid/accounts/Account;)Z
    .registers 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 13
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "providerClient"
    .parameter "syncResult"

    .prologue
    const/4 v5, 0x0

    .line 86
    const-string v2, "initialize"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 87
    const-string v2, "PicasaSyncService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    .line 90
    .local v1, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 92
    const/4 v2, 0x1

    invoke-static {p1, p3, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/google/android/picasasync/PicasaSyncService;->carryOverSyncAutomatically(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    invoke-static {v2, p1, p3}, Lcom/google/android/picasasync/PicasaSyncService;->access$000(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->onAccountInitialized(Ljava/lang/String;)V

    .line 142
    .end local v1           #facade:Lcom/google/android/picasasync/PicasaFacade;
    :goto_4d
    return-void

    .line 96
    .restart local v1       #facade:Lcom/google/android/picasasync/PicasaFacade;
    :cond_4e
    const/4 v2, 0x0

    invoke-static {p1, p3, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_52} :catch_53

    goto :goto_4d

    .line 98
    .end local v1           #facade:Lcom/google/android/picasasync/PicasaFacade;
    :catch_53
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PicasaSyncService"

    const-string v3, "cannot do sync"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5c
    monitor-enter p0

    .line 105
    :try_start_5d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 106
    const-string v2, "PicasaSyncService"

    const-string v3, "sync is cancelled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit p0

    goto :goto_4d

    .line 110
    :catchall_70
    move-exception v2

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_70

    throw v2

    .line 109
    :cond_73
    :try_start_73
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, p5}, Lcom/google/android/picasasync/PicasaSyncManager;->createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 110
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_70

    .line 112
    const-string v2, "upload"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a6

    const-string v2, "picasa-sync-manager-requested"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 118
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->resetSyncStates()V

    .line 120
    sget-object v2, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 129
    :cond_a6
    const-string v2, "picasa-sync-manager-requested"

    invoke-virtual {p2, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 130
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->onSyncStart()V

    .line 133
    :cond_b3
    const-string v2, "PicasaSyncService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to perform sync on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_d1
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->performSync(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d8} :catch_f8

    .line 140
    const-string v2, "PicasaSyncService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync finished - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 136
    :catch_f8
    move-exception v0

    .line 137
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_f9
    const-string v2, "PicasaSyncService"

    const-string v3, "performSync error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object v2, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_109
    .catchall {:try_start_f9 .. :try_end_109} :catchall_129

    .line 140
    const-string v2, "PicasaSyncService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync finished - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_129
    move-exception v2

    const-string v3, "PicasaSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync finished - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v5}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method

.method public declared-synchronized onSyncCanceled()V
    .registers 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    const-string v0, "PicasaSyncService"

    const-string v1, "receive cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    .line 80
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->cancelSync()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 81
    :cond_14
    monitor-exit p0

    return-void

    .line 78
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
