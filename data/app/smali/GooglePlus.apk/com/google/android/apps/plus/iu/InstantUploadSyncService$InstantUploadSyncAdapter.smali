.class Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "InstantUploadSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstantUploadSyncAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 75
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static declared-synchronized carryOverSyncAutomaticallyForAllAccounts(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const/4 v12, 0x2

    .line 94
    const-class v11, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;

    monitor-enter v11

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 95
    .local v9, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v10, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$CarryOverDummyReceiver;

    invoke-direct {v2, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v10

    if-eq v10, v12, :cond_8f

    .line 99
    const/4 v10, 0x2

    const/4 v12, 0x1

    invoke-virtual {v9, v2, v10, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 103
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v12, "com.google"

    invoke-virtual {v10, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 105
    .local v3, googleAccounts:[Landroid/accounts/Account;
    if-eqz v3, :cond_9f

    .line 106
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, oldAuthority:Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_31
    if-ge v4, v5, :cond_9f

    aget-object v0, v1, v4

    .line 108
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 110
    .local v7, photoSyncEnabled:Z
    const-string v10, "com.google.android.apps.plus.content.EsProvider"

    invoke-static {v0, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    .line 113
    .local v8, plusSyncEnabled:Z
    const-string v10, "InstantUploadSyncSvc"

    const/4 v12, 0x3

    invoke-static {v10, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7a

    .line 114
    const-string v10, "InstantUploadSyncSvc"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Carry over sync; plus? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", photo? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; acct: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_7a
    if-eqz v8, :cond_86

    if-eqz v7, :cond_86

    .line 121
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->activateAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :goto_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 123
    :cond_86
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService;->deactivateAccount(Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_8c

    goto :goto_83

    .line 94
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v3           #googleAccounts:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #oldAuthority:Ljava/lang/String;
    .end local v7           #photoSyncEnabled:Z
    .end local v8           #plusSyncEnabled:Z
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :catchall_8c
    move-exception v10

    monitor-exit v11

    throw v10

    .line 128
    .restart local v2       #componentName:Landroid/content/ComponentName;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    :cond_8f
    :try_start_8f
    const-string v10, "InstantUploadSyncSvc"

    const/4 v12, 0x3

    invoke-static {v10, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 129
    const-string v10, "InstantUploadSyncSvc"

    const-string v12, "leave auto sync alone"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_8c

    .line 132
    :cond_9f
    monitor-exit v11

    return-void
.end method

.method private isGoogleAccount(Landroid/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 79
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 16
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "providerClient"
    .parameter "syncResult"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v4

    .line 139
    .local v4, iuSync:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 140
    .local v0, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_3e

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v2, 0x1

    .line 143
    .local v2, isActiveAccount:Z
    :goto_1d
    const-string v5, "initialize"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->carryOverSyncAutomaticallyForAllAccounts(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_40

    if-eqz v2, :cond_40

    const/4 v3, 0x1

    .line 148
    .local v3, isSyncable:Z
    :goto_35
    if-eqz v3, :cond_42

    .line 150
    :try_start_37
    const-string v5, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 192
    .end local v3           #isSyncable:Z
    :cond_3d
    :goto_3d
    return-void

    .line 140
    .end local v2           #isActiveAccount:Z
    :cond_3e
    const/4 v2, 0x0

    goto :goto_1d

    .line 146
    .restart local v2       #isActiveAccount:Z
    :cond_40
    const/4 v3, 0x0

    goto :goto_35

    .line 152
    .restart local v3       #isSyncable:Z
    :cond_42
    const-string v5, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_48} :catch_49

    goto :goto_3d

    .line 154
    :catch_49
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 156
    const-string v5, "InstantUploadSyncSvc"

    const-string v6, "cannot do sync"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 163
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #isSyncable:Z
    :cond_5b
    if-eqz v2, :cond_3d

    .line 167
    monitor-enter p0

    .line 168
    :try_start_5e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 169
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 170
    const-string v5, "InstantUploadSyncSvc"

    const-string v6, "sync is cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_78
    monitor-exit p0

    goto :goto_3d

    .line 175
    :catchall_7a
    move-exception v5

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_5e .. :try_end_7c} :catchall_7a

    throw v5

    .line 174
    :cond_7d
    :try_start_7d
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, p5}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->createSession(Ljava/lang/String;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 175
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_7a

    .line 177
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 178
    const-string v5, "InstantUploadSyncSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start to perform sync on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_ad
    :try_start_ad
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->performSync(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_11e
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b2} :catch_db

    .line 188
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 189
    const-string v5, "InstantUploadSyncSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sync finished - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 182
    :catch_db
    move-exception v1

    .line 183
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_dc
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 184
    const-string v5, "InstantUploadSyncSvc"

    const-string v6, "performSync error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_ec
    iget-object v5, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_f5
    .catchall {:try_start_dc .. :try_end_f5} :catchall_11e

    .line 188
    const-string v5, "InstantUploadSyncSvc"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 189
    const-string v5, "InstantUploadSyncSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sync finished - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d

    .line 188
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_11e
    move-exception v5

    const-string v6, "InstantUploadSyncSvc"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 189
    const-string v6, "InstantUploadSyncSvc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sync finished - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->isSyncCancelled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_146
    throw v5
.end method

.method public declared-synchronized onSyncCanceled()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    const-string v0, "InstantUploadSyncSvc"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    const-string v0, "InstantUploadSyncSvc"

    const-string v1, "receive cancel request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_11
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncService$InstantUploadSyncAdapter;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->cancelSync()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 89
    :cond_1d
    monitor-exit p0

    return-void

    .line 84
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
