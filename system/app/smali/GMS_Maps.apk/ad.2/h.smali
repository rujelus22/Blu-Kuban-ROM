.class public Lad/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lad/t;

.field protected b:Ljava/util/List;

.field final synthetic c:Lad/b;

.field private d:[Lat/B;

.field private e:[I

.field private f:[Lad/m;

.field private g:Ljava/util/List;

.field private h:[Lat/B;

.field private i:Lat/B;

.field private j:Lat/B;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Z

.field private o:I

.field private p:Lad/f;

.field private q:Ljava/lang/String;

.field private r:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private s:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:Lat/B;


# direct methods
.method constructor <init>(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2261
    iput-object p1, p0, Lad/h;->c:Lad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    new-array v0, v1, [I

    iput-object v0, p0, Lad/h;->e:[I

    .line 2246
    iput-boolean v1, p0, Lad/h;->t:Z

    .line 2262
    return-void
.end method

.method constructor <init>(Lad/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2264
    iput-object p1, p0, Lad/h;->c:Lad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    new-array v0, v1, [I

    iput-object v0, p0, Lad/h;->e:[I

    .line 2246
    iput-boolean v1, p0, Lad/h;->t:Z

    .line 2269
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2270
    invoke-direct {p0, p2}, Lad/h;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2271
    invoke-direct {p0, p2}, Lad/h;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lad/h;->b:Ljava/util/List;

    .line 2272
    invoke-direct {p0, v0}, Lad/h;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    iput-boolean v1, p0, Lad/h;->t:Z

    .line 2273
    invoke-direct {p0, v0}, Lad/h;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2274
    invoke-virtual {p0}, Lad/h;->v()V

    .line 2275
    invoke-direct {p0, v0}, Lad/h;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2276
    return-void
.end method

.method static synthetic a(Lad/h;)I
    .registers 2
    .parameter

    .prologue
    .line 2211
    iget v0, p0, Lad/h;->x:I

    return v0
.end method

.method static synthetic a(Lad/h;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2211
    iput p1, p0, Lad/h;->o:I

    return p1
.end method

.method static synthetic a(Lad/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2211
    invoke-direct {p0, p1, p2}, Lad/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 3008
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lad/h;->o:I

    .line 3010
    if-eqz p2, :cond_16

    .line 3011
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    iput-boolean v0, p0, Lad/h;->l:Z

    .line 3012
    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lad/h;->k:I

    .line 3015
    :cond_16
    iget v0, p0, Lad/h;->o:I

    iget v1, p0, Lad/h;->k:I

    invoke-static {v0, v1}, Lad/f;->a(II)Lad/f;

    move-result-object v0

    iput-object v0, p0, Lad/h;->p:Lad/f;

    .line 3016
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2479
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2481
    iget-object v2, p0, Lad/h;->c:Lad/b;

    invoke-static {v2}, Lad/b;->a(Lad/b;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 2482
    iget-object v2, p0, Lad/h;->c:Lad/b;

    invoke-static {v0}, Lad/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v3

    invoke-static {v2, v3}, Lad/b;->a(Lad/b;I)I

    .line 2484
    :cond_19
    iget-object v3, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v4

    aput-object v4, v3, p2

    .line 2486
    invoke-static {v0}, Lat/C;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/Y;

    move-result-object v3

    .line 2488
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 2490
    if-nez v0, :cond_31

    .line 2491
    new-array v0, v1, [B

    .line 2493
    :cond_31
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2497
    :goto_3b
    :try_start_3b
    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v5

    .line 2498
    invoke-interface {v4}, Ljava/io/DataInput;->readShort()S

    move-result v6

    .line 2499
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    .line 2500
    iget-object v0, p0, Lad/h;->c:Lad/b;

    invoke-static {v0}, Lad/b;->a(Lad/b;)I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_5e

    .line 2501
    iget-object v8, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v7, v5, v6, v3}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v5

    aput-object v5, v8, v2

    :goto_5c
    move v2, v0

    .line 2506
    goto :goto_3b

    .line 2503
    :cond_5e
    iget-object v8, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v0, v2, 0x1

    new-instance v9, Lat/B;

    invoke-virtual {v7}, Lat/B;->c()I

    move-result v10

    add-int/2addr v5, v10

    invoke-virtual {v7}, Lat/B;->e()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v9, v5, v6}, Lat/B;-><init>(II)V

    aput-object v9, v8, v2
    :try_end_73
    .catch Ljava/io/EOFException; {:try_start_3b .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_73} :catch_77

    goto :goto_5c

    .line 2507
    :catch_74
    move-exception v0

    .line 2513
    const/4 v0, 0x1

    :goto_76
    return v0

    .line 2509
    :catch_77
    move-exception v0

    move v0, v1

    .line 2511
    goto :goto_76
.end method

.method static synthetic b(Lad/h;)I
    .registers 2
    .parameter

    .prologue
    .line 2211
    iget v0, p0, Lad/h;->w:I

    return v0
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2434
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2435
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lad/h;->v:Ljava/lang/String;

    .line 2436
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    iput-boolean v1, p0, Lad/h;->l:Z

    .line 2437
    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    iput v1, p0, Lad/h;->k:I

    .line 2439
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    iput-boolean v1, p0, Lad/h;->n:Z

    .line 2440
    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    iput v1, p0, Lad/h;->m:I

    .line 2442
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lad/h;->q:Ljava/lang/String;

    .line 2443
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    iput v1, p0, Lad/h;->o:I

    .line 2445
    iget v1, p0, Lad/h;->o:I

    iget v2, p0, Lad/h;->k:I

    invoke-static {v1, v2}, Lad/f;->a(II)Lad/f;

    move-result-object v1

    iput-object v1, p0, Lad/h;->p:Lad/f;

    .line 2446
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    iput-object v1, p0, Lad/h;->r:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2447
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lad/h;->s:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2448
    return-void
.end method

.method static synthetic c(Lad/h;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 2211
    iget-object v0, p0, Lad/h;->y:Lat/B;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x1a

    .line 2456
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 2458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2459
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1d

    .line 2460
    new-instance v3, Lad/g;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lad/g;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2463
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2466
    :cond_1d
    return-object v2
.end method

.method static synthetic d(Lad/h;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 2211
    iget-object v0, p0, Lad/h;->i:Lat/B;

    return-object v0
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 22
    .parameter

    .prologue
    .line 2521
    move-object/from16 v0, p0

    iget-object v2, v0, Lad/h;->d:[Lat/B;

    array-length v12, v2

    .line 2522
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 2523
    if-nez v13, :cond_10

    .line 2572
    :cond_f
    :goto_f
    return-void

    .line 2526
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lad/h;->k:I

    move-object/from16 v0, p0

    iget v3, v0, Lad/h;->o:I

    add-int/2addr v3, v2

    .line 2527
    new-array v2, v12, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lad/h;->e:[I

    .line 2528
    move-object/from16 v0, p0

    iget-object v2, v0, Lad/h;->e:[I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 2529
    new-array v14, v12, [I

    .line 2530
    const/4 v4, 0x0

    .line 2531
    const/4 v2, 0x1

    :goto_2a
    if-ge v2, v12, :cond_4b

    .line 2532
    move-object/from16 v0, p0

    iget-object v5, v0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lad/h;->d:[Lat/B;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    sget-object v7, Lad/b;->d:Lat/Y;

    invoke-virtual {v5, v6, v7}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v14, v2

    .line 2531
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 2535
    :cond_4b
    const/4 v2, 0x0

    move v8, v2

    move v10, v3

    :goto_4e
    if-ge v8, v13, :cond_f

    .line 2536
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2538
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v11

    .line 2540
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    .line 2544
    if-lt v9, v12, :cond_6e

    .line 2545
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lad/h;->e:[I

    goto :goto_f

    .line 2548
    :cond_6e
    if-eqz v9, :cond_b2

    .line 2550
    const-wide/16 v2, 0x0

    move v5, v4

    .line 2551
    :goto_73
    if-ge v5, v9, :cond_80

    .line 2552
    add-int/lit8 v6, v5, 0x1

    aget v6, v14, v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 2551
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v2, v6

    goto :goto_73

    .line 2554
    :cond_80
    const-wide/16 v5, 0x0

    .line 2557
    const-wide/16 v15, 0x0

    cmp-long v7, v2, v15

    if-nez v7, :cond_8a

    .line 2558
    const-wide/16 v2, 0x1

    .line 2560
    :cond_8a
    :goto_8a
    if-ge v4, v9, :cond_b9

    .line 2561
    add-int/lit8 v7, v4, 0x1

    aget v7, v14, v7

    int-to-long v15, v7

    add-long/2addr v5, v15

    .line 2563
    move-object/from16 v0, p0

    iget-object v7, v0, Lad/h;->e:[I

    add-int/lit8 v15, v4, 0x1

    int-to-long v0, v10

    move-wide/from16 v16, v0

    sub-int v18, v11, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v5

    div-long v18, v18, v2

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v7, v15

    .line 2560
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 2567
    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lad/h;->e:[I

    const/4 v3, 0x0

    aput v11, v2, v3

    .line 2535
    :cond_b9
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v4, v9

    move v10, v11

    goto :goto_4e
.end method

.method private e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v0, 0x0

    .line 2672
    iget-object v1, p0, Lad/h;->c:Lad/b;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lad/b;->a(Lad/b;I)I

    .line 2673
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v1, v0

    move v2, v0

    .line 2675
    :goto_e
    if-ge v1, v3, :cond_1c

    .line 2676
    invoke-virtual {p1, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lad/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2675
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2679
    :cond_1c
    new-array v1, v2, [Lat/B;

    iput-object v1, p0, Lad/h;->d:[Lat/B;

    move v1, v0

    move v2, v0

    .line 2680
    :goto_22
    if-ge v2, v3, :cond_37

    .line 2681
    invoke-virtual {p1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 2683
    invoke-direct {p0, v4, v1}, Lad/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 2690
    :goto_2e
    return v0

    .line 2686
    :cond_2f
    invoke-static {v4}, Lad/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v4

    add-int/2addr v1, v4

    .line 2680
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 2688
    :cond_37
    iget-object v1, p0, Lad/h;->d:[Lat/B;

    aget-object v0, v1, v0

    iput-object v0, p0, Lad/h;->i:Lat/B;

    .line 2689
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    iget-object v1, p0, Lad/h;->d:[Lat/B;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lad/h;->j:Lat/B;

    .line 2690
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 16
    .parameter

    .prologue
    .line 2694
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 2699
    if-lez v0, :cond_57

    const/16 v1, 0xa

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_57

    .line 2702
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/aY;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2704
    const/4 v2, 0x7

    iget-object v3, p0, Lad/h;->c:Lad/b;

    invoke-static {v3}, Lad/b;->b(Lad/b;)Lad/y;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bA;->a(Lad/y;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2706
    const/4 v2, 0x5

    iget-object v3, p0, Lad/h;->d:[Lat/B;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2707
    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2710
    const/16 v2, 0xa

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 2712
    if-eqz v2, :cond_50

    .line 2713
    const/16 v3, 0x19

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2716
    :cond_50
    add-int/lit8 v0, v0, 0x1

    .line 2717
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2720
    :cond_57
    new-array v1, v0, [Lad/t;

    iput-object v1, p0, Lad/h;->a:[Lad/t;

    .line 2721
    new-array v1, v0, [Lat/B;

    iput-object v1, p0, Lad/h;->h:[Lat/B;

    .line 2722
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lad/h;->g:Ljava/util/List;

    .line 2726
    const/4 v1, 0x0

    iput-boolean v1, p0, Lad/h;->u:Z

    .line 2727
    const/4 v2, 0x0

    .line 2729
    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v13

    :goto_6d
    if-ge v2, v0, :cond_100

    .line 2730
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    new-instance v4, Lad/t;

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v4, v5}, Lad/t;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v4, v3, v2

    .line 2732
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lad/t;->z()I

    move-result v3

    iget-object v4, p0, Lad/h;->d:[Lat/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_99

    .line 2733
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    aget-object v3, v3, v2

    iget-object v4, p0, Lad/h;->d:[Lat/B;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lad/t;->c(I)V

    .line 2735
    :cond_99
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    aget-object v3, v3, v2

    iget-object v4, p0, Lad/h;->h:[Lat/B;

    iget-object v5, p0, Lad/h;->d:[Lat/B;

    iget-object v6, p0, Lad/h;->a:[Lad/t;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lad/t;->z()I

    move-result v6

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    invoke-virtual {v3, v5}, Lad/t;->a(Lat/B;)V

    .line 2741
    iget-boolean v3, p0, Lad/h;->u:Z

    if-nez v3, :cond_cd

    iget-object v3, p0, Lad/h;->c:Lad/b;

    invoke-virtual {v3}, Lad/b;->m()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 2742
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lad/t;->C()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_dc

    .line 2743
    if-eqz v1, :cond_cc

    .line 2744
    const/4 v1, 0x1

    iput-boolean v1, p0, Lad/h;->u:Z

    .line 2746
    :cond_cc
    const/4 v1, 0x1

    .line 2753
    :cond_cd
    :goto_cd
    if-nez v2, :cond_de

    .line 2754
    iget-object v3, p0, Lad/h;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2729
    :cond_d9
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 2748
    :cond_dc
    const/4 v1, 0x0

    goto :goto_cd

    .line 2755
    :cond_de
    iget-object v3, p0, Lad/h;->a:[Lad/t;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lad/t;->h()Ln/B;

    move-result-object v3

    iget-object v4, p0, Lad/h;->a:[Lad/t;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lad/t;->h()Ln/B;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 2756
    iget-object v3, p0, Lad/h;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 2762
    :cond_100
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    const/4 v7, 0x0

    .line 2765
    const/4 v11, 0x0

    .line 2766
    const/4 v2, 0x0

    :goto_108
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    array-length v0, v0

    if-ge v2, v0, :cond_1cc

    .line 2767
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v1, v0, v2

    .line 2768
    invoke-virtual {v1}, Lad/t;->z()I

    move-result v4

    .line 2769
    invoke-virtual {v1}, Lad/t;->A()Z

    move-result v0

    if-nez v0, :cond_120

    move v0, v11

    .line 2766
    :goto_11c
    add-int/lit8 v2, v2, 0x1

    move v11, v0

    goto :goto_108

    .line 2772
    :cond_120
    invoke-virtual {v1}, Lad/t;->C()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15b

    .line 2773
    new-instance v0, Lad/m;

    const/4 v3, 0x0

    iget-object v5, p0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lad/t;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lad/m;-><init>(Lad/t;IIILat/B;Ljava/lang/String;)V

    .line 2776
    invoke-virtual {p0}, Lad/h;->u()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 2777
    if-nez v7, :cond_1e3

    .line 2778
    new-instance v5, Lad/a;

    iget-object v3, p0, Lad/h;->d:[Lat/B;

    aget-object v9, v3, v4

    invoke-virtual {v1}, Lad/t;->E()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lad/a;-><init>(Lad/t;IILat/B;Ljava/lang/String;)V

    .line 2780
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2783
    :goto_150
    invoke-virtual {v5, v0}, Lad/a;->a(Lad/m;)V

    :goto_153
    move v0, v11

    move-object v7, v5

    .line 2787
    goto :goto_11c

    .line 2785
    :cond_156
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    goto :goto_153

    .line 2789
    :cond_15b
    invoke-virtual {v1}, Lad/t;->C()I

    move-result v0

    packed-switch v0, :pswitch_data_1e6

    .line 2799
    :pswitch_162
    const/4 v3, 0x0

    .line 2805
    :goto_163
    if-eqz v7, :cond_1e1

    .line 2806
    const/4 v0, 0x3

    if-ne v3, v0, :cond_1c3

    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    .line 2809
    :goto_170
    invoke-virtual {v7}, Lad/a;->m()Lad/t;

    move-result-object v5

    invoke-virtual {v5, v0}, Lad/t;->a(Ljava/lang/String;)V

    .line 2810
    const/4 v8, 0x0

    .line 2813
    :goto_178
    new-instance v0, Lad/m;

    iget-object v5, p0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lad/t;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lad/m;-><init>(Lad/t;IIILat/B;Ljava/lang/String;)V

    .line 2816
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2818
    iget-object v4, p0, Lad/h;->c:Lad/b;

    invoke-virtual {v4}, Lad/b;->m()Z

    move-result v4

    if-eqz v4, :cond_1dd

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1dd

    .line 2821
    if-nez v11, :cond_1db

    .line 2822
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lad/m;->a(Z)V

    .line 2823
    const/4 v7, 0x1

    .line 2826
    :goto_19a
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lad/t;->z()I

    move-result v4

    .line 2827
    new-instance v0, Lad/m;

    const/4 v3, 0x2

    iget-object v5, p0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v4

    iget-object v6, p0, Lad/h;->a:[Lad/t;

    add-int/lit8 v9, v2, 0x1

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lad/t;->E()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lad/m;-><init>(Lad/t;IIILat/B;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    move-object v7, v8

    goto/16 :goto_11c

    .line 2791
    :pswitch_1bf
    const/4 v3, 0x3

    .line 2792
    goto :goto_163

    .line 2795
    :pswitch_1c1
    const/4 v3, 0x1

    .line 2796
    goto :goto_163

    .line 2806
    :cond_1c3
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_170

    .line 2833
    :cond_1cc
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lad/m;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad/m;

    iput-object v0, p0, Lad/h;->f:[Lad/m;

    .line 2834
    return-void

    :cond_1db
    move v7, v11

    goto :goto_19a

    :cond_1dd
    move v0, v11

    move-object v7, v8

    goto/16 :goto_11c

    :cond_1e1
    move-object v8, v7

    goto :goto_178

    :cond_1e3
    move-object v5, v7

    goto/16 :goto_150

    .line 2789
    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_1c1
        :pswitch_162
        :pswitch_162
        :pswitch_1bf
    .end packed-switch
.end method

.method private j(I)I
    .registers 5
    .parameter

    .prologue
    .line 2916
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 2917
    iget-object v1, p0, Lad/h;->c:Lad/b;

    invoke-static {v1}, Lad/b;->a(Lad/b;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 2918
    iget-object v1, p0, Lad/h;->d:[Lat/B;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    sub-int v0, v1, v0

    .line 2921
    :goto_1d
    return v0

    .line 2920
    :cond_1e
    const/16 v1, 0x16

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    .line 2921
    iget-object v2, p0, Lad/h;->d:[Lat/B;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lat/B;->a(Lat/Y;)I

    move-result v2

    invoke-virtual {v0, v1}, Lat/B;->a(Lat/Y;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_1d
.end method

.method private k(I)I
    .registers 5
    .parameter

    .prologue
    .line 2932
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 2933
    iget-object v1, p0, Lad/h;->c:Lad/b;

    invoke-static {v1}, Lad/b;->a(Lad/b;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 2934
    iget-object v1, p0, Lad/h;->d:[Lat/B;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    sub-int v0, v1, v0

    .line 2937
    :goto_1d
    return v0

    .line 2936
    :cond_1e
    const/16 v1, 0x16

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    .line 2937
    iget-object v2, p0, Lad/h;->d:[Lat/B;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lat/B;->b(Lat/Y;)I

    move-result v2

    invoke-virtual {v0, v1}, Lat/B;->b(Lat/Y;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_1d
.end method

.method private l(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2946
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_a

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public a(I)Lad/m;
    .registers 3
    .parameter

    .prologue
    .line 2287
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2279
    iget-object v0, p0, Lad/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2950
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2951
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2952
    iget-object v1, p0, Lad/h;->v:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2953
    const/16 v1, 0x14

    iget-object v2, p0, Lad/h;->v:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2955
    :cond_1e
    invoke-virtual {p0}, Lad/h;->l()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2956
    const/4 v1, 0x2

    invoke-virtual {p0}, Lad/h;->k()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2958
    :cond_2c
    invoke-virtual {p0}, Lad/h;->n()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2959
    invoke-virtual {p0}, Lad/h;->m()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2962
    :cond_39
    iget-object v1, p0, Lad/h;->q:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 2963
    const/4 v1, 0x6

    iget-object v2, p0, Lad/h;->q:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2966
    :cond_47
    iget-object v1, p0, Lad/h;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->l()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2970
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2973
    :cond_54
    iget-object v1, p0, Lad/h;->r:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_64

    .line 2974
    const/4 v1, 0x4

    iget-object v2, p0, Lad/h;->r:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2975
    const/4 v1, 0x5

    iget-object v2, p0, Lad/h;->s:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2978
    :cond_64
    iget-object v1, p0, Lad/h;->d:[Lat/B;

    aget-object v3, v1, v4

    .line 2979
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2980
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v5, v0

    move-object v0, v1

    move-object v1, v2

    .line 2982
    :goto_75
    :try_start_75
    iget-object v2, p0, Lad/h;->d:[Lat/B;

    array-length v2, v2

    if-ge v5, v2, :cond_c3

    .line 2983
    invoke-direct {p0, v5}, Lad/h;->j(I)I

    move-result v2

    .line 2984
    invoke-direct {p0, v5}, Lad/h;->k(I)I

    move-result v7

    .line 2985
    invoke-direct {p0, v2}, Lad/h;->l(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    invoke-direct {p0, v7}, Lad/h;->l(I)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 2986
    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 2987
    invoke-interface {v0, v7}, Ljava/io/DataOutput;->writeShort(I)V

    move-object v2, v3

    .line 2982
    :goto_95
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_75

    .line 2989
    :cond_9a
    const/4 v0, 0x7

    iget-object v2, p0, Lad/h;->c:Lad/b;

    invoke-static {v2}, Lad/b;->a(Lad/b;)I

    move-result v2

    invoke-static {v3, v2}, Lad/b;->a(Lat/B;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v2, v7}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 2992
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_b5} :catch_c2

    .line 2993
    :try_start_b5
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2994
    iget-object v1, p0, Lad/h;->d:[Lat/B;

    aget-object v1, v1, v5
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_ef

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_95

    .line 2997
    :catch_c2
    move-exception v0

    .line 3000
    :cond_c3
    :goto_c3
    iget-object v0, p0, Lad/h;->c:Lad/b;

    invoke-static {v0}, Lad/b;->a(Lad/b;)I

    move-result v0

    invoke-static {v3, v0}, Lad/b;->a(Lat/B;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v0, v4

    .line 3002
    :goto_d9
    iget-object v1, p0, Lad/h;->a:[Lad/t;

    array-length v1, v1

    if-ge v0, v1, :cond_ee

    .line 3003
    const/16 v1, 0xa

    iget-object v2, p0, Lad/h;->a:[Lad/t;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lad/t;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3002
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    .line 3005
    :cond_ee
    return-void

    .line 2997
    :catch_ef
    move-exception v0

    move-object v1, v2

    goto :goto_c3
.end method

.method a(III)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2582
    if-ge p3, p2, :cond_a

    .line 2583
    if-le p1, p3, :cond_8

    if-lt p1, p2, :cond_9

    :cond_8
    move v0, v1

    .line 2585
    :cond_9
    :goto_9
    return v0

    :cond_a
    if-gt p1, p3, :cond_10

    if-lt p1, p2, :cond_10

    :goto_e
    move v0, v1

    goto :goto_9

    :cond_10
    move v1, v0

    goto :goto_e
.end method

.method public b(I)Lad/t;
    .registers 3
    .parameter

    .prologue
    .line 2299
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 2283
    iget-boolean v0, p0, Lad/h;->t:Z

    return v0
.end method

.method public c(I)Lat/B;
    .registers 3
    .parameter

    .prologue
    .line 2307
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/t;->g()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 2291
    iget-object v0, p0, Lad/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 2295
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    array-length v0, v0

    goto :goto_5
.end method

.method public d(I)Ln/B;
    .registers 3
    .parameter

    .prologue
    .line 2311
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/t;->h()Ln/B;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 2303
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    array-length v0, v0

    return v0
.end method

.method public e(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2340
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    if-eqz v0, :cond_13

    if-ltz p1, :cond_13

    iget-object v0, p0, Lad/h;->a:[Lad/t;

    array-length v0, v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public f(I)I
    .registers 3
    .parameter

    .prologue
    .line 2345
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/t;->z()I

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .registers 2

    .prologue
    .line 2315
    iget-object v0, p0, Lad/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public g(I)I
    .registers 3
    .parameter

    .prologue
    .line 2351
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lad/h;->f:[Lad/m;

    aget-object v0, v0, p1

    if-nez v0, :cond_c

    .line 2352
    :cond_a
    const/4 v0, 0x0

    .line 2354
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/m;->l()I

    move-result v0

    goto :goto_b
.end method

.method public g()[Lat/B;
    .registers 2

    .prologue
    .line 2323
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    return-object v0
.end method

.method public h(I)J
    .registers 4
    .parameter

    .prologue
    .line 2366
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2327
    iget-object v2, p0, Lad/h;->a:[Lad/t;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 2328
    invoke-virtual {v4}, Lad/t;->h()Ln/B;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2329
    const/4 v0, 0x1

    .line 2333
    :cond_10
    return v0

    .line 2327
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public i()Lat/B;
    .registers 2

    .prologue
    .line 2358
    iget-object v0, p0, Lad/h;->i:Lat/B;

    return-object v0
.end method

.method public i(I)Z
    .registers 4
    .parameter

    .prologue
    .line 2370
    iget-object v0, p0, Lad/h;->a:[Lad/t;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public j()Lat/B;
    .registers 2

    .prologue
    .line 2362
    iget-object v0, p0, Lad/h;->j:Lat/B;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 2374
    iget v0, p0, Lad/h;->k:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 2378
    iget-boolean v0, p0, Lad/h;->l:Z

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 2382
    iget v0, p0, Lad/h;->m:I

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 2386
    iget-boolean v0, p0, Lad/h;->n:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2390
    invoke-virtual {p0}, Lad/h;->m()I

    move-result v0

    iget-object v1, p0, Lad/h;->c:Lad/b;

    invoke-virtual {v1}, Lad/b;->av()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2394
    iget-object v0, p0, Lad/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 2398
    iget v0, p0, Lad/h;->o:I

    return v0
.end method

.method public r()Lad/f;
    .registers 2

    .prologue
    .line 2402
    iget-object v0, p0, Lad/h;->p:Lad/f;

    return-object v0
.end method

.method public s()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 2406
    iget-object v0, p0, Lad/h;->r:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public t()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 2410
    iget-object v0, p0, Lad/h;->s:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 2414
    iget-boolean v0, p0, Lad/h;->u:Z

    return v0
.end method

.method v()V
    .registers 11

    .prologue
    const v9, 0x15752a00

    const/4 v5, 0x0

    .line 2595
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    array-length v0, v0

    if-nez v0, :cond_a

    .line 2663
    :goto_9
    return-void

    .line 2600
    :cond_a
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v4

    .line 2603
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v3

    .line 2604
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v2

    .line 2605
    iget-object v0, p0, Lad/h;->d:[Lat/B;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v1

    .line 2606
    iput v5, p0, Lad/h;->x:I

    .line 2607
    iput v5, p0, Lad/h;->w:I

    .line 2608
    new-instance v0, Lat/B;

    invoke-direct {v0, v5, v5}, Lat/B;-><init>(II)V

    iput-object v0, p0, Lad/h;->y:Lat/B;

    .line 2610
    const/4 v0, 0x1

    :goto_36
    iget-object v5, p0, Lad/h;->d:[Lat/B;

    array-length v5, v5

    if-ge v0, v5, :cond_8f

    .line 2613
    iget-object v5, p0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lat/B;->e()I

    move-result v5

    .line 2614
    iget-object v6, p0, Lad/h;->d:[Lat/B;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lat/B;->e()I

    move-result v8

    .line 2618
    sub-int v6, v5, v8

    .line 2619
    if-gez v6, :cond_b6

    .line 2620
    add-int/2addr v6, v9

    move v7, v6

    .line 2625
    :goto_53
    sub-int v6, v8, v5

    .line 2626
    if-gez v6, :cond_58

    .line 2627
    add-int/2addr v6, v9

    .line 2633
    :cond_58
    if-ge v6, v7, :cond_79

    .line 2635
    invoke-virtual {p0, v4, v5, v8}, Lad/h;->a(III)Z

    move-result v6

    if-eqz v6, :cond_6b

    if-eq v4, v5, :cond_6b

    .line 2636
    invoke-virtual {p0, v5, v4, v3}, Lad/h;->a(III)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 2637
    iput v9, p0, Lad/h;->x:I

    :cond_6a
    move v4, v5

    .line 2652
    :cond_6b
    :goto_6b
    iget-object v5, p0, Lad/h;->d:[Lat/B;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lat/B;->c()I

    move-result v5

    .line 2653
    if-le v5, v2, :cond_8b

    move v2, v5

    .line 2610
    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 2643
    :cond_79
    invoke-virtual {p0, v3, v8, v5}, Lad/h;->a(III)Z

    move-result v6

    if-eqz v6, :cond_6b

    if-eq v3, v5, :cond_6b

    .line 2644
    invoke-virtual {p0, v5, v4, v3}, Lad/h;->a(III)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 2645
    iput v9, p0, Lad/h;->x:I

    :cond_89
    move v3, v5

    .line 2647
    goto :goto_6b

    .line 2655
    :cond_8b
    if-ge v5, v1, :cond_76

    move v1, v5

    .line 2656
    goto :goto_76

    .line 2659
    :cond_8f
    if-lt v3, v4, :cond_ae

    sub-int v0, v3, v4

    .line 2660
    :goto_93
    iget v3, p0, Lad/h;->x:I

    if-le v0, v3, :cond_b3

    :goto_97
    iput v0, p0, Lad/h;->x:I

    .line 2661
    sub-int v0, v2, v1

    iput v0, p0, Lad/h;->w:I

    .line 2662
    new-instance v0, Lat/B;

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lad/h;->x:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Lat/B;-><init>(II)V

    iput-object v0, p0, Lad/h;->y:Lat/B;

    goto/16 :goto_9

    .line 2659
    :cond_ae
    sub-int v0, v4, v3

    sub-int v0, v9, v0

    goto :goto_93

    .line 2660
    :cond_b3
    iget v0, p0, Lad/h;->x:I

    goto :goto_97

    :cond_b6
    move v7, v6

    goto :goto_53
.end method

.method public w()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2869
    iget-object v0, p0, Lad/h;->c:Lad/b;

    invoke-virtual {v0}, Lad/b;->m()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2889
    :goto_9
    return-void

    .line 2873
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2874
    :goto_10
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    array-length v0, v0

    if-ge v1, v0, :cond_3f

    .line 2875
    iget-object v0, p0, Lad/h;->f:[Lad/m;

    aget-object v0, v0, v1

    .line 2876
    invoke-virtual {v0}, Lad/m;->r()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lad/m;->n()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2878
    check-cast v0, Lad/a;

    move v3, v2

    .line 2879
    :goto_28
    invoke-virtual {v0}, Lad/a;->h()I

    move-result v5

    if-ge v3, v5, :cond_3b

    .line 2880
    invoke-virtual {v0, v3}, Lad/a;->a(I)Lad/m;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 2884
    :cond_38
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2874
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 2887
    :cond_3f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lad/m;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad/m;

    iput-object v0, p0, Lad/h;->f:[Lad/m;

    .line 2888
    iget-object v0, p0, Lad/h;->c:Lad/b;

    invoke-static {v0, v2}, Lad/b;->b(Lad/b;I)I

    goto :goto_9
.end method

.method public x()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2897
    invoke-virtual {p0}, Lad/h;->u()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2906
    :cond_7
    :goto_7
    return v1

    :cond_8
    move v0, v1

    .line 2901
    :goto_9
    iget-object v2, p0, Lad/h;->f:[Lad/m;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 2902
    iget-object v2, p0, Lad/h;->f:[Lad/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lad/m;->r()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2903
    const/4 v1, 0x1

    goto :goto_7

    .line 2901
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public y()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3023
    move v0, v1

    :goto_2
    iget-object v2, p0, Lad/h;->a:[Lad/t;

    array-length v2, v2

    if-ge v0, v2, :cond_18

    .line 3024
    iget-object v2, p0, Lad/h;->a:[Lad/t;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lad/t;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3025
    const/4 v1, 0x1

    .line 3028
    :cond_18
    return v1

    .line 3023
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
