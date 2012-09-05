.class public final Lcom/cooliris/picasa/PicasaService;
.super Landroid/app/Service;
.source "PicasaService.java"


# static fields
.field private static final sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mSyncHandler:Landroid/os/Handler;

.field private final mSyncThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cooliris/picasa/PicasaService;->sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PicasaSyncThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/picasa/PicasaService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncHandler:Landroid/os/Handler;

    .line 83
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cooliris/picasa/PicasaService$1;

    invoke-direct {v1, p0}, Lcom/cooliris/picasa/PicasaService$1;-><init>(Lcom/cooliris/picasa/PicasaService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method private static getContentProvider(Landroid/content/Context;)Lcom/cooliris/picasa/PicasaContentProvider;
    .registers 4
    .parameter "context"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "com.cooliris.picasa.contentprovider"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 94
    .local v0, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    check-cast v2, Lcom/cooliris/picasa/PicasaContentProvider;

    return-object v2
.end method

.method private static getIsSyncable(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 15
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    :try_start_2
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.google"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "service_lh2"

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    .line 211
    .local v5, picasaAccounts:[Landroid/accounts/Account;
    move-object v0, v5

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1f
    if-ge v2, v3, :cond_2d

    aget-object v4, v0, v2

    .line 212
    .local v4, picasaAccount:Landroid/accounts/Account;
    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_26} :catch_2f

    move-result v8

    if-eqz v8, :cond_2a

    .line 216
    .end local v4           #picasaAccount:Landroid/accounts/Account;
    :goto_29
    return v6

    .line 211
    .restart local v4       #picasaAccount:Landroid/accounts/Account;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .end local v4           #picasaAccount:Landroid/accounts/Account;
    :cond_2d
    move v6, v7

    .line 216
    goto :goto_29

    .line 217
    .end local v0           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #picasaAccounts:[Landroid/accounts/Account;
    :catch_2f
    move-exception v1

    .line 218
    .local v1, e:Landroid/accounts/AuthenticatorException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static performSync(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)Z
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    sget-object v2, Lcom/cooliris/picasa/PicasaService;->sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_b

    .line 133
    :goto_a
    return v0

    .line 126
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/cooliris/picasa/PicasaService;->performSyncImpl(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V

    .line 129
    sget-object v2, Lcom/cooliris/picasa/PicasaService;->sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    sget-object v2, Lcom/cooliris/picasa/PicasaService;->sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 131
    :try_start_16
    sget-object v0, Lcom/cooliris/picasa/PicasaService;->sSyncPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v2

    move v0, v1

    .line 133
    goto :goto_a

    .line 132
    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private static performSyncImpl(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 153
    const-string v0, "com.cooliris.picasa.contentprovider"

    .line 154
    .local v0, authority:Ljava/lang/String;
    const-string v8, "initialize"

    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 155
    if-eqz p1, :cond_1d

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_1d

    .line 157
    :try_start_14
    invoke-static {p0, p1}, Lcom/cooliris/picasa/PicasaService;->getIsSyncable(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v8

    if-eqz v8, :cond_1e

    :goto_1a
    invoke-static {p1, v0, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_25

    .line 202
    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    move v6, v7

    .line 157
    goto :goto_1a

    .line 159
    :catch_20
    move-exception v1

    .line 160
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1d

    .line 161
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_25
    move-exception v1

    .line 162
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 170
    .end local v1           #e:Ljava/io/IOException;
    :cond_2a
    if-eqz p1, :cond_3c

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3c

    .line 171
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    goto :goto_1d

    .line 177
    :cond_3c
    const-string v7, "com.cooliris.SYNC_TYPE"

    invoke-virtual {p2, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 178
    .local v5, type:I
    const-string v7, "com.cooliris.SYNC_ID"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 182
    .local v2, id:J
    invoke-static {p0}, Lcom/cooliris/picasa/PicasaService;->getContentProvider(Landroid/content/Context;)Lcom/cooliris/picasa/PicasaContentProvider;

    move-result-object v4

    .line 183
    .local v4, provider:Lcom/cooliris/picasa/PicasaContentProvider;
    invoke-virtual {v4}, Lcom/cooliris/picasa/PicasaContentProvider;->reloadAccounts()V

    .line 186
    invoke-virtual {v4, p1}, Lcom/cooliris/picasa/PicasaContentProvider;->setActiveSyncAccount(Landroid/accounts/Account;)V

    .line 189
    packed-switch v5, :pswitch_data_6a

    .line 200
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 191
    :pswitch_5d
    invoke-virtual {v4, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUsers(Landroid/content/SyncResult;)V

    goto :goto_1d

    .line 194
    :pswitch_61
    invoke-virtual {v4, v6, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->syncUsersAndAlbums(ZLandroid/content/SyncResult;)V

    goto :goto_1d

    .line 197
    :pswitch_65
    invoke-virtual {v4, v2, v3, v6, p3}, Lcom/cooliris/picasa/PicasaContentProvider;->syncAlbumPhotos(JZLandroid/content/SyncResult;)V

    goto :goto_1d

    .line 189
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_61
        :pswitch_65
    .end packed-switch
.end method

.method public static requestSync(Landroid/content/Context;IJ)V
    .registers 11
    .parameter "context"
    .parameter "type"
    .parameter "id"

    .prologue
    .line 66
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v3, extras:Landroid/os/Bundle;
    const-string v6, "com.cooliris.SYNC_TYPE"

    invoke-virtual {v3, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v6, "com.cooliris.SYNC_ID"

    invoke-virtual {v3, v6, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 70
    invoke-static {p0}, Lcom/cooliris/picasa/PicasaApi;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 71
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_16
    if-ge v4, v5, :cond_22

    aget-object v0, v2, v4

    .line 72
    .local v0, account:Landroid/accounts/Account;
    const-string v6, "com.cooliris.picasa.contentprovider"

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 77
    .end local v0           #account:Landroid/accounts/Account;
    :cond_22
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 110
    new-instance v0, Lcom/cooliris/picasa/PicasaSyncAdapter;

    invoke-virtual {p0}, Lcom/cooliris/picasa/PicasaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/PicasaSyncAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cooliris/picasa/PicasaSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 116
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaService;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cooliris/picasa/PicasaService$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/cooliris/picasa/PicasaService$2;-><init>(Lcom/cooliris/picasa/PicasaService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    const/4 v0, 0x2

    return v0
.end method
