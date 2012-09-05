.class final Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;
.super Ljava/lang/Object;
.source "EsSyncAdapterService.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncListener"
.end annotation


# instance fields
.field private final mSyncResult:Landroid/content/SyncResult;


# direct methods
.method public constructor <init>(Landroid/content/SyncResult;)V
    .registers 2
    .parameter "syncResult"

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    .line 251
    return-void
.end method


# virtual methods
.method public onOperationComplete(Lcom/google/android/apps/plus/network/HttpOperation;)V
    .registers 10
    .parameter "op"

    .prologue
    const/16 v7, 0x2f

    const-wide/16 v5, 0x1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getErrorCode()I

    move-result v0

    .line 259
    .local v0, errorCode:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 261
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "EsSyncAdapterService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 262
    const-string v2, "EsSyncAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync operation complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_41
    if-eqz v1, :cond_6d

    .line 267
    instance-of v2, v1, Landroid/accounts/AuthenticatorException;

    if-eqz v2, :cond_51

    .line 268
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 280
    :cond_50
    :goto_50
    return-void

    .line 269
    :cond_51
    instance-of v2, v1, Landroid/accounts/OperationCanceledException;

    if-nez v2, :cond_50

    .line 270
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_63

    .line 271
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_50

    .line 273
    :cond_63
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_50

    .line 275
    :cond_6d
    const/16 v2, 0x191

    if-ne v0, v2, :cond_7b

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_50

    .line 277
    :cond_7b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 278
    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncListener;->mSyncResult:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_50
.end method
