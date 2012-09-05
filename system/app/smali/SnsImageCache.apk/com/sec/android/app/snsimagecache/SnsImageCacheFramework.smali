.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
.super Ljava/lang/Object;
.source "SnsImageCacheFramework.java"


# static fields
.field private static mCacheHitCount:I

.field private static mCacheHitRatio:F

.field private static mID:I


# instance fields
.field private final IMAGE_GET_HTTP_SLOT_MAX:I

.field private final TEMPORARY_DIR_TO_DELETE:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->IMAGE_GET_HTTP_SLOT_MAX:I

    .line 60
    const-string v0, "To_Be_Deleted_"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->TEMPORARY_DIR_TO_DELETE:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    return-void
.end method

.method private appendReqIdOnSendUrlMap(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)I
    .registers 5
    .parameter "req"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 397
    .local v0, idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_2c

    .line 398
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 405
    .restart local v0       #idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_13
    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    :goto_2b
    return v1

    .line 400
    :cond_2c
    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 401
    const/4 v1, -0x1

    goto :goto_2b
.end method

.method private findRequestByID(I)Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    .registers 5
    .parameter "id"

    .prologue
    .line 430
    iget-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    .line 431
    .local v1, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 435
    .end local v1           #req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private findRequestsIdByAppId(I)Ljava/util/ArrayList;
    .registers 6
    .parameter "appId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v2, reqIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    .line 443
    .local v1, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    invoke-virtual {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getAppID()I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 444
    invoke-virtual {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 447
    .end local v1           #req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    :cond_29
    return-object v2
.end method

.method private getFirstWaitRequest()Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    .registers 6

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, nCount:I
    iget-object v3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    .line 419
    .local v2, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    add-int/lit8 v1, v1, 0x1

    .line 420
    const/16 v3, 0xa

    if-gt v1, v3, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getReqStatus()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_7

    .line 425
    .end local v2           #req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    :goto_20
    return-object v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method private getReqIDsFromSendUrlMap(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private identicalReqIsOnSending(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)Z
    .registers 6
    .parameter "req"

    .prologue
    const/4 v1, 0x1

    .line 386
    iget-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 387
    .local v0, idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_16

    .line 391
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private insertReceivedPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 26
    .parameter "url"
    .parameter "fileName"

    .prologue
    .line 487
    const/4 v10, 0x0

    .line 488
    .local v10, bCheckMaxFailed:Z
    const/4 v12, 0x0

    .line 489
    .local v12, curTime:Ljava/lang/Long;
    const/16 v21, 0x0

    .line 490
    .local v21, resultUri:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ReceivedFiles"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, absPath:Ljava/lang/String;
    const-string v20, "content://com.sec.android.app.provider.snsimagecache/received_image/open/"

    .line 494
    .local v20, preresultUri:Ljava/lang/String;
    const-string v1, "content://com.sec.android.app.provider.snsimagecache/received_image/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 498
    .local v2, contentUri:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/snsimagecache/SnsImageCacheDBHelper;->getLATMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v19

    .line 499
    .local v19, latMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 500
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 503
    .local v9, accessFileNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_3f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v22, whereString:Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 505
    .local v8, accessFileName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, "file_name"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, "="

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v13, cv:Landroid/content/ContentValues;
    const-string v3, "last_access_time"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v13, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_97} :catch_98

    goto :goto_48

    .line 518
    .end local v8           #accessFileName:Ljava/lang/String;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #whereString:Ljava/lang/StringBuilder;
    :catch_98
    move-exception v15

    .line 519
    .local v15, e:Ljava/lang/Exception;
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v3, "insertReceivedPhoto : Exception occurred"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v9           #accessFileNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15           #e:Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "file_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "last_access_time ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 527
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_12e

    .line 529
    :try_start_bf
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 531
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1ba

    .line 532
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 542
    .local v14, deletedItemCount:I
    if-gtz v14, :cond_18f

    .line 544
    new-instance v16, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 546
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 548
    :cond_11c
    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Received Photo Max Reached !!!"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_124
    .catchall {:try_start_bf .. :try_end_124} :catchall_1bf
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_124} :catch_124

    .line 562
    .end local v14           #deletedItemCount:I
    .end local v16           #file:Ljava/io/File;
    :catch_124
    move-exception v15

    .line 563
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_125
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_1bf

    .line 564
    const/16 v21, 0x0

    .line 565
    const/4 v10, 0x1

    .line 567
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 571
    .end local v15           #e:Ljava/lang/Exception;
    :cond_12e
    :goto_12e
    if-nez v10, :cond_183

    .line 573
    :try_start_130
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v1, "file_name"

    move-object/from16 v0, p2

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 577
    const-string v1, "last_access_time"

    invoke-virtual {v13, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 581
    .local v18, insertionResult:Landroid/net/Uri;
    if-nez v18, :cond_1c4

    .line 583
    new-instance v16, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v16       #file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_181

    .line 585
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_181} :catch_1da

    .line 587
    :cond_181
    const/16 v21, 0x0

    .line 597
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v16           #file:Ljava/io/File;
    .end local v18           #insertionResult:Landroid/net/Uri;
    :cond_183
    :goto_183
    if-eqz v21, :cond_1e1

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_189
    return-object v1

    .line 517
    .end local v11           #c:Landroid/database/Cursor;
    .restart local v9       #accessFileNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v22       #whereString:Ljava/lang/StringBuilder;
    :cond_18a
    :try_start_18a
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_98

    goto/16 :goto_a0

    .line 552
    .end local v9           #accessFileNameSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v22           #whereString:Ljava/lang/StringBuilder;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v14       #deletedItemCount:I
    :cond_18f
    :try_start_18f
    new-instance v16, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "file_name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .restart local v16       #file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 558
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_1ba
    .catchall {:try_start_18f .. :try_end_1ba} :catchall_1bf
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1ba} :catch_124

    .line 567
    .end local v14           #deletedItemCount:I
    .end local v16           #file:Ljava/io/File;
    :cond_1ba
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12e

    :catchall_1bf
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    .line 589
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v18       #insertionResult:Landroid/net/Uri;
    :cond_1c4
    :try_start_1c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1d8} :catch_1da

    move-result-object v21

    goto :goto_183

    .line 591
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v18           #insertionResult:Landroid/net/Uri;
    :catch_1da
    move-exception v15

    .line 592
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 593
    const/16 v21, 0x0

    goto :goto_183

    .line 597
    .end local v15           #e:Ljava/lang/Exception;
    :cond_1e1
    const/4 v1, 0x0

    goto :goto_189
