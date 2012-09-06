.class public Lcom/google/android/maps/driveabout/app/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/maps/driveabout/app/aj;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashMap;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 295
    const-string v0, "da_destination_history"

    new-instance v1, Lcom/google/android/maps/driveabout/app/ae;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/ae;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/ad;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/aj;)V

    .line 309
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/aj;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ad;->a:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ad;->b:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    .line 316
    return-void
.end method

.method private a(ILjava/util/List;)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 439
    const/4 v0, 0x1

    .line 440
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ag;

    .line 441
    iget v0, v0, Lcom/google/android/maps/driveabout/app/ag;->f:I

    if-ne v0, p1, :cond_25

    .line 442
    add-int/lit8 v0, v1, 0x1

    :goto_18
    move v1, v0

    goto :goto_6

    .line 445
    :cond_1a
    int-to-float v0, v1

    const/high16 v1, 0x40e0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_25
    move v0, v1

    goto :goto_18
.end method

.method private a(Ln/s;Ljava/util/List;)F
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 475
    if-nez p1, :cond_5

    .line 502
    :goto_4
    return v0

    .line 480
    :cond_5
    invoke-static {p1}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v2

    .line 481
    const v1, 0x3a83126f

    invoke-virtual {p1}, Ln/s;->a()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ln/Q;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float v3, v1, v3

    .line 488
    const/high16 v1, 0x4080

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    .line 490
    const v1, 0x40c90fdb

    mul-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    div-float v5, v0, v1

    .line 494
    const/4 v0, 0x0

    .line 495
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_37
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ag;

    .line 496
    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ag;->b:Ln/s;

    invoke-static {v0}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v0

    invoke-virtual {v2, v0}, Ln/Q;->d(Ln/Q;)F

    move-result v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v3

    .line 498
    neg-float v0, v0

    const/high16 v7, 0x4000

    mul-float/2addr v7, v4

    div-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    double-to-float v0, v7

    add-float/2addr v0, v1

    move v1, v0

    .line 499
    goto :goto_37

    .line 502
    :cond_5d
    mul-float v0, v1, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    goto :goto_4
.end method

