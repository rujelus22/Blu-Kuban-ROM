.class public Lcom/sec/android/app/sns/polling/SnsPollingMgr;
.super Ljava/lang/Object;
.source "SnsPollingMgr.java"


# static fields
.field private static mBaseId:I


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/sns/polling/SnsPollingUnit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mAppContext:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    return-void
.end method

.method private checkCanceled(I)Z
    .registers 9
    .parameter "pollingID"

    .prologue
    .line 422
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 424
    .local v3, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 425
    .local v2, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->isCanceled()Z
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1f} :catch_24

    move-result v4

    if-eqz v4, :cond_10

    .line 426
    const/4 v4, 0x1

    .line 434
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .end local v3           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :goto_23
    return v4

    .line 428
    :catch_24
    move-exception v0

    .line 429
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkcanceled() : pollingID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not exist in polling map!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 434
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_46
    const/4 v4, 0x0

    goto :goto_23
.end method

.method private findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .registers 11
    .parameter "pollingID"
    .parameter "state"

    .prologue
    .line 361
    const/4 v6, -0x1

    if-ne p1, v6, :cond_38

    .line 362
    if-nez p2, :cond_66

    .line 363
    :try_start_5
    iget-object v6, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 366
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;>;"
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 367
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 369
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 370
    .local v4, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v6

    if-ne v6, p2, :cond_25

    .line 389
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;>;"
    .end local v4           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :goto_37
    return-object v4

    .line 376
    :cond_38
    iget-object v6, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 378
    .local v5, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 379
    .restart local v4       #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_57} :catch_5b

    move-result v6

    if-ne v6, p2, :cond_48

    goto :goto_37

    .line 384
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .end local v5           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :catch_5b
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SNS_POLLINGMGR"

    const-string v7, "findPollingUnit() : NullPointerException occur!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 389
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_66
    const/4 v4, 0x0

    goto :goto_37
.end method

.method private findPollingUnitforNextSending()Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .registers 9

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 396
    .local v2, find:Z
    iget-object v6, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 400
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;>;"
    :cond_b
    :try_start_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 401
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 403
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;"
    const/4 v2, 0x1

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 405
    .local v5, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v5}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v6

    if-eqz v6, :cond_22

    .line 406
    const/4 v2, 0x0

    goto :goto_22

    .line 409
    .end local v5           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :cond_36
    if-eqz v2, :cond_b

    .line 410
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_45} :catch_46

    .line 416
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_45
    return-object v6

    .line 412
    :catch_46
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SNS_POLLINGMGR"

    const-string v7, "findPollingUnitforNextSending() : NullPointerException occur!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 416
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_51
    const/4 v6, 0x0

    goto :goto_45
.end method

.method private static getNextPollingID()I
    .registers 1

    .prologue
    .line 456
    sget v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    .line 458
    sget v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    if-gez v0, :cond_d

    .line 459
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    .line 462
    :cond_d
    sget v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mBaseId:I

    return v0
.end method

.method private isSyncSuccess(I)Z
    .registers 9
    .parameter "pollingID"

    .prologue
    .line 440
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 442
    .local v3, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 443
    .local v2, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->isSuccess()Z
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1f} :catch_24

    move-result v4

    if-nez v4, :cond_10

    .line 444
    const/4 v4, 0x0

    .line 452
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .end local v3           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :goto_23
    return v4

    .line 446
    :catch_24
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSyncSuccess() : pollingID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] does not exist in polling map!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 452
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_46
    const/4 v4, 0x1

    goto :goto_23
.end method