.end method

.method private searchReceivedPhoto(Ljava/lang/String;)Landroid/net/Uri;
    .registers 12
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 452
    const/4 v6, 0x1

    .line 453
    .local v6, bSuccess:Z
    const-string v9, "content://com.sec.android.app.provider.snsimagecache/received_image/open/"

    .line 455
    .local v9, resultUri:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.provider.snsimagecache/received_image/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, contentUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "file_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_58

    .line 465
    :try_start_36
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5f

    .line 466
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_54} :catch_61

    move-result-object v9

    .line 475
    :goto_55
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_58
    :goto_58
    if-eqz v6, :cond_5e

    .line 480
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 482
    :cond_5e
    return-object v4

    .line 469
    :cond_5f
    const/4 v6, 0x0

    goto :goto_55

    .line 471
    :catch_61
    move-exception v8

    .line 472
    .local v8, e:Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6a

    .line 473
    const/4 v6, 0x0

    .line 475
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_6a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public abortAllImageReqsByAppID(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;I)Z
    .registers 7
    .parameter "httpMgr"
    .parameter "appID"

    .prologue
    .line 134
    invoke-direct {p0, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->findRequestsIdByAppId(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 135
    .local v2, reqIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 136
    const/4 v3, 0x0

    .line 143
    :goto_b
    return v3

    .line 139
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    .local v1, reqID:I
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->abortImageReqByRequestId(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;II)Z

    goto :goto_10

    .line 143
    .end local v1           #reqID:I
    :cond_24
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public abortImageReqByRequestId(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;II)Z
    .registers 13
    .parameter "httpMgr"
    .parameter "appID"
    .parameter "reqID"

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->findRequestByID(I)Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v8

    .line 108
    .local v8, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    if-eqz v8, :cond_30

    .line 110
    invoke-virtual {v8}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getAppID()I

    move-result v1

    if-ne v1, p2, :cond_30

    .line 111
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    const-string v6, "Aborted By User"

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;-><init>(IIZLandroid/net/Uri;ILjava/lang/String;)V

    .line 114
    .local v0, cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-virtual {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 115
    .local v7, hdr:Landroid/os/Handler;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->newDeliverResponseRunnable(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->abortRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;I)Z

    move-result v3

    .line 122
    .end local v0           #cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    .end local v7           #hdr:Landroid/os/Handler;
    :cond_30
    return v3
.end method

.method public abortRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;I)Z
    .registers 12
    .parameter "httpMgr"
    .parameter "reqID"

    .prologue
    const/4 v7, 0x1

    .line 155
    invoke-direct {p0, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->findRequestByID(I)Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v3

    .line 156
    .local v3, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    if-eqz v3, :cond_7a

    .line 159
    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getReqStatus()I

    move-result v4

    .line 160
    .local v4, reqStatus:I
    const/4 v6, 0x4

    if-lt v4, v6, :cond_54

    .line 162
    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 163
    .local v1, idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, v7, :cond_41

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 165
    .local v2, identicalReqID:I
    invoke-direct {p0, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->findRequestByID(I)Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v5

    .line 166
    .local v5, targetReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    if-eqz v5, :cond_26

    .line 167
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setReqStatus(I)V

    goto :goto_26

    .line 172
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #identicalReqID:I
    .end local v5           #targetReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    :cond_41
    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->abortRequest(I)V

    .line 187
    .end local v1           #idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4d
    :goto_4d
    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move v6, v7

    .line 192
    .end local v4           #reqStatus:I
    :goto_53
    return v6

    .line 177
    .restart local v4       #reqStatus:I
    :cond_54
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4d

    .line 179
    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 180
    .restart local v1       #idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4d

    .line 181
    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 192
    .end local v1           #idList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4           #reqStatus:I
    :cond_7a
    const/4 v6, 0x0

    goto :goto_53
.end method

.method public addToQueue(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)I
    .registers 4
    .parameter "req"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->getNextReqID()I

    move-result v0

    .line 91
    .local v0, reqID:I
    invoke-virtual {p1, v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setID(I)V

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return v0
.end method

.method public getNextReqID()I
    .registers 2

    .prologue
    .line 375
    sget v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    .line 377
    sget v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    if-gez v0, :cond_d

    .line 378
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    .line 381
    :cond_d
    sget v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    return v0
.end method

.method public processRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)Z
    .registers 24
    .parameter "httpMgr"

    .prologue
    .line 196
    const/4 v9, 0x0

    .line 197
    .local v9, bFailedToSend:Z
    const/4 v10, 0x0

    .line 198
    .local v10, bResult:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    check-cast v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-virtual {v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 200
    .local v12, hdr:Landroid/os/Handler;
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "SnsImageCacheFramework : processRequest() Called !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v16, 0x0

    .line 203
    .local v16, nReqCount:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    .line 204
    .local v18, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getReqStatus()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1f

    .line 205
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f

    .line 208
    .end local v18           #req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    :cond_35
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsImageCacheFramework : processRequest() : QueueSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ==> START POINT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsImageCacheFramework : processRequest() : nReqCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v4, 0xa

    move/from16 v0, v16

    if-lt v0, v4, :cond_82

    .line 213
    const/4 v9, 0x1

    .line 216
    :cond_82
    const/4 v14, 0x0

    .line 218
    .local v14, imageGetReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    if-nez v9, :cond_d1

    .line 220
    const/4 v9, 0x1

    .line 222
    :goto_86
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->getFirstWaitRequest()Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v14

    if-eqz v14, :cond_d1

    const/16 v4, 0xa

    move/from16 v0, v16

    if-ge v0, v4, :cond_d1

    .line 227
    const/4 v7, 0x0

    .line 228
    .local v7, photoGetBodyUri:Landroid/net/Uri;
    :try_start_93
    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->searchReceivedPhoto(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 231
    if-eqz v7, :cond_14a

    .line 233
    new-instance v3, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getAppID()I

    move-result v4

    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v5

    const/4 v6, 0x1

    const/16 v8, 0xc8

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;-><init>(IIZLandroid/net/Uri;I)V

    .line 236
    .local v3, cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->newDeliverResponseRunnable(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setReqStatus(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    const/4 v10, 0x1

    .line 241
    sget v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I
    :try_end_ce
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_ce} :catch_cf

    goto :goto_86

    .line 275
    .end local v3           #cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    :catch_cf
    move-exception v11

    .line 276
    .local v11, e:Ljava/lang/NullPointerException;
    const/4 v9, 0x1

    .line 282
    .end local v7           #photoGetBodyUri:Landroid/net/Uri;
    .end local v11           #e:Ljava/lang/NullPointerException;
    :cond_d1
    :goto_d1
    sget v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    if-gez v4, :cond_19f

    .line 283
    const/4 v4, 0x0

    sput v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitRatio:F

    .line 288
    :goto_d8
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v17

    .line 289
    .local v17, nf:Ljava/text/NumberFormat;
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsImageCacheFramework : processRequest() : QueueSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] <== After Cache HIT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v4, "SNS_IMAGE_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsImageCacheFramework : processRequest() : Cache Hit Ratio ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitRatio:F

    float-to-double v0, v6

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz v9, :cond_144

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->getFirstWaitRequest()Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v4

    if-eqz v4, :cond_144

    .line 300
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 301
    .local v15, msg:Landroid/os/Message;
    invoke-virtual {v12, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    const-string v4, "SNS_IMAGE_CACHE"

    const-string v5, "SnsImageCacheFramework : processRequest(), sending a SnsThreadMessage.PROCESS_REQUEST to MainThread..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v15           #msg:Landroid/os/Message;
    :cond_144
    if-eqz v9, :cond_148

    if-eqz v10, :cond_1ac

    :cond_148
    const/4 v4, 0x1

    :goto_149
    return v4

    .line 246
    .end local v17           #nf:Ljava/text/NumberFormat;
    .restart local v7       #photoGetBodyUri:Landroid/net/Uri;
    :cond_14a
    :try_start_14a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->identicalReqIsOnSending(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)Z

    move-result v4

    if-eqz v4, :cond_167

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->appendReqIdOnSendUrlMap(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_167

    .line 248
    const/4 v4, 0x3

    invoke-virtual {v14, v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setReqStatus(I)V

    .line 249
    sget v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I

    goto/16 :goto_86

    .line 253
    :cond_167
    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v19

    .line 254
    .local v19, uri:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->increaseRetryCount()V

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->appendReqIdOnSendUrlMap(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)I

    move-result v4

    if-lez v4, :cond_19c

    .line 259
    invoke-virtual {v14}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getID()I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->enqueueHttpRequest(ILjava/lang/String;)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 263
    .restart local v15       #msg:Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v15, Landroid/os/Message;->what:I

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    const/4 v4, 0x4

    invoke-virtual {v14, v4}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setReqStatus(I)V
    :try_end_197
    .catch Ljava/lang/NullPointerException; {:try_start_14a .. :try_end_197} :catch_cf

    .line 267
    const/4 v9, 0x0

    .line 268
    add-int/lit8 v16, v16, 0x1

    .line 269
    goto/16 :goto_86

    .line 271
    .end local v15           #msg:Landroid/os/Message;
    :cond_19c
    const/4 v9, 0x1

    goto/16 :goto_d1

    .line 285
    .end local v7           #photoGetBodyUri:Landroid/net/Uri;
    .end local v19           #uri:Ljava/lang/String;
    :cond_19f
    sget v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitCount:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mID:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    sput v4, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mCacheHitRatio:F

    goto/16 :goto_d8

    .line 309
    .restart local v17       #nf:Ljava/text/NumberFormat;
    :cond_1ac
    const/4 v4, 0x0

    goto :goto_149
.end method

.method public processResponse(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V
    .registers 19
    .parameter "response"

    .prologue
    .line 313
    const-string v2, "SNS_IMAGE_CACHE"

    const-string v6, "SnsImageCacheFramework : processResponse() : Enter Well~"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getFwkID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 316
    .local v14, reqID:Ljava/lang/Integer;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getHttpStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 317
    .local v10, httpStatusCode:Ljava/lang/Integer;
    const/4 v8, 0x0

    .line 318
    .local v8, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 319
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mAppContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    .line 320
    .local v16, svcInstance:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 322
    .local v9, hdr:Landroid/os/Handler;
    const/4 v4, 0x0

    .line 325
    .local v4, bSuccess:Z
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->findRequestByID(I)Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v13

    .line 326
    .local v13, req:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    if-eqz v13, :cond_ac

    .line 327
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setReqStatus(I)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 330
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_55

    .line 331
    invoke-virtual {v13}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->insertReceivedPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 332
    if-eqz v5, :cond_55

    .line 333
    const/4 v4, 0x1

    .line 339
    :cond_55
    invoke-virtual {v13}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->getReqIDsFromSendUrlMap(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    .line 342
    .local v15, reqIdList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_9a

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v6, 0x1

    if-lt v2, v6, :cond_9a

    .line 344
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_6c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 345
    .local v3, identicalReqID:I
    new-instance v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;

    invoke-virtual {v13}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getAppID()I

    move-result v2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v4, :cond_97

    const-string v7, "OK"

    :goto_8a
    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;-><init>(IIZLandroid/net/Uri;ILjava/lang/String;)V

    .line 348
    .local v1, cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->newDeliverResponseRunnable(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c

    .line 345
    .end local v1           #cbData:Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
    :cond_97
    const-string v7, "Network Error"

    goto :goto_8a

    .line 352
    .end local v3           #identicalReqID:I
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mOnSendUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    .end local v15           #reqIdList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_ac
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->getFirstWaitRequest()Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    move-result-object v2

    if-eqz v2, :cond_c1

    .line 360
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 361
    .local v12, msg:Landroid/os/Message;
    invoke-virtual {v9, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    const-string v2, "SNS_IMAGE_CACHE"

    const-string v6, "SnsImageCacheFramework : processResponse(), sending a SnsThreadMessage.PROCESS_PHOTO_GET_BODY_REQUEST to MainThread..."

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v12           #msg:Landroid/os/Message;
    :cond_c1
    return-void
.end method
