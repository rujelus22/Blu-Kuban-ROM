.class public Lcom/syncmldstmo/base/smlPim;
.super Ljava/lang/Object;
.source "smlPim.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlApplySyncResult(Ljava/lang/Object;Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;ILjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x1

    const/4 v3, 0x2

    .line 272
    check-cast p0, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 276
    if-nez p1, :cond_9

    .line 361
    :goto_8
    return-void

    .line 279
    :cond_9
    iget v0, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v0, :pswitch_data_a2

    .line 302
    const/4 v0, 0x0

    .line 306
    :goto_f
    if-nez v0, :cond_26

    .line 308
    const-string v0, "itemInfo is null!!"

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_8

    .line 282
    :pswitch_17
    iget-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 286
    :pswitch_1a
    iget-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 290
    :pswitch_1d
    iget-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 294
    :pswitch_20
    iget-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 298
    :pswitch_23
    iget-object v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_f

    .line 312
    :cond_26
    invoke-static {}, Lcom/syncmldstmo/base/smlLib;->smlGetCurrentLocalTime()Ljava/lang/String;

    move-result-object v1

    .line 314
    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncType:I

    .line 316
    if-ne p2, v3, :cond_68

    .line 318
    iput-object p3, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    .line 319
    iput v3, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 320
    iput v3, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 322
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportCachedMap()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 324
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDeleteAllCachedMap()V

    .line 348
    :cond_3f
    :goto_3f
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportSuspendResume()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetSuspending()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 350
    const-string v2, "SyncSuspend. so next sync is set ResumeSync"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 352
    const/16 v2, 0x9

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 353
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncType:I

    .line 354
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v2, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 355
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    iput-object v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    .line 358
    :cond_60
    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastSyncTime:Ljava/lang/String;

    .line 359
    iput p2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncDBResult:I

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->SessionId:I

    goto :goto_8

    .line 327
    :cond_68
    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    if-lez v2, :cond_3f

    .line 329
    iput v5, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    .line 330
    const-string v2, "00000000T000000Z"

    iput-object v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/syncmldstmo/cust/smlDBAdapter;->smlGetSupportCachedMap()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 335
    iget v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    if-ne v2, v3, :cond_3f

    .line 337
    const-string v2, "sync fail. cached map set."

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dbInfo.lastAnchor : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 341
    iget-object v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    iput-object v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    .line 342
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    .line 343
    iget v2, p1, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    iput v2, p0, Lcom/syncmldstmo/database/smlDbProfileInfo;->UISyncType:I

    goto :goto_3f

    .line 279
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public static smlCacheMapItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)V
    .registers 9
    .parameter "dbInfo"

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, cachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    const/4 v1, 0x0

    .line 391
    .local v1, mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    const/4 v3, 0x0

    .line 392
    .local v3, mapList:Lcom/syncmldstmo/base/smlLinkedList;
    const/4 v2, 0x0

    .line 394
    .local v2, mapItemCount:I
    const/high16 v4, 0x1

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    iget-wide v4, v4, Lcom/syncmldstmo/base/smlLinkedList;->m_count:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1a

    .line 420
    :cond_19
    return-void

    .line 400
    :cond_1a
    iget-object v3, p0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->mapList:Lcom/syncmldstmo/base/smlLinkedList;

    .line 403
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 404
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$MapItem_t;

    .line 407
    .restart local v1       #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDeleteAllCachedMap()V

    .line 409
    :goto_29
    if-eqz v1, :cond_19

    .line 411
    new-instance v0, Lcom/syncmldstmo/database/smlDbCachedMap;

    .end local v0           #cachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    invoke-direct {v0}, Lcom/syncmldstmo/database/smlDbCachedMap;-><init>()V

    .line 413
    .restart local v0       #cachedMap:Lcom/syncmldstmo/database/smlDbCachedMap;
    iget-object v4, v1, Lcom/syncmldstmo/base/sml$MapItem_t;->guid:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/database/smlDbCachedMap;->guid:Ljava/lang/String;

    .line 414
    iget-object v4, v1, Lcom/syncmldstmo/base/sml$MapItem_t;->luid:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/database/smlDbCachedMap;->luid:Ljava/lang/String;

    .line 415
    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlInsertCachedMap(Lcom/syncmldstmo/database/smlDbCachedMap;)V

    .line 417
    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    check-cast v1, Lcom/syncmldstmo/base/sml$MapItem_t;

    .line 418
    .restart local v1       #mapItem:Lcom/syncmldstmo/base/sml$MapItem_t;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29
