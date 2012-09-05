.class public Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;
.super Ljava/lang/Object;
.source "DOADatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;,
        Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;
    }
.end annotation


# static fields
.field private static instance:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;


# instance fields
.field private androidContext:Landroid/content/Context;

.field private audioNumOnDB:I

.field private imageNumOnDB:I

.field isCache:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmClient:Landroid/drm/DrmManagerClient;

.field private videoNumOnDB:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->instance:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mDrmClient:Landroid/drm/DrmManagerClient;

    .line 88
    iput-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;

    invoke-direct {v0, p0, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;)V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->isCache:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    return-object v0
.end method

.method private arrayListToRecordedInfo(Ljava/util/concurrent/CopyOnWriteArrayList;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;",
            ">;)[",
            "Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, recVec:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1075
    .local v2, recCnt:I
    new-array v1, v2, [Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    .line 1076
    .local v1, recArray:[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v2, :cond_a

    .line 1080
    return-object v1

    .line 1077
    :cond_a
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    aput-object v3, v1, v0

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const-wide/16 v5, 0xe10

    const-wide/16 v3, 0x3c

    .line 1101
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-string v0, "00:00:00"

    .line 1105
    :goto_c
    return-object v0

    .line 1102
    :cond_d
    rem-long v0, p0, v3

    invoke-static {v0, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->toDateString(J)Ljava/lang/String;

    move-result-object v0

    .line 1103
    rem-long v1, p0, v5

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->toDateString(J)Ljava/lang/String;

    move-result-object v1

    .line 1104
    div-long v2, p0, v5

    invoke-static {v2, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->toDateString(J)Ljava/lang/String;

    move-result-object v2

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private getAudioMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 472
    const-string v7, "title COLLATE LOCALIZED ASC"

    .line 473
    const-string v5, "is_music = 1"

    .line 474
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 475
    const/16 v4, 0xb

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 476
    const-string v8, "mime_type"

    aput-object v8, v4, v6

    const/4 v6, 0x1

    .line 477
    const-string v8, "_data"

    aput-object v8, v4, v6

    const/4 v6, 0x2

    .line 478
    const-string v8, "title"

    aput-object v8, v4, v6

    const/4 v6, 0x3

    .line 479
    const-string v8, "_id"

    aput-object v8, v4, v6

    const/4 v6, 0x4

    .line 480
    const-string v8, "duration"

    aput-object v8, v4, v6

    const/4 v6, 0x5

    .line 481
    const-string v8, "_size"

    aput-object v8, v4, v6

    const/4 v6, 0x6

    .line 482
    const-string v8, "artist"

    aput-object v8, v4, v6

    const/4 v6, 0x7

    .line 483
    const-string v8, "composer"

    aput-object v8, v4, v6

    const/16 v6, 0x8

    .line 484
    const-string v8, "album"

    aput-object v8, v4, v6

    const/16 v6, 0x9

    .line 485
    const-string v8, "album_id"

    aput-object v8, v4, v6

    const/16 v6, 0xa

    .line 486
    const-string v8, "year"

    aput-object v8, v4, v6

    .line 487
    const/4 v6, 0x0

    .line 474
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 488
    new-instance v3, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Landroid/database/Cursor;)V

    .line 489
    if-nez v3, :cond_5b

    .line 569
    :goto_5a
    return-void

    .line 491
    :cond_5b
    const-string v2, "mime_type"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 492
    const-string v2, "_data"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 493
    const-string v2, "title"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 494
    const-string v2, "_id"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 495
    const-string v2, "duration"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 496
    const-string v2, "_size"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 497
    const-string v2, "artist"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 498
    const-string v2, "composer"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 499
    const-string v2, "album"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 500
    const-string v2, "album_id"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 501
    const-string v2, "year"

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 502
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->setAudioNumOnDB(I)V

    .line 504
    :cond_a6
    :goto_a6
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 568
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->close()V

    goto :goto_5a

    .line 505
    :cond_b0
    new-instance v15, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    sget-object v2, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Audio:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-direct {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;-><init>(Lcom/samsung/upnp/media/server/directory/doa/FileType;)V

    .line 507
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 508
    if-eqz v2, :cond_a6

    const-string v16, "pyv"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "dcf"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "imelody"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    .line 509
    const-string v16, "dm"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "pvv"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "midi"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    .line 510
    const-string v16, "amr"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "ogg"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "application"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    .line 511
    const-string v16, "3ga"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "mid"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    const-string v16, "wav"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a6

    .line 513
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setMimeType(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v3, v5}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 516
    if-eqz v16, :cond_a6

    const-string v17, "pyv"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "dcf"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "imelody"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    .line 517
    const-string v17, "dm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "pvv"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "midi"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    .line 518
    const-string v17, "amr"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "ogg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "application"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    .line 519
    const-string v17, "3ga"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "mid"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a6

    const-string v17, "wav"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 521
    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDataPath(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3, v6}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setTitle(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSubTitle(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v3, v14}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getLong(I)J

    move-result-wide v16

    .line 528
    invoke-virtual/range {v15 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDate(J)V

    .line 530
    invoke-virtual {v3, v7}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v2

    .line 531
    sget-object v16, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v2

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 532
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setUri(Landroid/net/Uri;)V

    .line 534
    invoke-virtual {v3, v8}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 535
    if-eqz v2, :cond_1d4

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_230

    .line 536
    :cond_1d4
    const-string v2, "00:00:00"

    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDurationTime(Ljava/lang/String;)V

    .line 540
    :goto_1d9
    invoke-virtual {v3, v9}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v2

    .line 541
    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSize(J)V

    .line 543
    invoke-virtual {v3, v10}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    if-eqz v2, :cond_1f3

    const-string v16, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f5

    .line 545
    :cond_1f3
    const-string v2, "unknown"

    .line 547
    :cond_1f5
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setArtist(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3, v11}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    if-eqz v2, :cond_208

    const-string v16, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20a

    .line 553
    :cond_208
    const-string v2, "unknown"

    .line 555
    :cond_20a
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setCreator(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v3, v12}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 558
    if-eqz v2, :cond_21d

    const-string v16, "<unknown>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21f

    .line 559
    :cond_21d
    const-string v2, "unknown"

    .line 561
    :cond_21f
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setAlbum(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v3, v13}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setAudioAlbum_ID(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a6

    .line 538
    :cond_230
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDurationTime(Ljava/lang/String;)V

    goto :goto_1d9
.end method

.method private getBitmap(J)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "id"

    .prologue
    const/16 v6, 0xa0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v2, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x3

    .line 159
    .local v3, sampleSize:I
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    if-eqz v4, :cond_1c

    .line 161
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x3

    .line 160
    invoke-static {v4, p1, p2, v5, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1c

    move-object v1, v0

    .line 198
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_1b
    return-object v1

    .line 169
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_1c
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 170
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    if-eqz v4, :cond_2d

    .line 172
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    .line 171
    invoke-static {v4, p1, p2, v5, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_2d
    if-nez v0, :cond_32

    .line 183
    const/4 v0, 0x0

    :cond_30
    :goto_30
    move-object v1, v0

    .line 198
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1b

    .line 185
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v6, :cond_3e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_30

    .line 188
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    const/16 v4, 0xa

    if-le v3, v4, :cond_1c

    goto :goto_30
.end method

.method private getImageMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 659
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 660
    const-string v5, "title COLLATE LOCALIZED ASC"

    .line 661
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 662
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v4

    const/4 v4, 0x1

    .line 663
    const-string v6, "mime_type"

    aput-object v6, v2, v4

    const/4 v4, 0x2

    .line 664
    const-string v6, "_data"

    aput-object v6, v2, v4

    const/4 v4, 0x3

    .line 665
    const-string v6, "title"

    aput-object v6, v2, v4

    const/4 v4, 0x4

    .line 666
    const-string v6, "_size"

    aput-object v6, v2, v4

    const/4 v4, 0x5

    .line 667
    const-string v6, "datetaken"

    aput-object v6, v2, v4

    move-object v4, v3

    .line 661
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 669
    new-instance v2, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;

    invoke-direct {v2, p0, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Landroid/database/Cursor;)V

    .line 670
    if-nez v2, :cond_39

    .line 728
    :goto_38
    return-void

    .line 673
    :cond_39
    const-string v1, "_id"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 674
    const-string v1, "mime_type"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 675
    const-string v1, "_data"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 676
    const-string v1, "title"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 677
    const-string v1, "_size"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 678
    const-string v1, "datetaken"

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 679
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->setImageNumOnDB(I)V

    .line 681
    :cond_64
    :goto_64
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 727
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->close()V

    goto :goto_38

    .line 682
    :cond_6e
    new-instance v9, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Image:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-direct {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;-><init>(Lcom/samsung/upnp/media/server/directory/doa/FileType;)V

    .line 684
    invoke-virtual {v2, v5}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 685
    if-eqz v1, :cond_64

    const-string v10, "application"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    const-string v10, "gif"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    const-string v10, "bmp"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 687
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDataPath(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 690
    if-eqz v1, :cond_64

    const-string v10, "application"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    const-string v10, "gif"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    const-string v10, "bmp"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 692
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setMimeType(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v2, v6}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setTitle(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSubTitle(Ljava/lang/String;)V

    .line 697
    const-string v1, "category"

    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setCategory(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v1

    .line 700
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setImageDB_ID(I)V

    .line 702
    invoke-virtual {v2, v8}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getLong(I)J

    move-result-wide v10

    .line 703
    invoke-virtual {v9, v10, v11}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDate(J)V

    .line 705
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v11, v1

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 706
    invoke-virtual {v9, v1}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setUri(Landroid/net/Uri;)V

    .line 708
    invoke-virtual {v2, v7}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    .line 709
    if-nez v10, :cond_112

    .line 711
    :try_start_e5
    const-string v10, "r"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 712
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    long-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSize(J)V

    .line 713
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_f7
    .catch Ljava/io/FileNotFoundException; {:try_start_e5 .. :try_end_f7} :catch_fc
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_f7} :catch_107

    .line 724
    :cond_f7
    :goto_f7
    invoke-virtual {p1, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_64

    .line 714
    :catch_fc
    move-exception v1

    .line 715
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 716
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_f7

    .line 717
    :catch_107
    move-exception v1

    .line 718
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 719
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f7

    .line 722
    :cond_112
    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSize(J)V

    goto :goto_f7
.end method

.method public static getInstance()Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->instance:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;-><init>()V

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->instance:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    .line 81
    :cond_b
    sget-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->instance:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    return-object v0
.end method

.method private getVideoMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 243
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 246
    const-string v7, "title COLLATE LOCALIZED ASC"

    .line 247
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 248
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 249
    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 250
    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 251
    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 252
    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 253
    const-string v6, "resolution"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 254
    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 255
    const-string v6, "_size"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 256
    const-string v6, "album"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 257
    const-string v6, "mini_thumb_magic"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 258
    const-string v6, "datetaken"

    aput-object v6, v4, v5

    .line 259
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 247
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 260
    new-instance v4, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;Landroid/database/Cursor;)V

    .line 261
    if-nez v4, :cond_5c

    .line 361
    :cond_5b
    :goto_5b
    return-void

    .line 263
    :cond_5c
    const-string v3, "mime_type"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 264
    const-string v3, "_data"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 265
    const-string v3, "title"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 266
    const-string v3, "_id"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 267
    const-string v3, "resolution"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 268
    const-string v3, "duration"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 269
    const-string v3, "_size"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 270
    const-string v3, "album"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 271
    const-string v3, "mini_thumb_magic"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 272
    const-string v3, "datetaken"

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 273
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->setVideoNumOnDB(I)V

    .line 277
    :cond_a1
    :goto_a1
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 360
    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->close()V

    goto :goto_5b

    .line 279
    :cond_ab
    new-instance v15, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    sget-object v3, Lcom/samsung/upnp/media/server/directory/doa/FileType;->Video:Lcom/samsung/upnp/media/server/directory/doa/FileType;

    invoke-direct {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;-><init>(Lcom/samsung/upnp/media/server/directory/doa/FileType;)V

    .line 281
    invoke-virtual {v4, v5}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    if-eqz v3, :cond_a1

    const-string v16, "pyv"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    const-string v16, "dcf"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    .line 283
    const-string v16, "dm"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    const-string v16, "pvv"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    .line 284
    const-string v16, "ogg"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    const-string v16, "application"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    .line 285
    const-string v16, "flv"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    const-string v16, "skm"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_a1

    .line 287
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setMimeType(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4, v6}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 291
    if-eqz v16, :cond_a1

    const-string v17, "pyv"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    const-string v17, "dcf"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 292
    const-string v17, "dm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    const-string v17, "pvv"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 293
    const-string v17, "ogg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    const-string v17, "application"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 294
    const-string v17, "flv"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    const-string v17, "skm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a1

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->isDRMMedia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 300
    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDataPath(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSubTitle(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4, v7}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    const-string v16, "\u0000"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_17b

    .line 306
    const-string v16, "\u0000"

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    :cond_17b
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setTitle(Ljava/lang/String;)V

    .line 311
    const-string v3, "category"

    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setCategory(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4, v8}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v3

    .line 314
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setVideoDB_ID(I)V

    .line 317
    sget-object v16, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, v3

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 318
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setUri(Landroid/net/Uri;)V

    .line 320
    invoke-virtual {v4, v9}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 321
    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setResolution(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4, v10}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 330
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-gez v18, :cond_1ec

    .line 331
    const-string v16, "00:00:00"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDurationTime(Ljava/lang/String;)V

    .line 336
    :goto_1b1
    invoke-virtual {v4, v14}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getLong(I)J

    move-result-wide v16

    .line 337
    invoke-virtual/range {v15 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDate(J)V

    .line 339
    invoke-virtual {v4, v11}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getLong(I)J

    move-result-wide v16

    .line 340
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-nez v18, :cond_1fd

    .line 342
    :try_start_1c2
    const-string v16, "r"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 343
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    int-to-long v0, v3

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSize(J)V
    :try_end_1d7
    .catch Ljava/io/FileNotFoundException; {:try_start_1c2 .. :try_end_1d7} :catch_1f8

    .line 351
    :goto_1d7
    invoke-virtual {v4, v12}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setAlbum(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4, v13}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$DoaCursor;->getInt(I)I

    move-result v3

    .line 356
    invoke-virtual {v15, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setThumb_magic(I)V

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a1

    .line 333
    :cond_1ec
    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->formatTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setDurationTime(Ljava/lang/String;)V

    goto :goto_1b1

    .line 344
    :catch_1f8
    move-exception v3

    .line 345
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1d7

    .line 348
    :cond_1fd
    invoke-virtual/range {v15 .. v17}, Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;->setSize(J)V

    goto :goto_1d7
.end method

.method private static toDateString(J)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1110
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_1a

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    :goto_19
    return-object v0

    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method public getAudioRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 3

    .prologue
    .line 1061
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1062
    .local v0, recVec:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;>;"
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getAudioMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1063
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->arrayListToRecordedInfo(Ljava/util/concurrent/CopyOnWriteArrayList;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v1

    return-object v1
.end method

.method public getImageRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 3

    .prologue
    .line 1067
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1068
    .local v0, recVec:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;>;"
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getImageMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1069
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->arrayListToRecordedInfo(Ljava/util/concurrent/CopyOnWriteArrayList;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v1

    return-object v1
.end method

.method public getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 137
    :try_start_1
    iget-object v5, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->isCache:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;

    invoke-virtual {v5, p1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase$InputStreamCache;->get(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v2

    .line 138
    .local v2, f:Ljava/io/File;
    if-nez v2, :cond_b

    move-object v0, v4

    .line 144
    .end local v2           #f:Ljava/io/File;
    :goto_a
    return-object v0

    .line 140
    .restart local v2       #f:Ljava/io/File;
    :cond_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    const v5, 0x4b000

    invoke-direct {v0, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_19

    .line 142
    .local v0, bis:Ljava/io/BufferedInputStream;
    goto :goto_a

    .line 143
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    :catch_19
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v4

    .line 144
    goto :goto_a
.end method

.method public getThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "media_store_uri"
    .parameter "kind"

    .prologue
    .line 205
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 206
    .local v2, id:J
    const/4 v0, 0x0

    .line 208
    .local v0, bitmap:Landroid/graphics/Bitmap;
    packed-switch p2, :pswitch_data_22

    :pswitch_8
    move-object v1, v0

    .line 219
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_9
    return-object v1

    .line 210
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :pswitch_a
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    if-eqz v4, :cond_1a

    .line 212
    iget-object v4, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 211
    invoke-static {v4, v2, v3, v5, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1a
    move-object v1, v0

    .line 214
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_9

    .line 216
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :pswitch_1c
    invoke-direct {p0, v2, v3}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 217
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_9

    .line 208
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
        :pswitch_1c
    .end packed-switch
.end method

.method public getVideoRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 3

    .prologue
    .line 1055
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1056
    .local v0, recVec:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;>;"
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getVideoMediFromDBv2(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1057
    invoke-direct {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->arrayListToRecordedInfo(Ljava/util/concurrent/CopyOnWriteArrayList;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v1

    return-object v1
.end method

.method isDRMMedia(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "filepath"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 365
    iget-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mDrmClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_6

    .line 372
    :cond_5
    :goto_5
    return v0

    .line 369
    :cond_6
    const-string v1, "audio/x-ms-wma"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 372
    :cond_16
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mDrmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public open()Z
    .registers 2

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public setAudioNumOnDB(I)V
    .registers 2
    .parameter "audioNumOnDB"

    .prologue
    .line 1093
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->audioNumOnDB:I

    .line 1094
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->androidContext:Landroid/content/Context;

    .line 91
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 95
    :try_start_9
    const-string v3, "android.drm.DrmManagerClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 97
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/drm/DrmManagerClient;

    iput-object v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mDrmClient:Landroid/drm/DrmManagerClient;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2a

    .line 106
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :goto_29
    return-void

    .line 99
    :catch_2a
    move-exception v2

    .line 102
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DOADatabase"

    const-string v4, "android.drm.DrmManagerClient is not supported."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->mDrmClient:Landroid/drm/DrmManagerClient;

    goto :goto_29
.end method

.method public setImageNumOnDB(I)V
    .registers 2
    .parameter "imageNumOnDB"

    .prologue
    .line 1089
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->imageNumOnDB:I

    .line 1090
    return-void
.end method

.method public setVideoNumOnDB(I)V
    .registers 2
    .parameter "videoNumOnDB"

    .prologue
    .line 1097
    iput p1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->videoNumOnDB:I

    .line 1098
    return-void
.end method
