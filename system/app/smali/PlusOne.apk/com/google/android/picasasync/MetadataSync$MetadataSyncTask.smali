.class Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;
.super Lcom/google/android/picasasync/SyncTask;
.source "MetadataSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/MetadataSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataSyncTask"
.end annotation


# instance fields
.field private mSyncCancelled:Z

.field private mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

.field final synthetic this$0:Lcom/google/android/picasasync/MetadataSync;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/MetadataSync;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter "account"
    .parameter "manual"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    .line 70
    invoke-direct {p0, p2}, Lcom/google/android/picasasync/SyncTask;-><init>(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSync()V
    .registers 2

    .prologue
    .line 139
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->stopSync()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 141
    :cond_d
    monitor-exit p0

    return-void

    .line 139
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBackgroundSync()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDownSync()Z
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->isSyncOnBattery(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->isSyncPicasaOnWifiOnly(Landroid/content/Context;)Z

    move-result v0

    goto :goto_9
.end method

.method public performSync(Landroid/content/SyncResult;)V
    .registers 13
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 80
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v3

    .line 81
    .local v3, sync:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaSyncHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mIsManual:Z
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$000(Lcom/google/android/picasasync/MetadataSync;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 85
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 135
    :goto_22
    return-void

    .line 86
    :cond_23
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 94
    :cond_2a
    monitor-enter p0

    .line 95
    :try_start_2b
    iget-boolean v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncCancelled:Z

    if-eqz v6, :cond_4a

    monitor-exit p0

    goto :goto_22

    .line 98
    :catchall_31
    move-exception v6

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v6

    .line 88
    :cond_34
    const/4 v4, 0x0

    .line 89
    .local v4, syncStarted:Z
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 90
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncStart(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 91
    if-nez v4, :cond_2a

    goto :goto_22

    .line 96
    .end local v4           #syncStarted:Z
    :cond_4a
    :try_start_4a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->createSyncContext(Landroid/content/SyncResult;Ljava/lang/Thread;)Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    .line 97
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    iget-object v7, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->setAccount(Ljava/lang/String;)Z

    .line 98
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_31

    .line 100
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->findUser(Ljava/lang/String;)Lcom/google/android/picasasync/UserEntry;

    move-result-object v5

    .line 101
    .local v5, user:Lcom/google/android/picasasync/UserEntry;
    if-nez v5, :cond_7a

    .line 102
    const-string v6, "MetadataSyncProvider"

    const-string v7, "user: %s not found, sync abort"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 107
    :cond_7a
    const/4 v2, 0x0

    .line 109
    .local v2, isPicasaAccount:Z
    :try_start_7b
    iget-object v6, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/picasasync/PicasaSyncHelper;->isPicasaAccount(Ljava/lang/String;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_b2

    move-result v2

    .line 114
    :goto_81
    if-eqz v2, :cond_bb

    .line 115
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAlbumsForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 116
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v3, v6, v5}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncPhotosForUser(Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;Lcom/google/android/picasasync/UserEntry;)V

    .line 123
    :goto_8d
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->mSyncContext:Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->syncInterrupted()Z

    move-result v6

    if-nez v6, :cond_d1

    .line 124
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 125
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->onSyncFinish(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/google/android/picasasync/MetadataSync$MetadataSyncTask;->this$0:Lcom/google/android/picasasync/MetadataSync;

    #getter for: Lcom/google/android/picasasync/MetadataSync;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/android/picasasync/MetadataSync;->access$100(Lcom/google/android/picasasync/MetadataSync;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/picasasync/PicasaSyncManager;->requestPrefetchSync()V

    goto/16 :goto_22

    .line 110
    :catch_b2
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "MetadataSyncProvider"

    const-string v7, "check picasa account failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    .line 118
    .end local v1           #e:Ljava/lang/Exception;
    :cond_bb
    const-string v6, "MetadataSyncProvider"

    const-string v7, "%s has not been enabled for Picasa service, just ignore"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 132
    :cond_d1
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 133
    sget-object v6, Lcom/google/android/picasasync/SyncState;->METADATA_MANUAL:Lcom/google/android/picasasync/SyncState;

    iget-object v7, v5, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/google/android/picasasync/SyncState;->resetSyncToDirty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_22
.end method
