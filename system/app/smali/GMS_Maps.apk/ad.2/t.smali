.class public Lad/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lad/v;

.field protected b:Lad/v;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final d:[Lad/n;

.field private final e:[Lad/u;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private j:I

.field private k:Lat/B;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 207
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-direct {p0, v0}, Lad/t;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x15

    const/4 v2, -0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v2, p0, Lad/t;->j:I

    .line 211
    iput v2, p0, Lad/t;->j:I

    .line 212
    iput-object p1, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 214
    invoke-direct {p0}, Lad/t;->Q()[Lad/n;

    move-result-object v0

    iput-object v0, p0, Lad/t;->d:[Lad/n;

    .line 215
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    new-array v0, v0, [Lad/u;

    iput-object v0, p0, Lad/t;->e:[Lad/u;

    .line 216
    invoke-direct {p0}, Lad/t;->R()V

    .line 217
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lad/t;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v1

    iput v1, p0, Lad/t;->f:I

    .line 220
    invoke-static {v0}, Lad/t;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v1

    iput v1, p0, Lad/t;->g:I

    .line 221
    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lad/t;->h:I

    .line 223
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 224
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lad/t;->i:Z

    .line 228
    :goto_4c
    return-void

    .line 226
    :cond_4d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lad/t;->i:Z

    goto :goto_4c
.end method

.method private Q()[Lad/n;
    .registers 12

    .prologue
    const/16 v2, 0x13

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 484
    new-array v0, v1, [Lad/n;

    .line 501
    :goto_f
    return-object v0

    .line 487
    :cond_10
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 488
    invoke-virtual {v4, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 489
    new-array v2, v5, [Lad/n;

    move v3, v1

    .line 490
    :goto_1d
    if-ge v3, v5, :cond_3d

    .line 491
    invoke-virtual {v4, v10, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 494
    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 495
    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 498
    :goto_2d
    new-instance v7, Lad/n;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v0, v6}, Lad/n;-><init>(ILjava/lang/String;)V

    aput-object v7, v2, v3

    .line 490
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_3d
    move-object v0, v2

    .line 501
    goto :goto_f

    :cond_3f
    move v0, v1

    goto :goto_2d
.end method

.method private R()V
    .registers 15

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 556
    invoke-virtual {p0}, Lad/t;->C()I

    move-result v0

    if-ne v0, v10, :cond_11

    .line 557
    invoke-static {p0}, Lad/v;->a(Lad/t;)Lad/v;

    move-result-object v0

    iput-object v0, p0, Lad/t;->a:Lad/v;

    .line 559
    :cond_11
    iget-object v6, p0, Lad/t;->a:Lad/v;

    .line 560
    const/4 v0, 0x0

    move v7, v0

    :goto_15
    iget-object v0, p0, Lad/t;->e:[Lad/u;

    array-length v0, v0

    if-ge v7, v0, :cond_82

    .line 561
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 563
    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 564
    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 565
    invoke-static {v1}, Lcom/google/googlenav/ui/bi;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v3

    .line 568
    :goto_30
    invoke-virtual {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 569
    invoke-virtual {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 570
    invoke-static {v1}, Lcom/google/googlenav/ui/bi;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v4

    .line 573
    :goto_3e
    invoke-virtual {v0, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 574
    invoke-virtual {v0, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-static {v1}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v5

    .line 576
    :goto_4c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 579
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iget v6, v6, Lad/v;->b:I

    invoke-static {v0, v6}, Lad/v;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lad/v;

    move-result-object v6

    .line 581
    iget-object v9, p0, Lad/t;->e:[Lad/u;

    new-instance v0, Lad/u;

    invoke-direct/range {v0 .. v6}, Lad/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lat/B;Lad/v;)V

    aput-object v0, v9, v7

    .line 582
    invoke-static {v6}, Lad/v;->a(Lad/v;)Lad/v;

    move-result-object v6

    .line 560
    :goto_74
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_15

    .line 584
    :cond_78
    iget-object v9, p0, Lad/t;->e:[Lad/u;

    new-instance v0, Lad/u;

    invoke-direct/range {v0 .. v6}, Lad/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lat/B;Lad/v;)V

    aput-object v0, v9, v7

    goto :goto_74

    .line 588
    :cond_82
    iput-object v6, p0, Lad/t;->b:Lad/v;

    .line 589
    return-void

    :cond_85
    move-object v5, v8

    goto :goto_4c

    :cond_87
    move-object v4, v8

    goto :goto_3e

    :cond_89
    move-object v3, v8

    goto :goto_30
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 242
    .line 243
    if-eqz p0, :cond_16

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 245
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 246
    if-ltz v0, :cond_14

    const/16 v2, 0x12

    if-lt v0, v2, :cond_15

    :cond_14
    move v0, v1

    .line 250
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 257
    .line 258
    if-eqz p0, :cond_15

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 260
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 261
    if-ltz v0, :cond_13

    const/4 v2, 0x3

    if-lt v0, v2, :cond_14

    :cond_13
    move v0, v1

    .line 265
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14
.end method

.method private e(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 505
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lad/t;->d:[Lad/n;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 506
    iget-object v1, p0, Lad/t;->d:[Lad/n;

    aget-object v1, v1, v0

    .line 507
    invoke-virtual {v1}, Lad/n;->a()I

    move-result v2

    if-ne v2, p1, :cond_15

    .line 508
    invoke-virtual {v1}, Lad/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_14
    return-object v0

    .line 505
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public A()Z
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lad/t;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 422
    iget-object v0, p0, Lad/t;->l:Ljava/lang/String;

    .line 434
    :goto_6
    return-object v0

    .line 428
    :cond_7
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lad/t;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_33

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_33
    iput-object v0, p0, Lad/t;->l:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lad/t;->l:Ljava/lang/String;

    goto :goto_6
.end method

.method public C()I
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method public D()I
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()[Lad/n;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lad/t;->d:[Lad/n;

    return-object v0
.end method

.method public G()I
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v0

    add-int/lit8 v1, v0, 0x14

    .line 520
    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lad/t;->d:[Lad/n;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    .line 521
    iget-object v2, p0, Lad/t;->d:[Lad/n;

    aget-object v2, v2, v0

    .line 522
    invoke-virtual {v2}, Lad/n;->d()I

    move-result v2

    add-int/2addr v1, v2

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 524
    :cond_1a
    return v1
.end method

.method public H()Z
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public I()I
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public J()Z
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public K()I
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public L()Z
    .registers 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lad/t;->m:Z

    return v0
.end method

.method public M()V
    .registers 2

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lad/t;->m:Z

    .line 549
    return-void
.end method

.method public N()V
    .registers 2

    .prologue
    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lad/t;->m:Z

    .line 553
    return-void
.end method

.method public O()[Lad/u;
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lad/t;->e:[Lad/u;

    return-object v0
.end method

.method public P()Z
    .registers 3

    .prologue
    .line 664
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public a()Lad/v;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lad/t;->a:Lad/v;

    return-object v0
.end method

.method public a(Lad/b;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 451
    iget-boolean v0, p0, Lad/t;->i:Z

    if-nez v0, :cond_7

    .line 452
    const-string v0, ""

    .line 460
    :goto_6
    return-object v0

    .line 454
    :cond_7
    invoke-virtual {p0}, Lad/t;->D()I

    move-result v0

    invoke-virtual {p1, v0}, Lad/b;->j(I)Lad/d;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_25

    .line 458
    invoke-virtual {v0}, Lad/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {v0}, Lad/d;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_20
    invoke-virtual {v0}, Lad/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 460
    :cond_25
    const-string v0, ""

    goto :goto_6
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 366
    return-void
.end method

.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 386
    return-void
.end method

.method public a(Lat/B;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lad/t;->k:Lat/B;

    .line 294
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 334
    return-void
.end method

.method public b()Lad/v;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lad/t;->b:Lad/v;

    return-object v0
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 378
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lad/t;->f:I

    return v0
.end method

.method public c(I)V
    .registers 4
    .parameter

    .prologue
    .line 404
    iput p1, p0, Lad/t;->j:I

    .line 405
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 406
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lad/t;->g:I

    return v0
.end method

.method public d(I)V
    .registers 4
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 443
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lad/t;->h:I

    return v0
.end method

.method public f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public g()Lat/B;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lad/t;->k:Lat/B;

    return-object v0
.end method

.method public h()Ln/B;
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_f

    .line 302
    invoke-static {v0}, Ln/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v0

    .line 305
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public k()Lat/B;
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Lat/B;
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public r()I
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 3

    .prologue
    .line 369
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public v()I
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    return v0
.end method

.method public w()J
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public x()Ljava/lang/String;
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 3

    .prologue
    .line 393
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .registers 3

    .prologue
    .line 397
    iget v0, p0, Lad/t;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 398
    iget-object v0, p0, Lad/t;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lad/t;->j:I

    .line 400
    :cond_e
    iget v0, p0, Lad/t;->j:I

    return v0
.end method