.method private toStringPollingType([I)Ljava/lang/String;
    .registers 9
    .parameter "pollingTypes"

    .prologue
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v3, log:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1b

    aget v4, v0, v1

    .line 469
    .local v4, pollingType:I
    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 473
    .end local v4           #pollingType:I
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public addPollingRequest(II[II)I
    .registers 19
    .parameter "appID"
    .parameter "sp"
    .parameter "pollingTypes"
    .parameter "prevPollingID"

    .prologue
    .line 50
    const/4 v8, -0x1

    .line 52
    .local v8, thePollingID:I
    if-ltz p4, :cond_6d

    .line 54
    move/from16 v8, p4

    .line 55
    :try_start_5
    iget-object v11, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .local v7, prevUnit:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    const/4 v2, 0x0

    .line 58
    .local v2, bPending:Z
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 59
    .local v9, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v9}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    .line 60
    const-string v11, "SNS_POLLINGMGR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPollingRequest(): Resume pending unit. (PollingID ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") !!!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {v9, p1}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setCurrentAppID(I)V

    .line 69
    .end local v9           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :cond_4b
    if-eqz v2, :cond_4f

    move v11, v8

    .line 121
    .end local v2           #bPending:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #prevUnit:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :goto_4e
    return v11

    .line 72
    .restart local v2       #bPending:Z
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #prevUnit:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :cond_4f
    const-string v11, "SNS_POLLINGMGR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPollingRequest(): PollingID ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] state is not pending!!!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_6d} :catch_bd

    .line 83
    .end local v2           #bPending:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #prevUnit:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :cond_6d
    :goto_6d
    invoke-static {}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getNextPollingID()I

    move-result v8

    .line 84
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 86
    .local v10, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    const-string v11, "SNS_POLLINGMGR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPollingRequest() : create new polling request unit. : pollingID = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], spType = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "], polling type = ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->toStringPollingType([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v1, p3

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b4
    if-ge v4, v5, :cond_116

    aget v6, v1, v4

    .line 94
    .local v6, pollingType:I
    sparse-switch v6, :sswitch_data_122

    .line 115
    const/4 v11, -0x1

    goto :goto_4e

    .line 76
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pollingType:I
    .end local v10           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :catch_bd
    move-exception v3

    .line 77
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v11, "SNS_POLLINGMGR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPollingRequest(): PollingID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") is not exist!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6d

    .line 96
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v1       #arr$:[I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #pollingType:I
    .restart local v10       #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :sswitch_e0
    new-instance v9, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    const/16 v11, 0x1a

    move/from16 v0, p2

    invoke-direct {v9, v8, p1, v0, v11}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;-><init>(IIII)V

    .line 98
    .restart local v9       #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_ec
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 101
    .end local v9           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :sswitch_ef
    new-instance v9, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    const/16 v11, 0xe

    move/from16 v0, p2

    invoke-direct {v9, v8, p1, v0, v11}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;-><init>(IIII)V

    .line 103
    .restart local v9       #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 106
    .end local v9           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :sswitch_fc
    new-instance v9, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    const/16 v11, 0x13

    move/from16 v0, p2

    invoke-direct {v9, v8, p1, v0, v11}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;-><init>(IIII)V

    .line 108
    .restart local v9       #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 111
    .end local v9           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :sswitch_109
    new-instance v9, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    const/16 v11, 0x24

    move/from16 v0, p2

    invoke-direct {v9, v8, p1, v0, v11}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;-><init>(IIII)V

    .line 112
    .restart local v9       #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v10, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 119
    .end local v6           #pollingType:I
    .end local v9           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :cond_116
    iget-object v11, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v8

    .line 121
    goto/16 :goto_4e

    .line 94
    :sswitch_data_122
    .sparse-switch
        0xe -> :sswitch_ef
        0x13 -> :sswitch_fc
        0x1a -> :sswitch_e0
        0x24 -> :sswitch_109
    .end sparse-switch
.end method

.method public cancelPollingRequest(II)Z
    .registers 14
    .parameter "appID"
    .parameter "pollingID"

    .prologue
    .line 296
    const-string v8, "SNS_POLLINGMGR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelPollingRequest() : entered, appID = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], pollingID = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, bRet:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "appID"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v8, "pollingID"

    invoke-virtual {v1, v8, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 305
    .local v3, handler:Landroid/os/Handler;
    const/16 v8, 0xd

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 306
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    :try_start_48
    iget-object v8, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 312
    .local v7, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 313
    .local v6, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v6}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setCanceled()V
    :try_end_67
    .catch Ljava/lang/NullPointerException; {:try_start_48 .. :try_end_67} :catch_69

    .line 314
    const/4 v0, 0x1

    goto :goto_58

    .line 316
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .end local v7           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :catch_69
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v8, "SNS_POLLINGMGR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancelPollingRequest() : pollingID ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] does not exist in polling map!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 322
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_8b
    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 479
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public pendPollingRequest(I)Z
    .registers 13
    .parameter "pollingID"

    .prologue
    .line 327
    const-string v8, "SNS_POLLINGMGR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pendPollingRequest() : pending state!!!! pollingID ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, bRet:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "pollingID"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 335
    .local v3, handler:Landroid/os/Handler;
    const/16 v8, 0xe

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 336
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    :try_start_33
    iget-object v8, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 342
    .local v7, unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    .line 343
    .local v6, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    invoke-virtual {v6}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_43

    .line 344
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setPollingState(I)V
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_5a} :catch_5c

    .line 345
    const/4 v0, 0x1

    goto :goto_43

    .line 349
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    .end local v7           #unitList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/sns/polling/SnsPollingUnit;>;"
    :catch_5c
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v8, "SNS_POLLINGMGR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pendPollingRequest() : pollingID ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] does not exist in polling map!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 355
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_7e
    return v0
