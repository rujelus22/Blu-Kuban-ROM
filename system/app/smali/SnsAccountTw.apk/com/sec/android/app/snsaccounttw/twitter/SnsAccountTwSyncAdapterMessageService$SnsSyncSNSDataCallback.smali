.class Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "SnsAccountTwSyncAdapterMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnsSyncSNSDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 25
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrSpList"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 312
    .local v4, ReqID:Ljava/lang/Integer;
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 313
    .local v1, BSuccess:Ljava/lang/Boolean;
    if-eqz p4, :cond_e6

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, sUri:Ljava/lang/String;
    :goto_e
    move/from16 v3, p5

    .line 315
    .local v3, HttpStatusCode:I
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 316
    .local v2, ErrCode:Ljava/lang/Integer;
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 318
    .local v5, SubErrCode:Ljava/lang/Integer;
    const-string v9, "SnsAccountTw"

    const-string v10, "###################### CALLBACK RECEIVE <START> #####################"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v9, "SnsAccountTw"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RECEIVED DATA : ReqID = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], bSuccess = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], URI = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], HttpStatusCode = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], ErrCode = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], SubErrCode = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], reason = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "requestid"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    iget-object v9, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    invoke-virtual {v9}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "synctype = ?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "message"

    aput-object v14, v12, v13

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    :try_start_af
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_d8

    .line 335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x2329

    if-eq v9, v10, :cond_c5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xc3b

    if-ne v9, v10, :cond_e9

    .line 336
    :cond_c5
    iget-object v9, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v9}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$200(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)Landroid/content/SyncResult;

    move-result-object v9

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    const-wide/16 v10, 0x1

    iput-wide v10, v9, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 342
    :goto_d1
    const-string v9, "SnsAccountTw"

    const-string v10, "SnsAccountTwSyncAdapterMessageService : Sync result is FAILED!!!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_d8} :catch_100

    .line 349
    :cond_d8
    :goto_d8
    iget-object v9, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncState:I
    invoke-static {v9, v10}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$902(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;I)I

    .line 351
    const-string v9, "SnsAccountTw"

    const-string v10, "###################### CALLBACK RECEIVE <END> #####################"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 313
    .end local v2           #ErrCode:Ljava/lang/Integer;
    .end local v3           #HttpStatusCode:I
    .end local v5           #SubErrCode:Ljava/lang/Integer;
    .end local v7           #sUri:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_e6
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 337
    .restart local v2       #ErrCode:Ljava/lang/Integer;
    .restart local v3       #HttpStatusCode:I
    .restart local v5       #SubErrCode:Ljava/lang/Integer;
    .restart local v7       #sUri:Ljava/lang/String;
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_e9
    :try_start_e9
    const-string v9, "Error_RetryLogin"

    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    .line 338
    iget-object v9, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v9}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$200(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)Landroid/content/SyncResult;

    move-result-object v9

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    const-wide/16 v10, 0x1

    iput-wide v10, v9, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_ff
    .catch Ljava/lang/NullPointerException; {:try_start_e9 .. :try_end_ff} :catch_100

    goto :goto_d1

    .line 345
    :catch_100
    move-exception v6

    .line 346
    .local v6, e:Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d8

    .line 340
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_105
    :try_start_105
    iget-object v9, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService$SnsSyncSNSDataCallback;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->mSyncResult:Landroid/content/SyncResult;
    invoke-static {v9}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;->access$200(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwSyncAdapterMessageService;)Landroid/content/SyncResult;

    move-result-object v9

    iget-object v9, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    const-wide/16 v10, 0x1

    iput-wide v10, v9, Landroid/content/SyncStats;->numConflictDetectedExceptions:J
    :try_end_111
    .catch Ljava/lang/NullPointerException; {:try_start_105 .. :try_end_111} :catch_100

    goto :goto_d1
.end method
