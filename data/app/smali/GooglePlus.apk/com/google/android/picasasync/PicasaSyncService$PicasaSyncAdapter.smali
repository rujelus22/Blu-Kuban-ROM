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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 68
    return-void
.end method

.method private isGoogleAccount(Landroid/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 71
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 14
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "providerClient"
    .parameter "syncResult"

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v2

    .line 86
    .local v2, picasaSyncManager:Lcom/google/android/picasasync/PicasaSyncManager;
    const-string v3, "initialize"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 87
    const-string v3, "PicasaSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_2f
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    .line 90
    .local v1, facade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-direct {p0, p1}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 92
    const/4 v3, 0x1

    invoke-static {p1, p3, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/google/android/picasasync/PicasaSyncService;->carryOverSyncAutomatically(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    invoke-static {v3, p1, p3}, Lcom/google/android/picasasync/PicasaSyncService;->access$000(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 94
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->onAccountInitialized(Ljava/lang/String;)V

    .line 138
    .end local v1           #facade:Lcom/google/android/picasasync/PicasaFacade;
    :goto_53
    return-void

    .line 96
    .restart local v1       #facade:Lcom/google/android/picasasync/PicasaFacade;
    :cond_54
    const/4 v3, 0x0

    invoke-static {p1, p3, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_58} :catch_59

    goto :goto_53

    .line 98
    .end local v1           #facade:Lcom/google/android/picasasync/PicasaFacade;
    :catch_59
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PicasaSyncService"

    const-string v4, "cannot do sync"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :cond_62
    monitor-enter p0

    .line 105
    :try_start_63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 106
    const-string v3, "PicasaSyncService"

    const-string v4, "sync is cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit p0

    goto :goto_53

    .line 110
    :catchall_76
    move-exception v3

    monitor-exit p0
    :try_end_78
    .catchall {:try_start_63 .. :try_end_78} :catchall_76

    throw v3

    .line 109
    :cond_79
    :try_start_79
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, p5}, Lcom/google/android/picasasync/PicasaSyncManager;->createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    .line 110
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_76

    .line 112
    const-string v3, "upload"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string v3, "picasa-sync-manager-requested"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 118
    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->resetSyncStates()V

    .line 120
    sget-object v3, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/SyncState;->onSyncRequested(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 125
    :cond_a8
    const-string v3, "PicasaSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start sync on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_c6
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->performSync(Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;)V
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_110
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_e5

    .line 132
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 133
    const-string v3, "PicasaSyncService"

    const-string v4, "sync cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 135
    :cond_dc
    const-string v3, "PicasaSyncService"

    const-string v4, "sync finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 128
    :catch_e5
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_e6
    const-string v3, "PicasaSyncService"

    const-string v4, "performSync error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    iget-object v3, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_f6
    .catchall {:try_start_e6 .. :try_end_f6} :catchall_110

    .line 132
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v3

    if-eqz v3, :cond_107

    .line 133
    const-string v3, "PicasaSyncService"

    const-string v4, "sync cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 135
    :cond_107
    const-string v3, "PicasaSyncService"

    const-string v4, "sync finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_110
    move-exception v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v4

    if-eqz v4, :cond_121

    .line 133
    const-string v4, "PicasaSyncService"

    const-string v5, "sync cancelled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_120
    throw v3

    :cond_121
    const-string v4, "PicasaSyncService"

    const-string v5, "sync finished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120
.end method

.method public declared-synchronized onSyncCanceled()V
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    const-string v0, "PicasaSyncService"

    const-string v1, "receive cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    .line 78
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncService$PicasaSyncAdapter;->mSession:Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncManager$SyncSession;->cancelSync()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 79
    :cond_14
    monitor-exit p0

    return-void

    .line 76
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
