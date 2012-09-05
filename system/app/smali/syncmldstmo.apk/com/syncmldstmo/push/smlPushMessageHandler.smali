.class public Lcom/syncmldstmo/push/smlPushMessageHandler;
.super Ljava/lang/Object;
.source "smlPushMessageHandler.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v1, v3, [Lcom/syncmldstmo/push/smlNoti;

    sput-object v1, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    .line 18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v3, :cond_17

    .line 20
    sget-object v1, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    new-instance v2, Lcom/syncmldstmo/push/smlNoti;

    invoke-direct {v2}, Lcom/syncmldstmo/push/smlNoti;-><init>()V

    aput-object v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 22
    :cond_17
    return-void
.end method

.method public static smlpushHdleMessageFree(Lcom/syncmldstmo/push/smlPushMessage;)V
    .registers 2
    .parameter "pObj"

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_4

    .line 33
    :goto_3
    return-void

    .line 29
    :cond_4
    iput-object v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 30
    iput-object v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->pHeader:[B

    .line 31
    iput-object v0, p0, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    .line 32
    const/4 p0, 0x0

    .line 33
    goto :goto_3
.end method

.method public static smlpushHdleParsingSyncNoti([BII)Z
    .registers 14
    .parameter "pPushBody"
    .parameter "bodySize"
    .parameter "nAppId"

    .prologue
    const/16 v10, 0x20

    .line 395
    const/4 v7, 0x0

    .line 396
    .local v7, pNotiMsg:Lcom/syncmldstmo/push/smlNoti;
    const/4 v1, 0x0

    .line 397
    .local v1, NotiHeader:[B
    const/4 v0, 0x0

    .line 398
    .local v0, NotiBody:[B
    const/4 v6, 0x0

    .line 399
    .local v6, nNotiHeaderLen:I
    const/4 v5, 0x0

    .line 400
    .local v5, nNotiBodyLen:I
    const/4 v2, 0x0

    .line 402
    .local v2, bRet:Z
    sget-object v8, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    aget-object v7, v8, p2

    .line 403
    invoke-static {p0, v7}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleParsingSyncNotiDigest([BLcom/syncmldstmo/push/smlNoti;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/syncmldstmo/push/smlNoti;->digestdata:[B

    .line 405
    array-length v8, p0

    add-int/lit8 v8, v8, -0x10

    new-array v1, v8, [B

    .line 407
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    array-length v8, p0

    add-int/lit8 v8, v8, -0x10

    if-ge v3, v8, :cond_26

    .line 409
    add-int/lit8 v8, v3, 0x10

    aget-byte v8, p0, v8

    aput-byte v8, v1, v3

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 412
    :cond_26
    invoke-static {v1, v7}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleParsingSyncNotiHeader([BLcom/syncmldstmo/push/smlNoti;)I

    move-result v6

    .line 414
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bodySize["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], notiHeaderLen["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 415
    if-nez v6, :cond_59

    .line 417
    const-string v8, "nNotiHeaderLen is 0"

    invoke-static {v8}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 418
    const/4 v8, 0x0

    .line 447
    :goto_58
    return v8

    .line 431
    :cond_59
    add-int/lit8 v8, v6, 0x10

    if-ge v8, p1, :cond_aa

    .line 433
    add-int/lit8 v8, v6, 0x10

    sub-int v5, p1, v8

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nNotiBodyLen ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 436
    array-length v8, p0

    add-int/lit8 v9, v6, 0x10

    sub-int v4, v8, v9

    .line 437
    .local v4, nLen:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nLen ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 439
    new-array v0, v4, [B

    .line 440
    const/4 v3, 0x0

    :goto_9b
    if-ge v3, v4, :cond_a7

    .line 442
    add-int/lit8 v8, v6, 0x10

    add-int/2addr v8, v3

    aget-byte v8, p0, v8

    aput-byte v8, v0, v3

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 445
    :cond_a7
    invoke-static {v0, v5, v7}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleParsingSyncNotiBody([BILcom/syncmldstmo/push/smlNoti;)V

    .line 447
    .end local v4           #nLen:I
    :cond_aa
    const/4 v8, 0x1

    goto :goto_58
.end method

.method public static smlpushHdleParsingSyncNotiBody([BILcom/syncmldstmo/push/smlNoti;)V
    .registers 12
    .parameter "pPushBody"
    .parameter "notiBodyLen"
    .parameter "pNotiMsg"

    .prologue
    const/16 v8, 0x20

    .line 342
    new-instance v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;

    invoke-direct {v1}, Lcom/syncmldstmo/push/smlNotiTriggerBody;-><init>()V

    .line 343
    .local v1, NotiBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;
    const/4 v3, 0x0

    .line 344
    .local v3, i:I
    const/4 v0, 0x5

    .line 345
    .local v0, Gap:I
    const/4 v2, 0x0

    .line 348
    .local v2, Pos:I
    if-eqz p0, :cond_133

    .line 350
    iget-object v1, p2, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    .line 351
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    iput v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotiBody.number_Of_Syncs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 354
    iget v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    new-array v5, v5, [Lcom/syncmldstmo/push/smlNotiSyncInfo;

    iput-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    .line 356
    const/4 v3, 0x0

    :goto_34
    iget v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    if-ge v3, v5, :cond_138

    .line 358
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    new-instance v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;

    invoke-direct {v6}, Lcom/syncmldstmo/push/smlNotiSyncInfo;-><init>()V

    aput-object v6, v5, v3

    .line 361
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/lit16 v6, v6, 0xc8

    iput v6, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->syncType:I

    .line 362
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xf0

    iput v6, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->future:I

    .line 363
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, p0, v7

    or-int/2addr v6, v7

    iput v6, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->contentType:I

    .line 364
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, p0, v6

    iput v6, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUriLen:I

    .line 366
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    .line 367
    .local v4, pBody:Ljava/lang/String;
    iget-object v5, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x6

    iget-object v7, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUriLen:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUri:Ljava/lang/String;

    .line 368
    add-int v5, v2, v0

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUriLen:I

    add-int v2, v5, v6

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->syncType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "future = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->future:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->contentType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverUriLen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUriLen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_34

    .line 389
    .end local v4           #pBody:Ljava/lang/String;
    :cond_133
    const-string v5, "pPushBody is null"

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 391
    :cond_138
    return-void
.end method

.method public static smlpushHdleParsingSyncNotiDigest([BLcom/syncmldstmo/push/smlNoti;)[B
    .registers 5
    .parameter "pPushBody"
    .parameter "pNotiMsg"

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, szDigest:[B
    if-eqz p0, :cond_c

    .line 145
    new-array v0, v2, [B

    .line 147
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    :goto_b
    return-object v0

    .line 156
    :cond_c
    const-string v1, "pPushBody is null"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static smlpushHdleParsingSyncNotiHeader([BLcom/syncmldstmo/push/smlNoti;)I
    .registers 16
    .parameter "NotiHeader"
    .parameter "pNotiMsg"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x0

    const/16 v11, 0x20

    const/4 v7, 0x1

    .line 164
    const/4 v4, 0x0

    .line 166
    .local v4, nNotiHeaderLen:I
    if-eqz p0, :cond_172

    .line 168
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    aget-byte v9, p0, v6

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xc0

    or-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x6

    iput v9, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->version:I

    .line 170
    aget-byte v8, p0, v7

    and-int/lit8 v8, v8, 0x30

    shr-int/lit8 v2, v8, 0x4

    .line 171
    .local v2, UiMode:I
    packed-switch v2, :pswitch_data_178

    .line 190
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iput v7, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    .line 194
    :goto_25
    aget-byte v8, p0, v7

    and-int/lit8 v8, v8, 0x8

    shr-int/lit8 v0, v8, 0x3

    .line 195
    .local v0, Initiator:I
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    if-lez v0, :cond_30

    move v6, v7

    :cond_30
    iput v6, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->initiator:I

    .line 197
    iget-object v6, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x7

    aget-byte v8, p0, v12

    or-int/2addr v7, v8

    aget-byte v8, p0, v13

    or-int/2addr v7, v8

    const/4 v8, 0x4

    aget-byte v8, p0, v8

    or-int/2addr v7, v8

    iput v7, v6, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->future:I

    .line 198
    iget-object v6, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    const/4 v7, 0x5

    aget-byte v7, p0, v7

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x6

    aget-byte v8, p0, v8

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->sessionID:I

    .line 199
    iget-object v6, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    iput v7, v6, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->lenServerID:I

    .line 201
    add-int/lit8 v4, v4, 0x8

    .line 203
    const/4 v6, 0x7

    aget-byte v5, p0, v6

    .line 204
    .local v5, nServerIdLen:I
    new-array v1, v5, [B

    .line 206
    .local v1, ServerId:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_62
    if-ge v3, v5, :cond_82

    .line 208
    add-int/lit8 v6, v3, 0x8

    aget-byte v6, p0, v6

    aput-byte v6, v1, v3

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 174
    .end local v0           #Initiator:I
    .end local v1           #ServerId:[B
    .end local v3           #i:I
    .end local v5           #nServerIdLen:I
    :pswitch_6d
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iput v7, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    goto :goto_25

    .line 178
    :pswitch_72
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iput v12, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    goto :goto_25

    .line 182
    :pswitch_77
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iput v13, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    goto :goto_25

    .line 186
    :pswitch_7c
    iget-object v8, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    const/4 v9, 0x4

    iput v9, v8, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    goto :goto_25

    .line 210
    .restart local v0       #Initiator:I
    .restart local v1       #ServerId:[B
    .restart local v3       #i:I
    .restart local v5       #nServerIdLen:I
    :cond_82
    iget-object v6, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v6, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    .line 212
    iget-object v6, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v6, v6, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->lenServerID:I

    add-int/lit8 v4, v6, 0x8

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uiMode\t["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->uiMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initiator ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->initiator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "future\t["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->future:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->sessionID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lenServerID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->lenServerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pServerID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iget-object v7, v7, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 227
    .end local v0           #Initiator:I
    .end local v1           #ServerId:[B
    .end local v2           #UiMode:I
    .end local v3           #i:I
    .end local v5           #nServerIdLen:I
    :goto_171
    return v4

    .line 224
    :cond_172
    const-string v6, "NotiHeader is null"

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_171

    .line 171
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_72
        :pswitch_77
        :pswitch_7c
    .end packed-switch
.end method

.method public static smlpushHdleWSPHeader([BI)I
    .registers 6
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, lenWSP:I
    const/4 v0, 0x0

    .line 91
    .local v0, LenHeader:I
    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    .line 93
    const/4 v2, 0x2

    aget-byte v1, p0, v2

    .line 94
    add-int/lit8 v0, v1, 0x3

    .line 96
    if-ge v0, p1, :cond_13

    move v2, v0

    .line 101
    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static smlpushHdlrParsingWSPHeader([BI)Lcom/syncmldstmo/push/smlWapPush;
    .registers 28
    .parameter "szMsg"
    .parameter "nMsgLen"

    .prologue
    .line 521
    const/16 v17, 0x0

    .line 522
    .local v17, ptMsg:Lcom/syncmldstmo/push/smlWapPush;
    const/4 v13, 0x0

    .line 523
    .local v13, nLoc:I
    const/4 v8, 0x0

    .line 526
    .local v8, byteValue:I
    const/4 v13, 0x1

    .line 527
    aget-byte v20, p0, v13

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    .line 528
    const/16 v20, 0x6

    move/from16 v0, v20

    if-eq v8, v0, :cond_2c

    .line 530
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Not Support PDU Type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 531
    const/16 v20, 0x0

    .line 744
    :goto_2b
    return-object v20

    .line 534
    :cond_2c
    new-instance v17, Lcom/syncmldstmo/push/smlWapPush;

    .end local v17           #ptMsg:Lcom/syncmldstmo/push/smlWapPush;
    invoke-direct/range {v17 .. v17}, Lcom/syncmldstmo/push/smlWapPush;-><init>()V

    .line 535
    .restart local v17       #ptMsg:Lcom/syncmldstmo/push/smlWapPush;
    if-nez v17, :cond_3b

    .line 537
    const-string v20, "ptMsg Alloc Fail!"

    invoke-static/range {v20 .. v20}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 538
    const/16 v20, 0x0

    goto :goto_2b

    .line 541
    :cond_3b
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WAP Push Msg Len ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 543
    const/4 v13, 0x2

    .line 545
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    aget-byte v21, p0, v13

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nHeaderLen:I

    .line 546
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WAP Push Header Len = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nHeaderLen:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 548
    add-int/lit8 v13, v13, 0x1

    .line 549
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nLoc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-byte v22, p0, v13

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 551
    aget-byte v20, p0, v13

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    .line 552
    const/16 v20, 0x1f

    move/from16 v0, v20

    if-ne v8, v0, :cond_ca

    .line 554
    add-int/lit8 v13, v13, 0x2

    .line 556
    :cond_ca
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nLoc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-byte v22, p0, v13

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 558
    aget-byte v20, p0, v13

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    .line 560
    const/16 v20, 0x20

    move/from16 v0, v20

    if-lt v8, v0, :cond_213

    const/16 v20, 0x80

    move/from16 v0, v20

    if-ge v8, v0, :cond_213

    .line 562
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nLoc ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 564
    const/16 v16, 0x0

    .line 566
    .local v16, nMimeLen:I
    :goto_128
    add-int v20, v13, v16

    aget-byte v20, p0, v20

    if-eqz v20, :cond_131

    .line 568
    add-int/lit8 v16, v16, 0x1

    goto :goto_128

    .line 571
    :cond_131
    move/from16 v0, v16

    new-array v6, v0, [B

    .line 573
    .local v6, Mime:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_136
    move/from16 v0, v16

    if-ge v9, v0, :cond_143

    .line 575
    add-int v20, v13, v9

    aget-byte v20, p0, v20

    aput-byte v20, v6, v9

    .line 573
    add-int/lit8 v9, v9, 0x1

    goto :goto_136

    .line 578
    :cond_143
    add-int v13, v13, v16

    .line 580
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 582
    .local v19, szMime:Ljava/lang/String;
    const-string v20, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1ac

    .line 584
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x36

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    .line 608
    :goto_162
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content Type = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 610
    add-int/lit8 v13, v13, 0x1

    .line 640
    .end local v6           #Mime:[B
    .end local v9           #i:I
    .end local v16           #nMimeLen:I
    .end local v19           #szMime:Ljava/lang/String;
    :goto_188
    aget-byte v20, p0, v13

    if-nez v20, :cond_18e

    .line 642
    add-int/lit8 v13, v13, 0x1

    .line 647
    :cond_18e
    const-string v20, "SEC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 648
    .local v7, a:[B
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_199
    const-string v20, "SEC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_2e5

    .line 650
    add-int v20, v13, v9

    aget-byte v20, p0, v20

    aput-byte v20, v7, v9

    .line 648
    add-int/lit8 v9, v9, 0x1

    goto :goto_199

    .line 586
    .end local v7           #a:[B
    .restart local v6       #Mime:[B
    .restart local v16       #nMimeLen:I
    .restart local v19       #szMime:Ljava/lang/String;
    :cond_1ac
    const-string v20, "application/vnd.wap.connectivity-xml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c3

    .line 588
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x35

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    goto :goto_162

    .line 590
    :cond_1c3
    const-string v20, "application/vnd.syncml.notification"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1da

    .line 592
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x44

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    goto :goto_162

    .line 594
    :cond_1da
    const-string v20, "application/vnd.syncml.ds.notification"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f2

    .line 596
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x4e

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    goto/16 :goto_162

    .line 598
    :cond_1f2
    const-string v20, "application/vnd.syncml.dm+wbxml"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20a

    .line 600
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x42

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    goto/16 :goto_162

    .line 604
    :cond_20a
    const-string v20, "Not Support Content Type"

    invoke-static/range {v20 .. v20}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 605
    const/16 v20, 0x0

    goto/16 :goto_2b

    .line 614
    .end local v6           #Mime:[B
    .end local v9           #i:I
    .end local v16           #nMimeLen:I
    .end local v19           #szMime:Ljava/lang/String;
    :cond_213
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content Value ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-byte v22, p0, v13

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "], Mask Value ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x3

    aget-byte v22, p0, v22

    and-int/lit8 v22, v22, 0x7f

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 616
    aget-byte v20, p0, v13

    and-int/lit8 v8, v20, 0x7f

    .line 617
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v8, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    .line 619
    const/16 v20, 0x36

    move/from16 v0, v20

    if-ne v8, v0, :cond_2a4

    .line 620
    const/16 v20, 0x20

    const-string v21, "Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_WBXML"

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 635
    :goto_266
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content Type = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%x"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nContentType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 637
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_188

    .line 621
    :cond_2a4
    const/16 v20, 0x35

    move/from16 v0, v20

    if-ne v8, v0, :cond_2b2

    .line 622
    const/16 v20, 0x20

    const-string v21, "Content Type: SML_MIME_TYPE_CODE_WAP_CONNECTIVITY_XML"

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_266

    .line 623
    :cond_2b2
    const/16 v20, 0x44

    move/from16 v0, v20

    if-ne v8, v0, :cond_2c0

    .line 624
    const/16 v20, 0x20

    const-string v21, "Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_NOTI"

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_266

    .line 625
    :cond_2c0
    const/16 v20, 0x4e

    move/from16 v0, v20

    if-ne v8, v0, :cond_2ce

    .line 626
    const/16 v20, 0x20

    const-string v21, "Content Type: SML_MIME_TYPE_CODE_SYNCML_DS_NOTI"

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_266

    .line 627
    :cond_2ce
    const/16 v20, 0x42

    move/from16 v0, v20

    if-ne v8, v0, :cond_2dc

    .line 628
    const/16 v20, 0x20

    const-string v21, "Content Type: SML_MIME_TYPE_CODE_SYNCML_DM_WBXML"

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_266

    .line 631
    :cond_2dc
    const-string v20, "Not Support Content Type"

    invoke-static/range {v20 .. v20}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 632
    const/16 v20, 0x0

    goto/16 :goto_2b

    .line 652
    .restart local v7       #a:[B
    .restart local v9       #i:I
    :cond_2e5
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 655
    .local v18, secStr:Ljava/lang/String;
    aget-byte v20, p0, v13

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    const/16 v20, 0x91

    move/from16 v0, v20

    if-ne v8, v0, :cond_352

    .line 657
    add-int/lit8 v13, v13, 0x1

    .line 658
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    aget-byte v21, p0, v13

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nSEC:I

    .line 659
    add-int/lit8 v13, v13, 0x1

    .line 670
    :cond_310
    :goto_310
    aget-byte v20, p0, v13

    if-nez v20, :cond_316

    .line 672
    add-int/lit8 v13, v13, 0x1

    .line 675
    :cond_316
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "szMsg[nLoc]="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-byte v22, p0, v13

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 676
    const-string v20, "MAC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    new-array v15, v0, [B

    .line 677
    .local v15, nMac:[B
    const/4 v9, 0x0

    :goto_33f
    const-string v20, "MAC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_39e

    .line 679
    add-int v20, v13, v9

    aget-byte v20, p0, v20

    aput-byte v20, v15, v9

    .line 677
    add-int/lit8 v9, v9, 0x1

    goto :goto_33f

    .line 661
    .end local v15           #nMac:[B
    :cond_352
    const-string v20, "SEC"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_310

    .line 663
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SEC= "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 664
    const-string v20, "SEC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v13

    add-int/lit8 v13, v20, 0x1

    .line 665
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    aget-byte v21, p0, v13

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nSEC:I

    .line 666
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_310

    .line 681
    .restart local v15       #nMac:[B
    :cond_39e
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>([B)V

    .line 684
    .local v4, MacStr:Ljava/lang/String;
    aget-byte v20, p0, v13

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    const/16 v20, 0x92

    move/from16 v0, v20

    if-ne v8, v0, :cond_473

    .line 687
    const/4 v9, 0x0

    const/4 v2, 0x0

    .local v2, Loc:I
    const/4 v10, 0x0

    .line 688
    .local v10, j:I
    add-int/lit8 v13, v13, 0x1

    .line 689
    move v2, v13

    .line 690
    :goto_3b5
    add-int/lit8 v14, v13, 0x1

    .end local v13           #nLoc:I
    .local v14, nLoc:I
    aget-byte v20, p0, v13

    if-eqz v20, :cond_3bf

    .line 692
    add-int/lit8 v9, v9, 0x1

    move v13, v14

    .end local v14           #nLoc:I
    .restart local v13       #nLoc:I
    goto :goto_3b5

    .line 694
    .end local v13           #nLoc:I
    .restart local v14       #nLoc:I
    :cond_3bf
    new-array v5, v9, [B

    .line 695
    .local v5, MacValue:[B
    :goto_3c1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #Loc:I
    .local v3, Loc:I
    aget-byte v11, p0, v2

    .local v11, msg:B
    if-eqz v11, :cond_3cd

    .line 697
    aput-byte v11, v5, v10

    .line 698
    add-int/lit8 v10, v10, 0x1

    move v2, v3

    .end local v3           #Loc:I
    .restart local v2       #Loc:I
    goto :goto_3c1

    .line 701
    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    :cond_3cd
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nMACLen:I

    .line 702
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->szMAC:[B

    .line 704
    add-int/lit8 v13, v14, 0x1

    .line 731
    .end local v3           #Loc:I
    .end local v5           #MacValue:[B
    .end local v10           #j:I
    .end local v11           #msg:B
    .end local v14           #nLoc:I
    .restart local v13       #nLoc:I
    :cond_3e8
    :goto_3e8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nHeaderLen:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nBodyLen:I

    .line 733
    const/16 v20, 0x20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Body length : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nBodyLen:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 735
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nHeaderLen:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x2

    add-int/lit8 v13, v20, 0x1

    .line 738
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nBodyLen:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/syncmldstmo/push/smlWapPush;->pBody:[B

    .line 739
    const/4 v12, 0x0

    .local v12, n:I
    :goto_453
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->nBodyLen:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v12, v0, :cond_4d8

    .line 741
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->pBody:[B

    move-object/from16 v20, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13           #nLoc:I
    .restart local v14       #nLoc:I
    aget-byte v21, p0, v13

    aput-byte v21, v20, v12

    .line 739
    add-int/lit8 v12, v12, 0x1

    move v13, v14

    .end local v14           #nLoc:I
    .restart local v13       #nLoc:I
    goto :goto_453

    .line 706
    .end local v12           #n:I
    :cond_473
    const-string v20, "MAC"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3e8

    .line 708
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MAC = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 710
    const/4 v9, 0x0

    const/4 v2, 0x0

    .restart local v2       #Loc:I
    const/4 v10, 0x0

    .line 711
    .restart local v10       #j:I
    const-string v20, "MAC"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v13

    add-int/lit8 v13, v20, 0x1

    .line 713
    move v2, v13

    .line 714
    :goto_4a3
    add-int/lit8 v14, v13, 0x1

    .end local v13           #nLoc:I
    .restart local v14       #nLoc:I
    aget-byte v20, p0, v13

    if-eqz v20, :cond_4ad

    .line 716
    add-int/lit8 v9, v9, 0x1

    move v13, v14

    .end local v14           #nLoc:I
    .restart local v13       #nLoc:I
    goto :goto_4a3

    .line 718
    .end local v13           #nLoc:I
    .restart local v14       #nLoc:I
    :cond_4ad
    new-array v5, v9, [B

    .line 719
    .restart local v5       #MacValue:[B
    :goto_4af
    add-int/lit8 v3, v2, 0x1

    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    aget-byte v11, p0, v2

    .restart local v11       #msg:B
    if-eqz v11, :cond_4bb

    .line 721
    aput-byte v11, v5, v10

    .line 722
    add-int/lit8 v10, v10, 0x1

    move v2, v3

    .end local v3           #Loc:I
    .restart local v2       #Loc:I
    goto :goto_4af

    .line 725
    .end local v2           #Loc:I
    .restart local v3       #Loc:I
    :cond_4bb
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/syncmldstmo/push/smlWapPushInfo;->nMACLen:I

    .line 726
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/syncmldstmo/push/smlWapPush;->tWapPushInfo:Lcom/syncmldstmo/push/smlWapPushInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v5, v0, Lcom/syncmldstmo/push/smlWapPushInfo;->szMAC:[B

    .line 728
    add-int/lit8 v13, v14, 0x1

    .end local v14           #nLoc:I
    .restart local v13       #nLoc:I
    goto/16 :goto_3e8

    .end local v3           #Loc:I
    .end local v5           #MacValue:[B
    .end local v10           #j:I
    .end local v11           #msg:B
    .restart local v12       #n:I
    :cond_4d8
    move-object/from16 v20, v17

    .line 744
    goto/16 :goto_2b
.end method


# virtual methods
.method public smlpushHdleFreeNotiMsg(Lcom/syncmldstmo/push/smlNoti;)V
    .registers 5
    .parameter "pNotiMsg"

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_9

    .line 65
    const-string v1, "pNotiMsg is NULL"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 84
    :goto_8
    return-void

    .line 69
    :cond_9
    iget-object v1, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    if-eqz v1, :cond_13

    .line 71
    iget-object v1, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    iput-object v2, v1, Lcom/syncmldstmo/push/smlNotiTriggerHeader;->pServerID:Ljava/lang/String;

    .line 72
    iput-object v2, p1, Lcom/syncmldstmo/push/smlNoti;->triggerHeader:Lcom/syncmldstmo/push/smlNotiTriggerHeader;

    .line 75
    :cond_13
    iget-object v1, p1, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    if-eqz v1, :cond_2b

    .line 77
    const/4 v0, 0x0

    .local v0, nCount:I
    :goto_18
    iget-object v1, p1, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    iget v1, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->number_Of_Syncs:I

    if-ge v0, v1, :cond_29

    .line 79
    iget-object v1, p1, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    iget-object v1, v1, Lcom/syncmldstmo/push/smlNotiTriggerBody;->syncInfo:[Lcom/syncmldstmo/push/smlNotiSyncInfo;

    aget-object v1, v1, v0

    iput-object v2, v1, Lcom/syncmldstmo/push/smlNotiSyncInfo;->serverUri:Ljava/lang/String;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 81
    :cond_29
    iput-object v2, p1, Lcom/syncmldstmo/push/smlNoti;->triggerBody:Lcom/syncmldstmo/push/smlNotiTriggerBody;

    .line 83
    .end local v0           #nCount:I
    :cond_2b
    const/4 p1, 0x0

    .line 84
    goto :goto_8
.end method

.method public smlpushHdleMessageCopy(Ljava/lang/Object;)Lcom/syncmldstmo/push/smlPushMessage;
    .registers 5
    .parameter "source"

    .prologue
    .line 37
    move-object v1, p1

    check-cast v1, Lcom/syncmldstmo/push/smlPushMessage;

    .line 38
    .local v1, pSrc:Lcom/syncmldstmo/push/smlPushMessage;
    new-instance v0, Lcom/syncmldstmo/push/smlPushMessage;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlPushMessage;-><init>()V

    .line 40
    .local v0, pDst:Lcom/syncmldstmo/push/smlPushMessage;
    iget-object v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    if-eqz v2, :cond_2f

    .line 42
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 43
    iget-object v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    iput-object v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 44
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    .line 52
    :cond_1a
    :goto_1a
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    .line 53
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    .line 54
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->push_type:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->push_type:I

    .line 55
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->push_status:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->push_status:I

    .line 56
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    iput v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 58
    return-object v0

    .line 46
    :cond_2f
    iget-object v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    if-eqz v2, :cond_1a

    .line 48
    iget v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 49
    iget-object v2, v1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    iput-object v2, v0, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    goto :goto_1a
.end method

.method public smlpushHdleMsgHandler(Lcom/syncmldstmo/push/smlPushMessage;)Lcom/syncmldstmo/push/smlNoti;
    .registers 7
    .parameter "pPushMsg"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 106
    new-instance v0, Lcom/syncmldstmo/push/smlNoti;

    invoke-direct {v0}, Lcom/syncmldstmo/push/smlNoti;-><init>()V

    .line 108
    .local v0, ptMsg:Lcom/syncmldstmo/push/smlNoti;
    iget v1, p1, Lcom/syncmldstmo/push/smlPushMessage;->push_type:I

    packed-switch v1, :pswitch_data_3e

    .line 131
    const-string v1, "Not Support Push Type"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 134
    :goto_13
    invoke-static {p1}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleMessageFree(Lcom/syncmldstmo/push/smlPushMessage;)V

    .line 136
    return-object v0

    .line 111
    :pswitch_17
    iput v2, p1, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 112
    iput v3, p1, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    .line 113
    const-string v1, "SYNCML_MIME_CONTENT_TYPE_DS "

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleNotiMsgHandler(Lcom/syncmldstmo/push/smlPushMessage;)Lcom/syncmldstmo/push/smlNoti;

    move-result-object v0

    .line 115
    goto :goto_13

    .line 118
    :pswitch_25
    iput v3, p1, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 119
    iput v2, p1, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    .line 120
    const-string v1, "SYNCML_MIME_CONTENT_TYPE_DM "

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleNotiMsgHandler(Lcom/syncmldstmo/push/smlPushMessage;)Lcom/syncmldstmo/push/smlNoti;

    move-result-object v0

    .line 122
    goto :goto_13

    .line 125
    :pswitch_33
    iput v3, p1, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 126
    iput v2, p1, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    .line 127
    const-string v1, "SYNCML_MIME_CONTENT_TYPE_DM "

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_13

    .line 108
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_17
        :pswitch_33
    .end packed-switch
.end method

.method public smlpushHdleNotiMsgHandler(Lcom/syncmldstmo/push/smlPushMessage;)Lcom/syncmldstmo/push/smlNoti;
    .registers 15
    .parameter "pPushMsg"

    .prologue
    const/4 v9, 0x0

    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, appId:I
    const/4 v3, 0x0

    .line 455
    .local v3, bRet:Z
    if-nez p1, :cond_b

    .line 457
    const-string v10, "pPushMsg is NULL"

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 516
    :goto_a
    return-object v9

    .line 461
    :cond_b
    iget v2, p1, Lcom/syncmldstmo/push/smlPushMessage;->appId:I

    .line 462
    sget-object v10, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    aget-object v10, v10, v2

    iput v2, v10, Lcom/syncmldstmo/push/smlNoti;->appId:I

    .line 463
    sget-object v10, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    aget-object v10, v10, v2

    iget v11, p1, Lcom/syncmldstmo/push/smlPushMessage;->mime_type:I

    iput v11, v10, Lcom/syncmldstmo/push/smlNoti;->mimeType:I

    .line 465
    const/16 v10, 0x20

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pHeader["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/syncmldstmo/push/smlPushMessage;->pHeader:[B

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pBody["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "],"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pData["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 469
    iget-object v10, p1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    if-eqz v10, :cond_b9

    .line 471
    iget-object v10, p1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    const/4 v11, 0x0

    aget-byte v4, v10, v11

    .line 472
    .local v4, data:B
    if-eqz v4, :cond_b3

    .line 474
    iget v10, p1, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    new-array v8, v10, [B

    .line 475
    .local v8, ptrPushData:[B
    const/4 v1, 0x0

    .line 476
    .local v1, PushDataLength:I
    const/4 v0, 0x0

    .line 478
    .local v0, LenHeader:I
    iget-object v8, p1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 479
    iget v1, p1, Lcom/syncmldstmo/push/smlPushMessage;->dataSize:I

    .line 481
    invoke-static {v8, v1}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleWSPHeader([BI)I

    move-result v0

    .line 482
    const/4 v10, -0x1

    if-eq v0, v10, :cond_a0

    .line 484
    sub-int v6, v1, v0

    .line 485
    .local v6, len:I
    new-array v7, v6, [B

    .line 487
    .local v7, ptrPushBody:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8c
    if-ge v5, v6, :cond_97

    .line 489
    add-int v10, v0, v5

    aget-byte v10, v8, v10

    aput-byte v10, v7, v5

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 491
    :cond_97
    sub-int/2addr v1, v0

    .line 493
    iput-object v9, p1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    .line 494
    iput v6, p1, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    .line 495
    iput-object v7, p1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    .line 496
    iput-object v9, p1, Lcom/syncmldstmo/push/smlPushMessage;->pData:[B

    .line 509
    .end local v0           #LenHeader:I
    .end local v1           #PushDataLength:I
    .end local v4           #data:B
    .end local v5           #i:I
    .end local v6           #len:I
    .end local v7           #ptrPushBody:[B
    .end local v8           #ptrPushData:[B
    :cond_a0
    :goto_a0
    iget-object v10, p1, Lcom/syncmldstmo/push/smlPushMessage;->pBody:[B

    iget v11, p1, Lcom/syncmldstmo/push/smlPushMessage;->bodySize:I

    invoke-static {v10, v11, v2}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleParsingSyncNoti([BII)Z

    move-result v3

    .line 510
    if-nez v3, :cond_bf

    .line 512
    sget-object v10, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    aget-object v10, v10, v2

    invoke-virtual {p0, v10}, Lcom/syncmldstmo/push/smlPushMessageHandler;->smlpushHdleFreeNotiMsg(Lcom/syncmldstmo/push/smlNoti;)V

    goto/16 :goto_a

    .line 501
    .restart local v4       #data:B
    :cond_b3
    const-string v10, "pPushMsg.pData[0] is 0"

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_a0

    .line 506
    .end local v4           #data:B
    :cond_b9
    const-string v10, "pPushMsg.pData is NULL"

    invoke-static {v10}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_a0

    .line 516
    :cond_bf
    sget-object v9, Lcom/syncmldstmo/push/smlPushMessageHandler;->g_tNotiMsg:[Lcom/syncmldstmo/push/smlNoti;

    aget-object v9, v9, v2

    goto/16 :goto_a
.end method