.end method

.method public processPollingRequest(I)Z
    .registers 16
    .parameter "pollingID"

    .prologue
    .line 126
    const/4 v13, 0x0

    .line 128
    .local v13, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    const-string v0, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPollingRequest() : <<<REQEUST>>> ---> [ pollingID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, -0x1

    if-ne p1, v0, :cond_a7

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnitforNextSending()Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v13

    .line 149
    :cond_26
    :goto_26
    if-eqz v13, :cond_15b

    .line 150
    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentSp()I

    move-result v2

    .line 151
    .local v2, spType:I
    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentReq()I

    move-result v3

    .line 152
    .local v3, reqType:I
    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentAppID()I

    move-result v1

    .line 154
    .local v1, appID:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 156
    .local v11, handler:Landroid/os/Handler;
    const-string v0, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPollingRequest() : PROCESS SENDING : [ pollingID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unit.getPollingID() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mAppContext:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sns/request/SnsRequestGenerator;->createRequest(Landroid/content/Context;IIIILcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/request/data/SnsRequest;

    move-result-object v12

    .line 165
    .local v12, req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    if-nez v12, :cond_11f

    .line 166
    const-string v0, "SNS_POLLINGMGR"

    const-string v5, "processPollingRequest() : request is NULL "

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    .line 191
    .end local v1           #appID:I
    .end local v2           #spType:I
    .end local v3           #reqType:I
    .end local v11           #handler:Landroid/os/Handler;
    .end local v12           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :goto_a6
    return v0

    .line 134
    :cond_a7
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v13

    if-eqz v13, :cond_111

    .line 135
    const-string v0, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPollingRequest() : WAIT FOR RESPONSE : [ pollingID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unit.getPollingID() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", spType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentSp()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentReq()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v13, 0x0

    .line 142
    const/4 v0, 0x0

    goto :goto_a6

    .line 145
    :cond_111
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v13

    if-nez v13, :cond_26

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v13

    goto/16 :goto_26

    .line 170
    .restart local v1       #appID:I
    .restart local v2       #spType:I
    .restart local v3       #reqType:I
    .restart local v11       #handler:Landroid/os/Handler;
    .restart local v12       #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_11f
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->addToRequestMap(Lcom/sec/android/app/sns/request/data/SnsRequest;)V

    .line 171
    const/4 v0, 0x2

    invoke-virtual {v12}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setPollingState(I)V

    .line 177
    const/16 v0, 0x13

    if-ne v3, v0, :cond_158

    .line 178
    new-instance v4, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual {v13}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v6, v2

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 180
    .local v4, bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    .end local v4           #bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    :cond_158
    const/4 v0, 0x1

    goto/16 :goto_a6

    .line 186
    .end local v1           #appID:I
    .end local v2           #spType:I
    .end local v3           #reqType:I
    .end local v11           #handler:Landroid/os/Handler;
    .end local v12           #req:Lcom/sec/android/app/sns/request/data/SnsRequest;
    :cond_15b
    const-string v0, "SNS_POLLINGMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPollingRequest() : [ pollingID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : NO ITEM FOR SENDING!!! ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    goto/16 :goto_a6
.end method

.method public processPollingResponse(Lcom/sec/android/app/sns/result/SnsResultData;)Z
    .registers 29
    .parameter "resultData"

    .prologue
    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getID()I

    move-result v24

    .line 197
    .local v24, pollingID:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getReqType()I

    move-result v25

    .line 198
    .local v25, reqType:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getHandler()Landroid/os/Handler;

    move-result-object v22

    .line 200
    .local v22, handler:Landroid/os/Handler;
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : <<<RESPONSE>>> ---> [ pollingID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pollingType ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsReqType;->NAME:[Ljava/lang/String;

    aget-object v5, v5, v25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v26

    .line 205
    .local v26, unit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    if-eqz v26, :cond_1d9

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 208
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v3

    move/from16 v0, v24

    if-eq v0, v3, :cond_8b

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPollingResponse() : pollingID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") != unit.getPollingID()("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    .line 212
    :cond_8b
    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setResult(Z)V

    .line 213
    const/4 v3, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setPollingState(I)V

    .line 218
    :goto_97
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getReqType()I

    move-result v6

    .line 219
    .local v6, reqTypeForBroadcast:I
    const/16 v3, 0x1a

    if-ne v6, v3, :cond_bb

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_bb

    .line 220
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v23

    .line 221
    .local v23, nextUnit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    if-eqz v23, :cond_bb

    .line 222
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentReq()I

    move-result v6

    .line 223
    const-string v3, "SNS_POLLINGMGR"

    const-string v4, "PEOPLE_PROFILE_GET fail. Change request type to next polling unit"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v23           #nextUnit:Lcom/sec/android/app/sns/polling/SnsPollingUnit;
    :cond_bb
    new-instance v2, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentAppID()I

    move-result v3

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentSp()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->isSuccess()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZLandroid/net/Uri;)V

    .line 231
    .local v2, bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    const/16 v21, 0x0

    .line 236
    .local v21, bCallback:Z
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->isSyncSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_181

    .line 237
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : COMPLETE (pollingID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v21, 0x1

    .line 247
    :cond_10d
    :goto_10d
    if-eqz v21, :cond_15b

    .line 248
    new-instance v7, Lcom/sec/android/app/sns/result/SnsResultData;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentAppID()I

    move-result v8

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getCurrentSp()I

    move-result v9

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->getPollingID()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getInternalCode()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getHttpStatusCode()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getErrCode()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getSubErrCode()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getPartialErrMap()Ljava/util/Map;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/result/SnsResultData;->getErrContext()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->isSuccess()Z

    move-result v19

    const/16 v20, 0x0

    invoke-direct/range {v7 .. v20}, Lcom/sec/android/app/sns/result/SnsResultData;-><init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 253
    .local v7, syncCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/app/sns/SnsSvc;->newDeliverResponseRunnable(Lcom/sec/android/app/sns/result/SnsResultData;I)Ljava/lang/Runnable;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->mPollingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/16 v24, -0x1

    .line 272
    .end local v2           #bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v6           #reqTypeForBroadcast:I
    .end local v7           #syncCbData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v21           #bCallback:Z
    :cond_15b
    :goto_15b
    const/4 v3, -0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_237

    .line 273
    const-string v3, "SNS_POLLINGMGR"

    const-string v4, "processPollingResponse() : Send next polling request of mPollingMap."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_167
    const/4 v3, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    const/4 v3, 0x1

    :goto_178
    return v3

    .line 215
    :cond_179
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->setResult(Z)V

    goto/16 :goto_97

    .line 239
    .restart local v2       #bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .restart local v6       #reqTypeForBroadcast:I
    .restart local v21       #bCallback:Z
    :cond_181
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->checkCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 240
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : CANCELED (pollingID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v21, 0x1

    goto/16 :goto_10d

    .line 242
    :cond_1af
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/sns/polling/SnsPollingUnit;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_10d

    .line 243
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : FAILED (pollingID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v21, 0x1

    goto/16 :goto_10d

    .line 261
    .end local v2           #bcResultData:Lcom/sec/android/app/sns/result/SnsResultData;
    .end local v6           #reqTypeForBroadcast:I
    .end local v21           #bCallback:Z
    :cond_1d9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/sns/polling/SnsPollingMgr;->findPollingUnit(II)Lcom/sec/android/app/sns/polling/SnsPollingUnit;

    move-result-object v3

    if-eqz v3, :cond_208

    .line 262
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : PENDING!!! (pollingID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Currently skip callback. It will be sent later"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v24, -0x1

    goto/16 :goto_15b

    .line 266
    :cond_208
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : pollingID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pollingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : current state is not sending!!!!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, 0x0

    goto/16 :goto_178

    .line 275
    :cond_237
    const-string v3, "SNS_POLLINGMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPollingResponse() : Send next polling unit of pollingID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_167
.end method