.end method

.method public static smlCreateCachedMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;)V
    .registers 6
    .parameter

    .prologue
    .line 424
    .line 427
    const/high16 v0, 0x1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCachedMapCount()I

    move-result v1

    .line 431
    const/4 v0, 0x0

    :goto_c
    if-lt v0, v1, :cond_f

    .line 439
    return-void

    .line 433
    :cond_f
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlGetCachedMap(I)Lcom/syncmldstmo/database/smlDbCachedMap;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cachedMap.luid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbCachedMap;->luid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cachedMap.guid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/syncmldstmo/database/smlDbCachedMap;->guid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 436
    iget-object v3, v2, Lcom/syncmldstmo/database/smlDbCachedMap;->luid:Ljava/lang/String;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbCachedMap;->guid:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/syncmldstmo/base/smlWorkspace;->wsCreateMap(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static smlGetDataObjType(ILjava/lang/String;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 365
    .line 367
    packed-switch p0, :pswitch_data_18

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid DB ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 383
    :pswitch_16
    return v2

    .line 367
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static smlGetSyncDBInfo(Ljava/lang/Object;Lcom/syncmldstmo/base/smlLinkedList;)I
    .registers 12
    .parameter "userInfo"
    .parameter "list"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 20
    move-object v4, p0

    check-cast v4, Lcom/syncmldstmo/base/smlWorkspace;

    .line 21
    .local v4, ws:Lcom/syncmldstmo/base/smlWorkspace;
    iget-object v2, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_userInfo:Ljava/lang/Object;

    check-cast v2, Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 23
    .local v2, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    const/4 v3, 0x1

    .line 25
    .local v3, rc:I
    const/high16 v6, 0x1

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 28
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 29
    .local v1, itemInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;
    iget-boolean v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v6, :cond_3c

    .line 31
    new-instance v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;-><init>()V

    .line 32
    .local v0, info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    iput v8, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 33
    const-string v6, "./Address"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    .line 34
    iget-object v6, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    .line 35
    const-string v6, "text/x-vcard"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    .line 36
    const-string v6, "text/x-vcard"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->rxPref:Ljava/lang/String;

    .line 37
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    .line 39
    iput v8, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeID:I

    .line 40
    iput v9, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeMem:I

    .line 42
    invoke-virtual {p1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 48
    .end local v0           #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    :cond_3c
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 49
    iget-boolean v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v6, :cond_66

    .line 51
    new-instance v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;-><init>()V

    .line 52
    .restart local v0       #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    iput v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 53
    const-string v6, "./Event"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    .line 54
    iget-object v6, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    .line 55
    const-string v6, "text/x-vcalendar"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    .line 56
    const-string v6, "text/x-vcalendar"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->rxPref:Ljava/lang/String;

    .line 57
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    .line 59
    iput v8, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeID:I

    .line 60
    iput v9, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeMem:I

    .line 62
    invoke-virtual {p1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 111
    .end local v0           #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    :cond_66
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 112
    iget-boolean v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v6, :cond_91

    .line 114
    new-instance v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    invoke-direct {v0}, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;-><init>()V

    .line 115
    .restart local v0       #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    const/4 v6, 0x4

    iput v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    .line 116
    const-string v6, "./Profile"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->source:Ljava/lang/String;

    .line 117
    iget-object v6, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->target:Ljava/lang/String;

    .line 118
    const-string v6, "text/x-vcard"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->txPref:Ljava/lang/String;

    .line 119
    const-string v6, "text/x-vcard"

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->rxPref:Ljava/lang/String;

    .line 120
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->LastAnchor:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    .line 122
    iput v8, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeID:I

    .line 123
    iput v9, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->freeMem:I

    .line 125
    invoke-virtual {p1, v0}, Lcom/syncmldstmo/base/smlLinkedList;->smlAddObjectAtLast(Ljava/lang/Object;)V

    .line 129
    .end local v0           #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    :cond_91
    invoke-virtual {p1, v8}, Lcom/syncmldstmo/base/smlLinkedList;->smlSetCurrentObject(I)V

    .line 130
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .line 131
    .restart local v0       #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    :goto_9a
    if-nez v0, :cond_9d

    .line 197
    :goto_9c
    return v5

    .line 133
    :cond_9d
    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    packed-switch v6, :pswitch_data_104

    .line 156
    :goto_a2
    iget v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_ec

    iget-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->lastAnchor:Ljava/lang/String;

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 158
    iput v5, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    .line 169
    :cond_b1
    :goto_b1
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    .line 170
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    .line 171
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    .line 172
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PTotalItem:I

    .line 174
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    .line 175
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    .line 176
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    .line 177
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2STotalItem:I

    .line 180
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBId:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->userID:Ljava/lang/String;

    .line 181
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBPassWord:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->password:Ljava/lang/String;

    .line 183
    iget-object v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBNextNonce:Ljava/lang/String;

    iput-object v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->nextnonce:Ljava/lang/String;

    .line 184
    iget v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBCredType:I

    iput v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->credType:I

    .line 185
    iput v8, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->ServerSupportFieldLevel:I

    .line 188
    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->id:I

    invoke-static {v6}, Lcom/syncmldstmo/base/smlPim;->smlInitPimDB(I)I

    move-result v3

    .line 189
    if-ne v3, v9, :cond_fc

    move v5, v3

    .line 191
    goto :goto_9c

    .line 136
    :pswitch_dd
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 137
    goto :goto_a2

    .line 140
    :pswitch_e0
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 141
    goto :goto_a2

    .line 144
    :pswitch_e3
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Task_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 145
    goto :goto_a2

    .line 148
    :pswitch_e6
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Memo_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    .line 149
    goto :goto_a2

    .line 152
    :pswitch_e9
    iget-object v1, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    goto :goto_a2

    .line 162
    :cond_ec
    iget v6, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->SyncType:I

    iput v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    .line 163
    iget v6, v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;->syncType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b1

    .line 165
    iget v6, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/syncmldstmo/base/smlWorkspace;->m_nDeleteAllStatus:I

    goto :goto_b1

    .line 194
    :cond_fc
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlLinkedList;->smlGetNextObject()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    check-cast v0, Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;

    .restart local v0       #info:Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;
    goto :goto_9a

    .line 133
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_e0
        :pswitch_e3
        :pswitch_e6
        :pswitch_e9
    .end packed-switch
.end method

.method public static smlInitPimDB(I)I
    .registers 2
    .parameter "dbid"

    .prologue
    .line 202
    const/4 v0, 0x1

    .line 204
    .local v0, rc:I
    packed-switch p0, :pswitch_data_14

    .line 227
    :goto_4
    if-nez v0, :cond_12

    .line 228
    const/4 v0, 0x1

    .line 232
    :goto_7
    return v0

    .line 207
    :pswitch_8
    const/4 v0, 0x0

    .line 208
    goto :goto_4

    .line 211
    :pswitch_a
    const/4 v0, 0x0

    .line 212
    goto :goto_4

    .line 215
    :pswitch_c
    const/4 v0, 0x0

    .line 216
    goto :goto_4

    .line 219
    :pswitch_e
    const/4 v0, 0x0

    .line 220
    goto :goto_4

    .line 223
    :pswitch_10
    const/4 v0, 0x0

    goto :goto_4

    .line 230
    :cond_12
    const/4 v0, -0x1

    goto :goto_7

    .line 204
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method