.method private a(Lo/P;ILjava/util/List;Ln/s;II)Lcom/google/android/maps/driveabout/app/ai;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 421
    invoke-direct {p0, p6, p3}, Lcom/google/android/maps/driveabout/app/ad;->a(ILjava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 422
    invoke-direct {p0, p5, p3}, Lcom/google/android/maps/driveabout/app/ad;->b(ILjava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 423
    invoke-direct {p0, p4, p3}, Lcom/google/android/maps/driveabout/app/ad;->a(Ln/s;Ljava/util/List;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 424
    invoke-direct {p0, p4, p3}, Lcom/google/android/maps/driveabout/app/ad;->b(Ln/s;Ljava/util/List;)F

    move-result v1

    add-float/2addr v0, v1

    .line 425
    new-instance v1, Lcom/google/android/maps/driveabout/app/ai;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/ai;-><init>(Lo/P;FI)V

    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/ah;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    .line 594
    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    if-nez v0, :cond_30

    const-string v0, ""

    move-object v1, v0

    .line 595
    :goto_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 596
    if-eqz v0, :cond_46

    .line 597
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/app/ah;

    .line 598
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/app/ah;->a(Lcom/google/android/maps/driveabout/app/ah;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 599
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 613
    :goto_2f
    return-object v0

    .line 594
    :cond_30
    iget-object v0, p1, Lcom/google/android/maps/driveabout/app/ah;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    .line 603
    :cond_38
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 606
    :cond_46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method

.method private a(Lcom/google/android/maps/driveabout/app/ag;)V
    .registers 4
    .parameter

    .prologue
    .line 583
    new-instance v0, Lcom/google/android/maps/driveabout/app/ah;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/ah;-><init>(Lo/P;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ad;->a(Lcom/google/android/maps/driveabout/app/ah;)Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    .line 587
    return-void
.end method

.method private b(ILjava/util/List;)F
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 459
    .line 460
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ag;

    .line 461
    iget v0, v0, Lcom/google/android/maps/driveabout/app/ag;->e:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 462
    if-le v0, v2, :cond_20

    const/16 v4, 0x17

    if-lt v0, v4, :cond_2f

    .line 463
    :cond_20
    add-int/lit8 v0, v1, 0x1

    :goto_22
    move v1, v0

    .line 465
    goto :goto_6

    .line 466
    :cond_24
    int-to-float v0, v1

    const/high16 v1, 0x4100

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_2f
    move v0, v1

    goto :goto_22
.end method

.method private b(Ln/s;Ljava/util/List;)F
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ag;

    .line 515
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/aj;->a()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/maps/driveabout/app/ag;->d:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 516
    iget v3, v0, Lcom/google/android/maps/driveabout/app/ag;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5f

    const-wide/32 v3, 0xdbba00

    cmp-long v3, v1, v3

    if-gez v3, :cond_5f

    .line 518
    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f80

    long-to-float v1, v1

    const v2, 0x4b5bba00

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    .line 520
    if-nez p1, :cond_3a

    move v0, v1

    .line 530
    :goto_39
    return v0

    .line 523
    :cond_3a
    invoke-static {p1}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v2

    .line 524
    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v0

    invoke-static {v0}, Ln/Q;->a(Ln/s;)Ln/Q;

    move-result-object v0

    .line 525
    const-wide v3, 0x407f400000000000L

    invoke-virtual {v2}, Ln/Q;->e()D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 526
    invoke-virtual {v2, v0}, Ln/Q;->d(Ln/Q;)F

    move-result v0

    float-to-double v5, v0

    mul-double v2, v3, v3

    cmpl-double v0, v5, v2

    if-lez v0, :cond_5f

    move v0, v1

    .line 527
    goto :goto_39

    .line 530
    :cond_5f
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private b()Z
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    .line 540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_9

    move v0, v9

    .line 578
    :goto_8
    return v0

    .line 544
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 546
    :try_start_d
    new-instance v0, Lcom/google/android/maps/driveabout/app/af;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ad;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/af;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 551
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/aj;->a()J

    move-result-wide v0

    const-wide v2, 0x134fd9000L

    sub-long/2addr v0, v2

    .line 552
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 553
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "destination_history"

    const-string v3, "time<=?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->f:Ljava/util/HashMap;

    .line 558
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "destination_history"

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ag;->b()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time"

    const/16 v8, 0x1f4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 560
    :goto_61
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 561
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/ag;->a(ILandroid/database/Cursor;)Lcom/google/android/maps/driveabout/app/ag;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/ad;->a(Lcom/google/android/maps/driveabout/app/ag;)V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_70} :catch_71

    goto :goto_61

    .line 565
    :catch_71
    move-exception v0

    .line 568
    const-string v1, "DestinationHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception opening database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ad;->a()V

    .line 570
    iput-object v13, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    .line 571
    iput-object v13, p0, Lcom/google/android/maps/driveabout/app/ad;->f:Ljava/util/HashMap;

    move v0, v10

    .line 572
    goto/16 :goto_8

    .line 563
    :cond_94
    :try_start_94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_97} :catch_71

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v11

    move v0, v9

    .line 578
    goto/16 :goto_8
.end method


# virtual methods
.method public declared-synchronized a(Ln/s;I)Ljava/util/List;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ad;->b()Z

    move-result v0

    if-nez v0, :cond_e

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_55

    .line 373
    :goto_c
    monitor-exit p0

    return-object v0

    .line 355
    :cond_e
    :try_start_e
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_23
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 359
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ag;

    .line 360
    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/ag;->c:Lo/P;

    iget v2, v0, Lcom/google/android/maps/driveabout/app/ag;->a:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/aj;->c()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/aj;->b()I

    move-result v6

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/ad;->a(Lo/P;ILjava/util/List;Ln/s;II)Lcom/google/android/maps/driveabout/app/ai;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_55

    goto :goto_23

    .line 343
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :cond_58
    :try_start_58
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 368
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 369
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    const/4 v0, 0x0

    move v2, v0

    :goto_6a
    if-ge v2, v3, :cond_84

    .line 371
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/ai;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/ai;->b(Lcom/google/android/maps/driveabout/app/ai;)Lo/P;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_58 .. :try_end_80} :catchall_55

    .line 370
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6a

    :cond_84
    move-object v0, v1

    .line 373
    goto :goto_c
.end method

.method public a()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    .line 328
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_d

    .line 330
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 332
    :cond_c
    return-void

    .line 329
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public declared-synchronized a(Lo/P;Lo/P;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ad;->b()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3e

    move-result v0

    if-nez v0, :cond_9

    .line 392
    :goto_7
    monitor-exit p0

    return-void

    .line 382
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/maps/driveabout/app/ag;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ad;->g:I

    invoke-virtual {p1}, Lo/P;->c()Ln/s;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/aj;->a()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/aj;->c()I

    move-result v6

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/aj;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/app/aj;->b()I

    move-result v7

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/ag;-><init>(ILn/s;Lo/P;JII)V

    .line 385
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ad;->a(Lcom/google/android/maps/driveabout/app/ag;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_3e

    .line 388
    :try_start_2a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ad;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "destination_history"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ag;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_3e
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_36} :catch_37

    goto :goto_7

    .line 389
    :catch_37
    move-exception v0

    .line 390
    :try_start_38
    const-string v1, "Error inserting entry"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3e

    goto :goto_7

    .line 378
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
