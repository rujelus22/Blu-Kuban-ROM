.class public Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;
.super Landroid/app/Service;
.source "SnsAccountFbSyncAdapterMessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SnsSyncSNSDataCallback;,
        Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mPollingID:I

.field private mReqConnection:Landroid/content/ServiceConnection;

.field private mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field private mService:Lcom/sec/android/app/sns/ISnsService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mSyncAdapter:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

.field private mSyncAppID:I

.field private mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field private mSyncResult:Landroid/content/SyncResult;

.field private mSyncState:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    iput v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAppID:I

    .line 65
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 69
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 71
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAdapter:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    .line 75
    iput v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAccount:Landroid/accounts/Account;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAuthority:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$1;-><init>(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 129
    new-instance v0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$2;-><init>(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mReqConnection:Landroid/content/ServiceConnection;

    .line 300
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAuthority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)Landroid/content/SyncResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Landroid/content/SyncResult;)Landroid/content/SyncResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->performSync(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->onSyncCanceled()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAppID:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    return p1
.end method

.method private onSyncCanceled()V
    .registers 5

    .prologue
    .line 286
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-eqz v1, :cond_37

    .line 288
    :try_start_4
    iget v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAppID:I

    iget v3, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester;->cancelSync(II)Z

    .line 290
    const-string v1, "SnsAccountFb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnsAccountFbSyncAdapterMessageService : onSyncCanceled - mPollingID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_37} :catch_38

    .line 298
    :cond_37
    :goto_37
    return-void

    .line 294
    :catch_38
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method private performSync(Z)V
    .registers 16
    .parameter "bAutoPolling"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, bDeletePrevId:Z
    const/4 v8, -0x1

    .line 207
    .local v8, pPollingID:I
    const-string v0, "SnsAccountFb"

    const-string v1, "***************** SnsAccountFbSyncAdapterMessageService : performSync - START !!! ***************** "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x2

    :try_start_a
    new-array v9, v0, [I

    fill-array-data v9, :array_218

    .line 216
    .local v9, pollingTypes:[I
    const/4 v10, 0x0

    .line 217
    .local v10, snsCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "requestid"

    aput-object v4, v2, v3

    const-string v3, "synctype = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "message"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_12e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2c} :catch_af

    move-result-object v10

    .line 224
    if-eqz v10, :cond_a0

    :try_start_2f
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 225
    const-string v0, "requestid"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_a8

    move-result v8

    .line 230
    :goto_3f
    if-eqz v10, :cond_44

    .line 231
    :try_start_41
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_44
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-nez v0, :cond_112

    .line 235
    :goto_48
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-nez v0, :cond_112

    .line 236
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_12e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_51} :catch_af

    goto :goto_48

    .line 262
    .end local v9           #pollingTypes:[I
    .end local v10           #snsCursor:Landroid/database/Cursor;
    :catch_52
    move-exception v7

    .line 263
    .local v7, e:Landroid/os/RemoteException;
    :try_start_53
    const-string v0, "SnsAccountFb"

    const-string v1, "SnsAccountFbSyncAdapterMessageService : RemoteException !!! "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_12e

    .line 265
    const/4 v6, 0x1

    .line 271
    if-eqz v6, :cond_7f

    .line 272
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "requestid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "synctype = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_7f
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************** SnsAccountFbSyncAdapterMessageService : performSync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - FINISHED !!! *****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v7           #e:Landroid/os/RemoteException;
    :goto_9f
    return-void

    .line 227
    .restart local v9       #pollingTypes:[I
    .restart local v10       #snsCursor:Landroid/database/Cursor;
    :cond_a0
    :try_start_a0
    const-string v0, "SnsAccountFb"

    const-string v1, "Fail to previous request id from DB."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_a8

    goto :goto_3f

    .line 230
    :catchall_a8
    move-exception v0

    if-eqz v10, :cond_ae

    .line 231
    :try_start_ab
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_12e
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_af} :catch_52
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_af} :catch_af

    .line 266
    .end local v9           #pollingTypes:[I
    .end local v10           #snsCursor:Landroid/database/Cursor;
    :catch_af
    move-exception v7

    .line 267
    .local v7, e:Ljava/lang/Exception;
    :try_start_b0
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsAccountFbSyncAdapterMessageService : EXCEPTION !!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_b0 .. :try_end_cc} :catchall_12e

    .line 269
    const/4 v6, 0x1

    .line 271
    if-eqz v6, :cond_f1

    .line 272
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v0, "requestid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "synctype = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_f1
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************** SnsAccountFbSyncAdapterMessageService : performSync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - FINISHED !!! *****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 238
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #pollingTypes:[I
    .restart local v10       #snsCursor:Landroid/database/Cursor;
    :cond_112
    const/4 v0, 0x1

    :try_start_113
    iput v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAppID:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v9, v8}, Lcom/sec/android/app/sns/ISnsRequester;->syncSNSData(II[II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_174

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    .line 243
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "syncsyncSNSData is failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12e
    .catchall {:try_start_113 .. :try_end_12e} :catchall_12e
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_12e} :catch_52
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_12e} :catch_af

    .line 271
    .end local v9           #pollingTypes:[I
    .end local v10           #snsCursor:Landroid/database/Cursor;
    :catchall_12e
    move-exception v0

    if-eqz v6, :cond_153

    .line 272
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v1, "requestid"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "synctype = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "message"

    aput-object v13, v4, v5

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_153
    const-string v1, "SnsAccountFb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***************** SnsAccountFbSyncAdapterMessageService : performSync("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - FINISHED !!! *****************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 246
    .restart local v9       #pollingTypes:[I
    .restart local v10       #snsCursor:Landroid/database/Cursor;
    :cond_174
    :try_start_174
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsAccountFbSyncAdapterMessageService : mPollingID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bAutoPolling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v11, syncLog:Ljava/lang/StringBuilder;
    :cond_19d
    :goto_19d
    iget v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d1

    .line 252
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 253
    const-string v0, "SnsAccountFb"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 254
    const/4 v0, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 255
    const-string v0, "***************** SnsAccountFbSyncAdapterMessageService : performSync("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    const-string v0, ") - OnGoing... *****************"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v0, "SnsAccountFb"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d0
    .catchall {:try_start_174 .. :try_end_1d0} :catchall_12e
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_1d0} :catch_52
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1d0} :catch_af

    goto :goto_19d

    .line 271
    :cond_1d1
    if-eqz v6, :cond_1f5

    .line 272
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v0, "requestid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "synctype = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1f5
    const-string v0, "SnsAccountFb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***************** SnsAccountFbSyncAdapterMessageService : performSync("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - FINISHED !!! *****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 210
    nop

    :array_218
    .array-data 0x4
        0x1at 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAdapter:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 142
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAdapter:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

    if-nez v0, :cond_f

    .line 144
    new-instance v0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;-><init>(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncAdapter:Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SyncAdapterImpl;

    .line 147
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 151
    new-instance v0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SnsSyncSNSDataCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService$SnsSyncSNSDataCallback;-><init>(Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 152
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 162
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mAuthority:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 163
    .local v0, bPending:Z
    const/4 v2, 0x0

    .line 165
    .local v2, pendingLog:Ljava/lang/String;
    if-eqz v0, :cond_74

    iget v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    if-ne v4, v7, :cond_74

    .line 166
    const-string v2, "PENDING STATE : Maybe performSync will be called later!!!"

    .line 169
    :try_start_13
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget v5, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/sns/ISnsService;->setSyncPendingState(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_6f

    .line 174
    :goto_1a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "requestid"

    iget v5, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mPollingID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "synctype = ?"

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "message"

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 183
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_3b
    const-string v4, "SnsAccountFb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsAccountFbSyncAdapterMessageService : onUnbind : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput v9, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncState:I

    .line 189
    :try_start_55
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v4, :cond_60

    .line 190
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v5, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSyncCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v4, v5}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_60} :catch_77

    .line 196
    :cond_60
    :goto_60
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    iget-object v4, p0, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountfb/facebook/SnsAccountFbSyncAdapterMessageService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v4

    return v4

    .line 170
    :catch_6f
    move-exception v1

    .line 171
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 181
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_74
    const-string v2, "COMPLETE STATE!!!"

    goto :goto_3b

    .line 192
    :catch_77
    move-exception v1

    .line 193
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_60
.end method
