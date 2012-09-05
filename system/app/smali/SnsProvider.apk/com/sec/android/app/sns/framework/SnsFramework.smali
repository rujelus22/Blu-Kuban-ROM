.class public Lcom/sec/android/app/sns/framework/SnsFramework;
.super Ljava/lang/Object;
.source "SnsFramework.java"


# instance fields
.field private mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private preprocessRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
    .registers 14
    .parameter "curReq"

    .prologue
    const/4 v11, 0x1

    .line 287
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v10

    sparse-switch v10, :sswitch_data_ea

    .line 374
    :cond_8
    :goto_8
    return-void

    .line 290
    :sswitch_9
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 291
    .local v5, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 292
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->clearDataBySP(I)V

    .line 293
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_3e

    goto :goto_8

    .line 369
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :catch_1e
    move-exception v6

    .line 370
    .local v6, e:Ljava/lang/ClassCastException;
    invoke-virtual {v6}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_8

    .line 297
    .end local v6           #e:Ljava/lang/ClassCastException;
    :sswitch_23
    :try_start_23
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    move-object v1, v0

    .line 298
    .local v1, activityStatuslistGet:Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 299
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 300
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 301
    invoke-virtual {v5, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 302
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_3d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_3e

    goto :goto_8

    .line 371
    .end local v1           #activityStatuslistGet:Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :catch_3e
    move-exception v6

    .line 372
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 307
    .end local v6           #e:Ljava/lang/Exception;
    :sswitch_43
    :try_start_43
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    move-object v2, v0

    .line 308
    .local v2, albumGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 309
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 310
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 311
    invoke-virtual {v5, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 312
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto :goto_8

    .line 317
    .end local v2           #albumGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :sswitch_5e
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    move-object v3, v0

    .line 318
    .local v3, albumRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 319
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 321
    invoke-virtual {v5, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 322
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto :goto_8

    .line 327
    .end local v3           #albumRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :sswitch_79
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    move-object v4, v0

    .line 328
    .local v4, commentRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 329
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 331
    invoke-virtual {v5, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 332
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto/16 :goto_8

    .line 337
    .end local v4           #commentRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :sswitch_95
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    move-object v7, v0

    .line 338
    .local v7, msgRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;
    invoke-virtual {v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 339
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 341
    invoke-virtual {v5, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 342
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto/16 :goto_8

    .line 347
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v7           #msgRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;
    :sswitch_b1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    move-object v8, v0

    .line 348
    .local v8, notificationRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;
    invoke-virtual {v8}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 349
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 350
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 351
    invoke-virtual {v5, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 352
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto/16 :goto_8

    .line 357
    .end local v5           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v8           #notificationRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;
    :sswitch_cd
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    move-object v9, v0

    .line 358
    .local v9, searchingSearch:Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;
    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getStartOffset()I

    move-result v10

    if-ne v10, v11, :cond_8

    .line 359
    new-instance v5, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v5       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 361
    invoke-virtual {v5, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteOffset(Lcom/sec/android/app/sns/request/data/SnsRequest;)I

    .line 362
    invoke-virtual {v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_e7
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_e7} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_e7} :catch_3e

    goto/16 :goto_8

    .line 287
    nop

    :sswitch_data_ea
    .sparse-switch
        0x3 -> :sswitch_9
        0x6 -> :sswitch_23
        0xa -> :sswitch_79
        0x16 -> :sswitch_95
        0x19 -> :sswitch_b1
        0x1d -> :sswitch_43
        0x1e -> :sswitch_5e
        0x26 -> :sswitch_cd
    .end sparse-switch
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/sec/android/app/sns/framework/SnsFramework;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 377
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public processRequest(Lcom/sec/android/app/sns/http/SnsHttpMgr;Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 30
    .parameter "httpMgr"
    .parameter "curReq"
    .parameter "sessionKey"
    .parameter "cryptoSessionKey"

    .prologue
    .line 101
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() Called !!!"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p2, :cond_195

    .line 105
    const/16 v19, 0x0

    .line 106
    .local v19, composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    const/16 v18, 0x0

    .line 107
    .local v18, composer:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    const/16 v17, 0x0

    .line 108
    .local v17, bComposeFailed:Z
    const/16 v16, 0x0

    .line 111
    .local v16, ResultErrorCode:I
    :try_start_11
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v8, 0x28

    if-eq v4, v8, :cond_b0

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_b0

    .line 113
    new-instance v4, Lcom/sec/android/app/sns/exception/SnsException;

    const-string v8, "Failed to get REQ URL !!!"

    invoke-direct {v4, v8}, Lcom/sec/android/app/sns/exception/SnsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_e2

    .line 124
    :catch_2b
    move-exception v21

    .line 125
    .local v21, e:Ljava/lang/NullPointerException;
    :goto_2c
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() : Null Pointer Exception, Composing Fail !!!"

    move-object/from16 v0, v21

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-virtual/range {v21 .. v21}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 129
    const/16 v17, 0x1

    .line 136
    .end local v21           #e:Ljava/lang/NullPointerException;
    :goto_3a
    if-eqz v17, :cond_f5

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v5

    .line 138
    .local v5, reqID:I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    .line 139
    .local v6, reqType:I
    const/4 v7, 0x0

    .line 141
    .local v7, internalCode:I
    const/16 v7, 0xfa1

    .line 143
    new-instance v4, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v4}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v24

    .line 146
    .local v24, resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() : Send pseudo response to RequestMgr!!!"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v8, "SNS_FRAMEWORK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SnsFramework : processRequest() : reqID = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", reqType = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", internalCode = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",bAutoPolling = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v4

    const/4 v10, -0x1

    if-le v4, v10, :cond_f3

    const/4 v4, 0x1

    :goto_8d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/framework/SnsFramework;->getHandler()Landroid/os/Handler;

    move-result-object v22

    .line 153
    .local v22, hdr:Landroid/os/Handler;
    invoke-virtual/range {v22 .. v22}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v23

    .line 154
    .local v23, msg:Landroid/os/Message;
    const/4 v4, 0x3

    move-object/from16 v0, v23

    iput v4, v0, Landroid/os/Message;->what:I

    .line 155
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    const/4 v4, 0x1

    .line 204
    .end local v5           #reqID:I
    .end local v6           #reqType:I
    .end local v7           #internalCode:I
    .end local v16           #ResultErrorCode:I
    .end local v17           #bComposeFailed:Z
    .end local v18           #composer:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    .end local v19           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .end local v22           #hdr:Landroid/os/Handler;
    .end local v23           #msg:Landroid/os/Message;
    .end local v24           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    .end local p2
    :goto_af
    return v4

    .line 115
    .restart local v16       #ResultErrorCode:I
    .restart local v17       #bComposeFailed:Z
    .restart local v18       #composer:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    .restart local v19       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .restart local p2
    :cond_b0
    :try_start_b0
    new-instance v20, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;

    invoke-direct/range {v20 .. v20}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;-><init>()V
    :try_end_b5
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_b5} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_e2

    .line 116
    .end local v19           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .local v20, composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    :try_start_b5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;->newComposer(ILandroid/content/Context;)Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;

    move-result-object v18

    .line 117
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 119
    const/16 v4, 0xfa1

    move/from16 v0, v16

    if-ne v0, v4, :cond_de

    .line 120
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() : SnsException, Composing Fail !!!"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_dc} :catch_1a4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_dc} :catch_19f

    .line 121
    const/16 v17, 0x1

    :cond_de
    move-object/from16 v19, v20

    .line 134
    .end local v20           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .restart local v19       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    goto/16 :goto_3a

    .line 130
    :catch_e2
    move-exception v21

    .line 131
    .local v21, e:Ljava/lang/Exception;
    :goto_e3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() : Exception, Composing Fail !!!"

    move-object/from16 v0, v21

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/16 v17, 0x1

    goto/16 :goto_3a

    .line 148
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v5       #reqID:I
    .restart local v6       #reqType:I
    .restart local v7       #internalCode:I
    .restart local v24       #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    :cond_f3
    const/4 v4, 0x0

    goto :goto_8d

    .line 162
    .end local v5           #reqID:I
    .end local v6           #reqType:I
    .end local v7           #internalCode:I
    .end local v24           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    :cond_f5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/framework/SnsFramework;->preprocessRequest(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, method:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getHttpHeaderList()Ljava/util/ArrayList;

    move-result-object v15

    .line 166
    .local v15, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->getReqURI()Ljava/lang/String;

    move-result-object v12

    .line 167
    .local v12, uri:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->getBody()Ljava/lang/Object;

    move-result-object v13

    .line 169
    .local v13, body:Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v8, 0x29

    if-eq v4, v8, :cond_126

    .line 171
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 173
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v4, v8, v13, v9}, Lcom/sec/android/app/sns/logging/SnsLogging;->saveLog(Landroid/content/Context;ILjava/lang/Object;I)Z
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_126} :catch_161

    .line 181
    :cond_126
    :goto_126
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->increaseRetryCount()V

    .line 184
    const-string v4, "PUT"

    if-ne v11, v4, :cond_166

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v8, 0x21

    if-ne v4, v8, :cond_166

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v10

    check-cast p2, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getFileName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->enqueueHttpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 195
    :goto_148
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v23

    .line 196
    .restart local v23       #msg:Landroid/os/Message;
    const/4 v4, 0x6

    move-object/from16 v0, v23

    iput v4, v0, Landroid/os/Message;->what:I

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->getHttpHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    const/4 v4, 0x1

    goto/16 :goto_af

    .line 175
    .end local v23           #msg:Landroid/os/Message;
    .restart local p2
    :catch_161
    move-exception v21

    .line 176
    .local v21, e:Ljava/io/IOException;
    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_126

    .line 187
    .end local v21           #e:Ljava/io/IOException;
    :cond_166
    const-string v4, "PUT"

    if-ne v11, v4, :cond_186

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    const/16 v8, 0x23

    if-ne v4, v8, :cond_186

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v10

    check-cast p2, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getFileName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->enqueueHttpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_148

    .line 192
    .restart local p2
    :cond_186
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v10

    move-object/from16 v8, p1

    move-object v14, v15

    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->enqueueHttpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_148

    .line 203
    .end local v11           #method:Ljava/lang/String;
    .end local v12           #uri:Ljava/lang/String;
    .end local v13           #body:Ljava/lang/Object;
    .end local v15           #httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    .end local v16           #ResultErrorCode:I
    .end local v17           #bComposeFailed:Z
    .end local v18           #composer:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    .end local v19           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    :cond_195
    const-string v4, "SNS_FRAMEWORK"

    const-string v8, "SnsFramework : processRequest() : NOTHING TO SEND"

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v4, 0x0

    goto/16 :goto_af

    .line 130
    .restart local v16       #ResultErrorCode:I
    .restart local v17       #bComposeFailed:Z
    .restart local v18       #composer:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
    .restart local v20       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    :catch_19f
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .restart local v19       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    goto/16 :goto_e3

    .line 124
    .end local v19           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .restart local v20       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    :catch_1a4
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    .restart local v19       #composerFactory:Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFactory;
    goto/16 :goto_2c
.end method

.method public processResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)V
    .registers 16
    .parameter "httpResponse"

    .prologue
    const/16 v13, 0x3e8

    .line 215
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 216
    .local v8, reqType:Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 217
    .local v6, parsedResult:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    const/4 v1, 0x0

    .line 218
    .local v1, content:Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, fwkCode:I
    const/4 v5, 0x0

    .line 222
    .local v5, newResp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getRespType()I

    move-result v10

    if-eqz v10, :cond_34

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response type is innvalid! (respType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getRespType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    .line 226
    :cond_34
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v10

    if-nez v10, :cond_124

    .line 228
    :try_start_3a
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6d

    .line 229
    new-instance v10, Lcom/sec/android/app/sns/exception/SnsParserException;

    const-string v11, "content is null"

    invoke-direct {v10, v11}, Lcom/sec/android/app/sns/exception/SnsParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_48
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_3a .. :try_end_48} :catch_48

    .line 267
    :catch_48
    move-exception v2

    .line 268
    .local v2, e:Lcom/sec/android/app/sns/exception/SnsException;
    const-string v10, "SNS_FRAMEWORK"

    const-string v11, "processPollingResponse() : SnsException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/16 v3, 0xfa2

    .line 272
    .end local v2           #e:Lcom/sec/android/app/sns/exception/SnsException;
    :goto_52
    new-instance v10, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v10}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    invoke-virtual {v10, p1, v6}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v5

    .line 273
    if-eqz v5, :cond_60

    .line 274
    invoke-virtual {v5, v3}, Lcom/sec/android/app/sns/response/data/SnsResponse;->setInternalCode(I)V

    .line 279
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/sec/android/app/sns/framework/SnsFramework;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 280
    .local v4, handler:Landroid/os/Handler;
    const/4 v10, 0x3

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void

    .line 231
    .end local v4           #handler:Landroid/os/Handler;
    :cond_6d
    :try_start_6d
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 234
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z
    :try_end_78
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_6d .. :try_end_78} :catch_48

    move-result v10

    if-eqz v10, :cond_85

    .line 236
    :try_start_7b
    iget-object v10, p0, Lcom/sec/android/app/sns/framework/SnsFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v10, v11, v1, v12}, Lcom/sec/android/app/sns/logging/SnsLogging;->saveLog(Landroid/content/Context;ILjava/lang/Object;I)Z
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_85} :catch_c6
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_7b .. :try_end_85} :catch_48

    .line 244
    :cond_85
    :goto_85
    :try_start_85
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;

    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;-><init>()V

    .line 246
    .local v7, parser:Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;->parse(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11e

    .line 247
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v10

    if-eqz v10, :cond_be

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v13, :cond_cb

    .line 249
    const-string v10, "SNS_FRAMEWORK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "# ParsingFailBody = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_be
    :goto_be
    new-instance v10, Lcom/sec/android/app/sns/exception/SnsParserException;

    const-string v11, "PARSING FAILD"

    invoke-direct {v10, v11}, Lcom/sec/android/app/sns/exception/SnsParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 238
    .end local v7           #parser:Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;
    :catch_c6
    move-exception v2

    .line 239
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 251
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #parser:Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;
    :cond_cb
    const-string v10, "SNS_FRAMEWORK"

    const-string v11, "# ParsingFailBody = [Start :: "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_d2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_ff

    .line 253
    const/4 v9, 0x0

    .line 254
    .local v9, subcontent:Ljava/lang/String;
    const/4 v10, 0x0

    const/16 v11, 0x3e8

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 255
    const-string v10, "SNS_FRAMEWORK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "# "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v10, 0x3e8

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    goto :goto_d2

    .line 258
    .end local v9           #subcontent:Ljava/lang/String;
    :cond_ff
    const-string v10, "SNS_FRAMEWORK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "# "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":: End]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 265
    :cond_11e
    invoke-virtual {v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;->getResultData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    :try_end_121
    .catch Lcom/sec/android/app/sns/exception/SnsException; {:try_start_85 .. :try_end_121} :catch_48

    move-result-object v6

    goto/16 :goto_52

    .line 276
    .end local v7           #parser:Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;
    :cond_124
    new-instance v10, Lcom/sec/android/app/sns/response/SnsResponseFactory;

    invoke-direct {v10}, Lcom/sec/android/app/sns/response/SnsResponseFactory;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/sec/android/app/sns/response/SnsResponseFactory;->createFrameworkResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-result-object v5

    goto/16 :goto_60
.end method
