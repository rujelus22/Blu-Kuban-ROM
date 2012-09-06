.class public Ln/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ln/av;

.field private h:Ln/am;


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ln/am;-><init>(IIILn/av;)V

    .line 74
    return-void
.end method

.method public constructor <init>(IIILn/av;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x2000

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ln/am;->h:Ln/am;

    .line 60
    iput p1, p0, Ln/am;->d:I

    .line 61
    iput p2, p0, Ln/am;->e:I

    .line 62
    iput p3, p0, Ln/am;->f:I

    .line 63
    if-nez p4, :cond_15

    new-instance p4, Ln/av;

    invoke-direct {p4}, Ln/av;-><init>()V

    :cond_15
    iput-object p4, p0, Ln/am;->g:Ln/av;

    .line 66
    rsub-int/lit8 v0, p1, 0x12

    iput v0, p0, Ln/am;->c:I

    .line 67
    const/high16 v0, 0x4000

    shr-int/2addr v0, p1

    .line 68
    iget v1, p0, Ln/am;->e:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Ln/am;->a:I

    .line 69
    iget v1, p0, Ln/am;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, Ln/am;->b:I

    .line 70
    return-void
.end method

.method public static a(Ln/aL;I)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ln/am;->a(Ln/aL;ILn/av;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln/aL;ILn/av;)Ljava/util/ArrayList;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    .line 335
    if-gez p1, :cond_a

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    :cond_9
    :goto_9
    return-object v0

    .line 340
    :cond_a
    invoke-virtual {p0}, Ln/aL;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {p0}, Ln/aL;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v5

    .line 343
    invoke-virtual {p0}, Ln/aL;->g()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Ln/aL;->f()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1, p2}, Ln/am;->a(IIILn/av;)Ln/am;

    move-result-object v6

    .line 346
    invoke-virtual {v5}, Ln/am;->c()I

    move-result v1

    .line 347
    invoke-virtual {v5}, Ln/am;->d()I

    move-result v2

    .line 348
    invoke-virtual {v6}, Ln/am;->c()I

    move-result v7

    .line 349
    invoke-virtual {v6}, Ln/am;->d()I

    move-result v8

    .line 351
    const/4 v0, 0x1

    shl-int v9, v0, p1

    .line 353
    if-le v1, v7, :cond_5e

    .line 354
    sub-int v0, v9, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    .line 360
    :goto_56
    if-gez v4, :cond_69

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    .line 356
    :cond_5e
    sub-int v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    goto :goto_56

    .line 364
    :cond_69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    if-gt v4, v10, :cond_79

    .line 366
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    if-ne v4, v10, :cond_9

    .line 368
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 370
    :cond_79
    if-le v1, v7, :cond_a3

    move v4, v1

    .line 371
    :goto_7c
    if-ge v4, v9, :cond_93

    move v1, v2

    .line 372
    :goto_7f
    if-gt v1, v8, :cond_8c

    .line 373
    new-instance v5, Ln/am;

    invoke-direct {v5, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 371
    :cond_8c
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7c

    .line 376
    :cond_90
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :cond_93
    if-gt v3, v7, :cond_9

    move v1, v2

    .line 377
    :goto_96
    if-gt v1, v8, :cond_90

    .line 378
    new-instance v4, Ln/am;

    invoke-direct {v4, p1, v3, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    :cond_a3
    move v3, v1

    .line 382
    :goto_a4
    if-gt v3, v7, :cond_9

    move v1, v2

    .line 383
    :goto_a7
    if-gt v1, v8, :cond_b4

    .line 384
    new-instance v4, Ln/am;

    invoke-direct {v4, p1, v3, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 382
    :cond_b4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a4
.end method

.method public static a(IIILn/av;)Ln/am;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x2000

    const/16 v1, 0x1e

    const/4 v0, 0x0

    .line 139
    if-gtz p0, :cond_e

    .line 141
    new-instance v1, Ln/am;

    invoke-direct {v1, v0, v0, v0}, Ln/am;-><init>(III)V

    move-object v0, v1

    .line 165
    :goto_d
    return-object v0

    .line 142
    :cond_e
    if-le p0, v1, :cond_11

    move p0, v1

    .line 145
    :cond_11
    rsub-int/lit8 v1, p0, 0x1e

    .line 147
    add-int v2, p1, v4

    shr-int/2addr v2, v1

    .line 148
    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    .line 150
    const/4 v3, 0x1

    shl-int/2addr v3, p0

    .line 153
    if-gez v2, :cond_28

    .line 154
    add-int/2addr v2, v3

    .line 160
    :cond_1f
    :goto_1f
    if-gez v1, :cond_2c

    .line 165
    :goto_21
    new-instance v1, Ln/am;

    invoke-direct {v1, p0, v2, v0, p3}, Ln/am;-><init>(IIILn/av;)V

    move-object v0, v1

    goto :goto_d

    .line 155
    :cond_28
    if-lt v2, v3, :cond_1f

    .line 156
    sub-int/2addr v2, v3

    goto :goto_1f

    .line 162
    :cond_2c
    if-lt v1, v3, :cond_31

    .line 163
    add-int/lit8 v0, v3, -0x1

    goto :goto_21

    :cond_31
    move v0, v1

    goto :goto_21
.end method

.method public static a(ILn/Q;)Ln/am;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v1

    invoke-static {p0, v0, v1}, Ln/am;->b(III)Ln/am;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/am;
    .registers 5
    .parameter

    .prologue
    .line 533
    new-instance v0, Ln/am;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ln/am;-><init>(III)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Ln/am;
    .registers 5
    .parameter

    .prologue
    .line 318
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 319
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 320
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 321
    new-instance v3, Ln/am;

    invoke-direct {v3, v0, v1, v2}, Ln/am;-><init>(III)V

    return-object v3
.end method

.method public static b(Ln/aL;I)Ljava/util/ArrayList;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ln/am;->b(Ln/aL;ILn/av;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ln/aL;ILn/av;)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Ln/aL;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {p0}, Ln/aL;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Ln/am;->b(IIILn/av;)Ln/am;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Ln/aL;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Ln/aL;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2, p2}, Ln/am;->b(IIILn/av;)Ln/am;

    move-result-object v2

    .line 409
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v1

    .line 410
    invoke-virtual {v0}, Ln/am;->d()I

    move-result v3

    .line 411
    invoke-virtual {v2}, Ln/am;->c()I

    move-result v5

    .line 412
    invoke-virtual {v2}, Ln/am;->d()I

    move-result v6

    .line 414
    invoke-virtual {v0}, Ln/am;->e()I

    move-result v4

    invoke-virtual {v0}, Ln/am;->f()I

    move-result v0

    invoke-static {v4, v0}, Ln/Q;->f(II)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {v2}, Ln/am;->e()I

    move-result v0

    invoke-virtual {v2}, Ln/am;->f()I

    move-result v2

    invoke-static {v0, v2}, Ln/Q;->f(II)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    :cond_5d
    return-object v0

    .line 419
    :cond_5e
    const/4 v0, 0x1

    shl-int v2, v0, p1

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    if-le v1, v5, :cond_af

    move v4, v1

    .line 423
    :goto_69
    if-ge v4, v2, :cond_8b

    move v1, v3

    .line 424
    :goto_6c
    if-gez v1, :cond_79

    .line 425
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_79
    move v1, v2

    .line 427
    :goto_7a
    if-gt v1, v6, :cond_87

    .line 428
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 423
    :cond_87
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_69

    .line 431
    :cond_8b
    const/4 v1, 0x0

    move v4, v1

    :goto_8d
    if-gt v4, v5, :cond_5d

    move v1, v3

    .line 432
    :goto_90
    if-gez v1, :cond_9d

    .line 433
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_9d
    move v1, v2

    .line 435
    :goto_9e
    if-gt v1, v6, :cond_ab

    .line 436
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    .line 431
    :cond_ab
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_8d

    :cond_af
    move v4, v1

    .line 440
    :goto_b0
    if-gt v4, v5, :cond_5d

    move v1, v3

    .line 441
    :goto_b3
    if-gez v1, :cond_c0

    .line 442
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_c0
    move v1, v2

    .line 444
    :goto_c1
    if-gt v1, v6, :cond_ce

    .line 445
    new-instance v7, Ln/am;

    invoke-direct {v7, p1, v4, v1, p2}, Ln/am;-><init>(IIILn/av;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 440
    :cond_ce
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_b0
.end method

.method public static b(III)Ln/am;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x2000

    .line 98
    if-ltz p0, :cond_e

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_e

    const/high16 v0, -0x2000

    if-le p2, v0, :cond_e

    if-le p2, v3, :cond_10

    .line 101
    :cond_e
    const/4 v0, 0x0

    .line 116
    :goto_f
    return-object v0

    .line 104
    :cond_10
    rsub-int/lit8 v1, p0, 0x1e

    .line 106
    add-int v0, p1, v3

    shr-int/2addr v0, v1

    .line 107
    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int/2addr v2, v1

    .line 110
    const/4 v1, 0x1

    shl-int/2addr v1, p0

    .line 111
    if-gez v0, :cond_24

    .line 112
    add-int/2addr v0, v1

    .line 116
    :cond_1d
    :goto_1d
    new-instance v1, Ln/am;

    invoke-direct {v1, p0, v0, v2}, Ln/am;-><init>(III)V

    move-object v0, v1

    goto :goto_f

    .line 113
    :cond_24
    if-lt v0, v1, :cond_1d

    .line 114
    sub-int/2addr v0, v1

    goto :goto_1d
.end method

.method private static b(IIILn/av;)Ln/am;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x2000

    const/16 v0, 0x1e

    const/4 v1, 0x0

    .line 181
    if-gtz p0, :cond_d

    .line 183
    new-instance v0, Ln/am;

    invoke-direct {v0, v1, v1, v1}, Ln/am;-><init>(III)V

    .line 191
    :goto_c
    return-object v0

    .line 184
    :cond_d
    if-le p0, v0, :cond_10

    move p0, v0

    .line 187
    :cond_10
    rsub-int/lit8 v0, p0, 0x1e

    .line 189
    add-int v1, p1, v3

    shr-int/2addr v1, v0

    .line 190
    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int/2addr v2, v0

    .line 191
    new-instance v0, Ln/am;

    invoke-direct {v0, p0, v1, v2, p3}, Ln/am;-><init>(IIILn/av;)V

    goto :goto_c
.end method


# virtual methods
.method public a(Ln/am;)I
    .registers 4
    .parameter

    .prologue
    .line 500
    iget v0, p0, Ln/am;->d:I

    iget v1, p1, Ln/am;->d:I

    if-ne v0, v1, :cond_27

    .line 501
    iget v0, p0, Ln/am;->e:I

    iget v1, p1, Ln/am;->e:I

    if-ne v0, v1, :cond_21

    .line 502
    iget v0, p0, Ln/am;->f:I

    iget v1, p1, Ln/am;->f:I

    if-ne v0, v1, :cond_1b

    .line 503
    iget-object v0, p0, Ln/am;->g:Ln/av;

    iget-object v1, p1, Ln/am;->g:Ln/av;

    invoke-virtual {v0, v1}, Ln/av;->a(Ln/av;)I

    move-result v0

    .line 511
    :goto_1a
    return v0

    .line 505
    :cond_1b
    iget v0, p0, Ln/am;->f:I

    iget v1, p1, Ln/am;->f:I

    sub-int/2addr v0, v1

    goto :goto_1a

    .line 508
    :cond_21
    iget v0, p0, Ln/am;->e:I

    iget v1, p1, Ln/am;->e:I

    sub-int/2addr v0, v1

    goto :goto_1a

    .line 511
    :cond_27
    iget v0, p0, Ln/am;->d:I

    iget v1, p1, Ln/am;->d:I

    sub-int/2addr v0, v1

    goto :goto_1a
.end method

.method public a()Ln/am;
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, Ln/am;->h:Ln/am;

    if-nez v0, :cond_12

    .line 88
    new-instance v0, Ln/am;

    iget v1, p0, Ln/am;->d:I

    iget v2, p0, Ln/am;->e:I

    iget v3, p0, Ln/am;->f:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln/am;-><init>(IIILn/av;)V

    iput-object v0, p0, Ln/am;->h:Ln/am;

    .line 90
    :cond_12
    iget-object v0, p0, Ln/am;->h:Ln/am;

    return-object v0
.end method

.method public a(I)Ln/am;
    .registers 5
    .parameter

    .prologue
    .line 249
    iget v0, p0, Ln/am;->d:I

    sub-int/2addr v0, p1

    .line 250
    if-gtz v0, :cond_6

    .line 253
    :goto_5
    return-object p0

    :cond_6
    iget v1, p0, Ln/am;->e:I

    shr-int/2addr v1, v0

    iget v2, p0, Ln/am;->f:I

    shr-int v0, v2, v0

    invoke-virtual {p0, p1, v1, v0}, Ln/am;->a(III)Ln/am;

    move-result-object p0

    goto :goto_5
.end method

.method public a(III)Ln/am;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ln/am;

    iget-object v1, p0, Ln/am;->g:Ln/av;

    invoke-direct {v0, p1, p2, p3, v1}, Ln/am;-><init>(IIILn/av;)V

    return-object v0
.end method

.method public a(Ln/av;)Ln/am;
    .registers 6
    .parameter

    .prologue
    .line 521
    new-instance v0, Ln/am;

    iget v1, p0, Ln/am;->d:I

    iget v2, p0, Ln/am;->e:I

    iget v3, p0, Ln/am;->f:I

    invoke-direct {v0, v1, v2, v3, p1}, Ln/am;-><init>(IIILn/av;)V

    return-object v0
.end method

.method public a(Ln/aq;)Ln/ao;
    .registers 3
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Ln/am;->g:Ln/av;

    invoke-virtual {v0, p1}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Ln/am;->g:Ln/av;

    invoke-virtual {v0, p1, p2}, Ln/av;->a(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 547
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 307
    iget v0, p0, Ln/am;->d:I

    invoke-static {p1, v0}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 308
    iget v0, p0, Ln/am;->e:I

    invoke-static {p1, v0}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 309
    iget v0, p0, Ln/am;->f:I

    invoke-static {p1, v0}, Ln/aA;->a(Ljava/io/DataOutput;I)V

    .line 310
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Ln/am;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Ln/am;->e:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 31
    check-cast p1, Ln/am;

    invoke-virtual {p0, p1}, Ln/am;->a(Ln/am;)I

    move-result v0

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Ln/am;->f:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Ln/am;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 454
    if-ne p0, p1, :cond_5

    .line 455
    const/4 v0, 0x1

    .line 472
    :cond_4
    :goto_4
    return v0

    .line 457
    :cond_5
    instance-of v1, p1, Ln/am;

    if-eqz v1, :cond_4

    .line 461
    check-cast p1, Ln/am;

    .line 463
    iget v1, p0, Ln/am;->e:I

    iget v2, p1, Ln/am;->e:I

    if-ne v1, v2, :cond_4

    .line 466
    iget v1, p0, Ln/am;->f:I

    iget v2, p1, Ln/am;->f:I

    if-ne v1, v2, :cond_4

    .line 469
    iget v1, p0, Ln/am;->d:I

    iget v2, p1, Ln/am;->d:I

    if-ne v1, v2, :cond_4

    .line 472
    iget-object v0, p0, Ln/am;->g:Ln/av;

    iget-object v1, p1, Ln/am;->g:Ln/av;

    invoke-virtual {v0, v1}, Ln/av;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public f()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Ln/am;->b:I

    return v0
.end method

.method public g()Ln/Q;
    .registers 4

    .prologue
    .line 227
    new-instance v0, Ln/Q;

    iget v1, p0, Ln/am;->a:I

    iget v2, p0, Ln/am;->b:I

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    return-object v0
.end method

.method public h()Ln/aa;
    .registers 7

    .prologue
    .line 237
    const/high16 v0, 0x4000

    iget v1, p0, Ln/am;->d:I

    shr-int/2addr v0, v1

    .line 238
    new-instance v1, Ln/aa;

    new-instance v2, Ln/Q;

    iget v3, p0, Ln/am;->a:I

    iget v4, p0, Ln/am;->b:I

    invoke-direct {v2, v3, v4}, Ln/Q;-><init>(II)V

    new-instance v3, Ln/Q;

    iget v4, p0, Ln/am;->a:I

    add-int/2addr v4, v0

    iget v5, p0, Ln/am;->b:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Ln/Q;-><init>(II)V

    invoke-direct {v1, v2, v3}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 477
    iget v0, p0, Ln/am;->d:I

    .line 478
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/am;->e:I

    add-int/2addr v0, v1

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/am;->f:I

    add-int/2addr v0, v1

    .line 480
    iget-object v1, p0, Ln/am;->g:Ln/av;

    invoke-virtual {v1}, Ln/av;->b()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/am;->g:Ln/av;

    invoke-virtual {v1}, Ln/av;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_1d
    return v0
.end method

.method public i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 525
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->H:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {p0}, Ln/am;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 527
    const/4 v1, 0x2

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 528
    const/4 v1, 0x3

    invoke-virtual {p0}, Ln/am;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 529
    return-object v0
.end method

.method public j()Ln/av;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Ln/am;->g:Ln/av;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    iget v1, p0, Ln/am;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/am;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ln/am;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ln/am;->g:Ln/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
