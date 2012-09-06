.class public Lo/g;
.super Lac/a;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:[Lo/P;

.field private final c:[Lo/b;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:F

.field private final i:Lo/P;

.field private final j:I

.field private l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private m:I

.field private n:[Lo/x;

.field private o:[Lo/P;

.field private p:[Lo/b;


# direct methods
.method private constructor <init>([Lo/P;IFFZLo/P;III[Lo/b;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lo/g;->m:I

    .line 140
    iput-object p1, p0, Lo/g;->b:[Lo/P;

    .line 141
    iput p2, p0, Lo/g;->a:I

    .line 142
    iput p9, p0, Lo/g;->j:I

    .line 143
    iput p3, p0, Lo/g;->g:F

    .line 144
    iput p4, p0, Lo/g;->h:F

    .line 145
    iput-boolean p5, p0, Lo/g;->d:Z

    .line 146
    iput-object p6, p0, Lo/g;->i:Lo/P;

    .line 147
    iput p8, p0, Lo/g;->f:I

    .line 148
    iput-object p10, p0, Lo/g;->c:[Lo/b;

    .line 149
    iput p7, p0, Lo/g;->e:I

    .line 151
    sget-object v0, Lo/g;->k:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 152
    invoke-direct {p0}, Lo/g;->t()V

    .line 154
    :cond_21
    return-void
.end method

.method synthetic constructor <init>([Lo/P;IFFZLo/P;III[Lo/b;Lo/h;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p10}, Lo/g;-><init>([Lo/P;IFFZLo/P;III[Lo/b;)V

    return-void
.end method

.method static synthetic a(Lo/g;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lo/g;->m:I

    return p1
.end method

.method static synthetic a([Lo/P;)Z
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lo/g;->b([Lo/P;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)[Lo/P;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 563
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 564
    new-array v3, v2, [Lo/P;

    move v0, v1

    .line 565
    :goto_b
    if-ge v0, v2, :cond_3c

    .line 566
    invoke-virtual {p0, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 568
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 570
    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_33

    .line 571
    new-instance v6, Lo/P;

    invoke-direct {v6, v5, p1}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v6, v3, v0

    .line 576
    :goto_21
    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 577
    aget-object v5, v3, v0

    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lo/P;->a(Ljava/lang/String;)V

    .line 565
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 573
    :cond_33
    new-instance v6, Lo/P;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v6, v3, v0

    goto :goto_21

    .line 581
    :cond_3c
    return-object v3
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lo/P;)[Lo/x;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/16 v12, 0x8

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p1, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v10

    .line 509
    new-array v11, v10, [Lo/x;

    .line 510
    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v7

    .line 515
    if-le v7, v2, :cond_13

    move v7, v0

    .line 520
    :cond_13
    if-ne v7, v2, :cond_1e

    const/16 v1, 0x17

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 523
    const/4 v7, 0x3

    :cond_1e
    move v9, v0

    .line 526
    :goto_1f
    if-ge v9, v10, :cond_3c

    .line 527
    invoke-virtual {p1, v12, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 528
    iget v1, p0, Lo/g;->j:I

    iget v3, p0, Lo/g;->g:F

    iget v4, p0, Lo/g;->h:F

    iget-boolean v5, p0, Lo/g;->d:Z

    iget-object v6, p0, Lo/g;->i:Lo/P;

    iget-object v8, p0, Lo/g;->p:[Lo/b;

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lo/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I[Lo/P;FFZLo/P;I[Lo/b;)Lo/x;

    move-result-object v0

    aput-object v0, v11, v9

    .line 526
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1f

    .line 532
    :cond_3c
    return-object v11
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 728
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method private static b([Lo/P;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 273
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    .line 274
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lo/P;->c()Ln/s;

    move-result-object v3

    .line 275
    if-eqz v2, :cond_40

    if-eqz v3, :cond_40

    .line 276
    invoke-virtual {v2}, Ln/s;->a()I

    move-result v4

    invoke-virtual {v2}, Ln/s;->b()I

    move-result v2

    invoke-static {v4, v2}, Ln/Q;->b(II)Ln/Q;

    move-result-object v2

    .line 277
    invoke-virtual {v3}, Ln/s;->a()I

    move-result v4

    invoke-virtual {v3}, Ln/s;->b()I

    move-result v3

    invoke-static {v4, v3}, Ln/Q;->b(II)Ln/Q;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Ln/Q;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    .line 279
    const-wide/high16 v4, 0x4000

    cmpg-double v2, v2, v4

    if-gez v2, :cond_40

    .line 284
    :goto_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_3f
.end method

.method static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/b;
    .registers 8
    .parameter

    .prologue
    const/16 v6, 0xe

    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 590
    new-array v0, v3, [Lo/b;

    move v1, v2

    .line 591
    :goto_a
    if-ge v1, v3, :cond_39

    .line 592
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 593
    invoke-static {v4}, Lo/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/b;

    move-result-object v5

    aput-object v5, v0, v1

    .line 594
    aget-object v5, v0, v1

    if-nez v5, :cond_3a

    .line 597
    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option with no value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-array v0, v2, [Lo/b;

    .line 602
    :cond_39
    return-object v0

    .line 591
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/P;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 541
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 542
    if-nez v0, :cond_c

    .line 543
    new-array v0, v1, [Lo/P;

    .line 555
    :cond_b
    return-object v0

    .line 545
    :cond_c
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 547
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 549
    new-array v0, v3, [Lo/P;

    .line 550
    :goto_18
    if-ge v1, v3, :cond_b

    .line 551
    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 553
    new-instance v5, Lo/P;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v5, v0, v1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method private s()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 477
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lo/g;->m:I

    .line 479
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lo/g;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/b;

    move-result-object v0

    iput-object v0, p0, Lo/g;->p:[Lo/b;

    .line 482
    invoke-direct {p0}, Lo/g;->u()V

    .line 484
    invoke-virtual {p0}, Lo/g;->f_()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 485
    iget-object v0, p0, Lo/g;->b:[Lo/P;

    iget-object v1, p0, Lo/g;->b:[Lo/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lo/P;->e()Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v1, v0}, Lo/g;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)[Lo/P;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v1, v0}, Lo/g;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lo/P;)[Lo/x;

    move-result-object v0

    iput-object v0, p0, Lo/g;->n:[Lo/x;

    .line 488
    iget v0, p0, Lo/g;->j:I

    if-ne v0, v2, :cond_42

    iget-object v0, p0, Lo/g;->n:[Lo/x;

    array-length v0, v0

    if-ge v0, v2, :cond_42

    .line 491
    const/4 v0, 0x4

    iput v0, p0, Lo/g;->m:I

    .line 505
    :cond_42
    :goto_42
    return-void

    .line 493
    :cond_43
    invoke-virtual {p0}, Lo/g;->m()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 494
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lo/g;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/P;

    move-result-object v0

    iput-object v0, p0, Lo/g;->o:[Lo/P;

    .line 498
    iget-object v0, p0, Lo/g;->o:[Lo/P;

    array-length v0, v0

    if-nez v0, :cond_42

    .line 499
    const/4 v0, 0x3

    iput v0, p0, Lo/g;->m:I

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lo/g;->o:[Lo/P;

    goto :goto_42

    .line 503
    :cond_5d
    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/g;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private t()V
    .registers 2

    .prologue
    .line 684
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_10

    .line 686
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/g;->k:Ljava/lang/String;

    .line 688
    :cond_10
    return-void
.end method

.method private u()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 700
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    .line 724
    :cond_6
    :goto_6
    return-void

    .line 703
    :cond_7
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 704
    if-lt v1, v3, :cond_6

    .line 710
    const/4 v0, 0x0

    :goto_11
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1e

    .line 711
    invoke-direct {p0, v0}, Lo/g;->b(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 719
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lo/g;->b(I)I

    move-result v0

    .line 720
    if-ne v0, v3, :cond_6

    .line 722
    iput v3, p0, Lo/g;->m:I

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 425
    const/16 v0, 0x1c

    return v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 769
    iput p1, p0, Lo/g;->m:I

    .line 770
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 435
    invoke-direct {p0}, Lo/g;->s()V

    .line 436
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 468
    invoke-virtual {p0}, Lo/g;->r()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 469
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 444
    :try_start_0
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/g;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_9} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_22

    .line 460
    const/4 v0, 0x1

    return v0

    .line 446
    :catch_b
    move-exception v0

    .line 447
    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    const-string v1, "DirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    throw v0

    .line 450
    :catch_17
    move-exception v0

    .line 453
    const-string v1, "DirectionsRequest"

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    throw v0

    .line 455
    :catch_22
    move-exception v0

    .line 456
    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    const-string v1, "DirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    throw v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lo/g;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public c()[Lo/x;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lo/g;->n:[Lo/x;

    return-object v0
.end method

.method public d()[Lo/b;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lo/g;->p:[Lo/b;

    return-object v0
.end method

.method public e()[Lo/P;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lo/g;->o:[Lo/P;

    return-object v0
.end method

.method public e_()Z
    .registers 3

    .prologue
    .line 357
    iget v0, p0, Lo/g;->j:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 350
    iget v0, p0, Lo/g;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f_()Z
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lo/g;->m:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g_()Z
    .registers 3

    .prologue
    .line 378
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lo/g;->e:I

    return v0
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 386
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 395
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 404
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 411
    iget v0, p0, Lo/g;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o()I
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lo/g;->j:I

    return v0
.end method

.method public p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lo/g;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method r()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 10

    .prologue
    const v4, 0x186a0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 610
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 611
    iget v0, p0, Lo/g;->a:I

    invoke-virtual {v2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    move v0, v1

    .line 612
    :goto_14
    iget-object v3, p0, Lo/g;->b:[Lo/P;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 613
    iget-object v3, p0, Lo/g;->b:[Lo/P;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lo/P;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 616
    :cond_27
    const/4 v0, 0x5

    iget v3, p0, Lo/g;->f:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 618
    iget v0, p0, Lo/g;->f:I

    if-le v0, v6, :cond_4b

    .line 621
    const/16 v0, 0x16

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 623
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->g()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->j()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 627
    const/16 v0, 0x20

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 630
    :cond_4b
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 632
    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 633
    const/16 v0, 0xf

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 635
    const/16 v0, 0x14

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 636
    const/16 v0, 0xb

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 637
    const/16 v0, 0x26

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 638
    const/16 v0, 0x19

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 639
    const/16 v0, 0x15

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 640
    const/16 v0, 0x10

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 641
    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 642
    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 643
    const/16 v0, 0x17

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 644
    const/16 v0, 0x18

    iget v3, p0, Lo/g;->j:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 646
    sget-object v0, Lo/g;->k:Ljava/lang/String;

    if-eqz v0, :cond_9a

    .line 647
    const/16 v0, 0x23

    sget-object v3, Lo/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 653
    :cond_9a
    iget v0, p0, Lo/g;->j:I

    if-nez v0, :cond_c0

    .line 654
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 655
    iget-object v3, p0, Lo/g;->b:[Lo/P;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lo/P;->c()Ln/s;

    move-result-object v3

    invoke-static {v3}, Lt/e;->b(Ln/s;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 657
    invoke-virtual {v0, v8, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 658
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 659
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 662
    :cond_c0
    iget-object v0, p0, Lo/g;->c:[Lo/b;

    if-eqz v0, :cond_d7

    .line 663
    iget-object v0, p0, Lo/g;->c:[Lo/b;

    array-length v3, v0

    :goto_c7
    if-ge v1, v3, :cond_d7

    aget-object v4, v0, v1

    .line 664
    const/16 v5, 0xa

    invoke-virtual {v4}, Lo/b;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 669
    :cond_d7
    iget v0, p0, Lo/g;->g:F

    cmpl-float v0, v0, v7

    if-gez v0, :cond_e3

    iget v0, p0, Lo/g;->h:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_107

    .line 670
    :cond_e3
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->z:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 671
    iget v1, p0, Lo/g;->g:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_f6

    .line 672
    iget v1, p0, Lo/g;->g:F

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 674
    :cond_f6
    iget v1, p0, Lo/g;->h:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_102

    .line 675
    iget v1, p0, Lo/g;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 677
    :cond_102
    const/16 v1, 0x11

    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 680
    :cond_107
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lo/g;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 736
    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lo/g;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    const-string v0, " startBearing:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lo/g;->g:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 738
    const-string v0, " startSpeed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lo/g;->h:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 739
    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 740
    :goto_3a
    iget-object v3, p0, Lo/g;->b:[Lo/P;

    array-length v3, v3

    if-ge v0, v3, :cond_60

    .line 741
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lo/g;->b:[Lo/P;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v3, p0, Lo/g;->b:[Lo/P;

    aget-object v3, v3, v0

    iget-object v4, p0, Lo/g;->i:Lo/P;

    invoke-virtual {v3, v4}, Lo/P;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 743
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 746
    :cond_60
    iget-boolean v0, p0, Lo/g;->d:Z

    if-eqz v0, :cond_69

    .line 747
    const-string v0, " hasUncertainFromPoint:true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_69
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lo/g;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 750
    iget-object v0, p0, Lo/g;->c:[Lo/b;

    if-eqz v0, :cond_8b

    .line 751
    iget-object v0, p0, Lo/g;->c:[Lo/b;

    array-length v3, v0

    :goto_7b
    if-ge v1, v3, :cond_8b

    aget-object v4, v0, v1

    .line 752
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 755
    :cond_8b
    iget v0, p0, Lo/g;->e:I

    if-eqz v0, :cond_9a

    .line 756
    const-string v0, " previousAlternateExtraMeters:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 758
    :cond_9a
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
