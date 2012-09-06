.class public Lcom/dropbox/android/filemanager/L;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:[Lcom/dropbox/android/filemanager/L;


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/filemanager/L;->a:[Lcom/dropbox/android/filemanager/L;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    .line 359
    iput-object p2, p0, Lcom/dropbox/android/filemanager/L;->c:Landroid/net/Uri;

    .line 360
    iput-boolean p3, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    .line 361
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 518
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 519
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_e

    .line 520
    long-to-int v0, v0

    .line 539
    :goto_d
    return v0

    .line 524
    :cond_e
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 528
    if-eqz v1, :cond_37

    .line 530
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 531
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 532
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_39

    move-result v0

    .line 535
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :cond_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_37
    const/4 v0, -0x1

    goto :goto_d

    .line 535
    :catchall_39
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 497
    const-string v3, "_data = ?"

    .line 498
    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    .line 499
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_30

    .line 504
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2d

    .line 505
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 506
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_32

    move-result v0

    .line 509
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 513
    :goto_2c
    return v0

    .line 509
    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_30
    const/4 v0, -0x1

    goto :goto_2c

    .line 509
    :catchall_32
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Landroid/net/Uri;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;->b(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/L;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 543
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 544
    const-string v3, "_id = ?"

    .line 545
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 546
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 548
    if-eqz v1, :cond_30

    .line 550
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 552
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_35

    move-result-object v5

    .line 556
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_30
    :goto_30
    return-object v5

    .line 556
    :cond_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_30

    :catchall_35
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static a()[Lcom/dropbox/android/filemanager/L;
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    sget-object v0, Lcom/dropbox/android/filemanager/L;->a:[Lcom/dropbox/android/filemanager/L;

    if-nez v0, :cond_61

    .line 365
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/android/filemanager/L;

    new-instance v1, Lcom/dropbox/android/filemanager/M;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v5}, Lcom/dropbox/android/filemanager/M;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/dropbox/android/filemanager/L;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3, v5}, Lcom/dropbox/android/filemanager/L;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lcom/dropbox/android/filemanager/L;

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "phoneStorage"

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Lcom/dropbox/android/filemanager/L;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/dropbox/android/filemanager/M;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v6}, Lcom/dropbox/android/filemanager/M;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/dropbox/android/filemanager/L;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Video$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4, v6}, Lcom/dropbox/android/filemanager/L;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/dropbox/android/filemanager/L;

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "phoneStorage"

    invoke-static {v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/dropbox/android/filemanager/L;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/filemanager/L;->a:[Lcom/dropbox/android/filemanager/L;

    .line 378
    :cond_61
    sget-object v0, Lcom/dropbox/android/filemanager/L;->a:[Lcom/dropbox/android/filemanager/L;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;->c(Landroid/content/Context;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;->d(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_12

    .line 410
    iget-object v0, p0, Lcom/dropbox/android/filemanager/L;->c:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;ZLjava/lang/String;ILandroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private c(Landroid/content/Context;II)J
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 416
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    if-nez v0, :cond_a

    move-wide v0, v6

    .line 432
    :cond_9
    :goto_9
    return-wide v0

    .line 419
    :cond_a
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "duration"

    aput-object v0, v2, v1

    .line 420
    const-string v3, "_id = ?"

    .line 421
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_38

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 426
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3f

    move-result-wide v0

    .line 431
    if-eqz v2, :cond_9

    .line 432
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 431
    :cond_38
    if-eqz v2, :cond_3d

    .line 432
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3d
    move-wide v0, v6

    goto :goto_9

    .line 431
    :catchall_3f
    move-exception v0

    if-eqz v2, :cond_45

    .line 432
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method static synthetic c(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/L;->d(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;II)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 439
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    .line 448
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    if-eqz v0, :cond_62

    .line 449
    if-ne p3, v5, :cond_50

    .line 450
    const-string v3, "video_id = ? AND (kind = ? OR kind = ?)"

    .line 452
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 454
    const-string v5, "kind DESC"

    .line 476
    :goto_29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/filemanager/L;->c:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_4f

    .line 481
    :try_start_35
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 482
    :cond_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 483
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_93

    move-result v3

    if-nez v3, :cond_3b

    .line 489
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 493
    :cond_4f
    :goto_4f
    return-object v6

    .line 456
    :cond_50
    const-string v3, "video_id = ? AND kind = ?"

    .line 458
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move-object v5, v6

    .line 459
    goto :goto_29

    .line 462
    :cond_62
    if-ne p3, v5, :cond_7d

    .line 463
    const-string v3, "image_id = ? AND (kind = ? OR kind = ?)"

    .line 465
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 467
    const-string v5, "kind DESC"

    goto :goto_29

    .line 469
    :cond_7d
    const-string v3, "image_id = ? AND kind = ?"

    .line 471
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    move-object v5, v6

    .line 472
    goto :goto_29

    .line 489
    :cond_8f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    :catchall_93
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_1a

    .line 396
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    invoke-static {v0, v1, v2, p3}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;ZZI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 397
    if-eqz v3, :cond_19

    .line 399
    iget-object v0, p0, Lcom/dropbox/android/filemanager/L;->c:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 404
    :cond_19
    :goto_19
    return-object v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public final b()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dropbox/android/filemanager/L;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/dropbox/android/filemanager/L;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/L;->d:Z

    return v0
.end method
