.class public LZX;
.super Ljava/lang/Object;
.source "StringPartitionTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Laaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laaa",
            "<TT;>;"
        }
    .end annotation
.end field

.field a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Laaa;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laaa",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LZX;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    iput-object p1, p0, LZX;->a:Laaa;

    .line 165
    return-void
.end method

.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 522
    mul-int/lit8 v0, p0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 534
    mul-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method static synthetic a(ILZZ;LZZ;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, LZX;->b(ILZZ;LZZ;)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 334
    if-nez p0, :cond_4

    .line 336
    const/4 v0, 0x1

    .line 340
    :goto_3
    return v0

    .line 337
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 338
    const/4 v0, 0x0

    goto :goto_3

    .line 340
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public static a(Ljava/util/List;)LZX;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "LZZ",
            "<TU;>;>;)",
            "LZX",
            "<TU;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, LZX;->a()[Ljava/lang/String;

    move-result-object v1

    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 157
    const/4 v0, 0x2

    new-array v5, v0, [Z

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move v4, v2

    invoke-static/range {v0 .. v5}, LZX;->a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;

    move-result-object v0

    .line 160
    :cond_1e
    new-instance v1, LZX;

    invoke-direct {v1, v0}, LZX;-><init>(Laaa;)V

    return-object v1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "LZZ",
            "<TU;>;>;[",
            "Ljava/lang/String;",
            "III[Z)",
            "Laaa",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    if-gt p2, p3, :cond_1d

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 362
    array-length v0, p5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, LafQ;->a(Z)V

    .line 364
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 365
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 361
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6

    .line 362
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e

    .line 378
    :cond_21
    add-int/lit8 v0, p4, 0x1

    rem-int/lit8 v4, v0, 0x2

    .line 383
    aget-boolean v0, p5, p4

    if-eqz v0, :cond_33

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    .line 384
    invoke-static/range {v0 .. v5}, LZX;->a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;

    move-result-object v0

    .line 451
    :goto_32
    return-object v0

    .line 389
    :cond_33
    sub-int v0, p3, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_48

    .line 392
    new-instance v0, Laaa;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p0, p2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Laaa;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;LZY;)V

    goto :goto_32

    .line 398
    :cond_48
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p0, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, LZY;

    invoke-direct {v1, p4}, LZY;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 409
    add-int v0, p2, p3

    ushr-int/lit8 v3, v0, 0x1

    .line 410
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LZZ;

    .line 415
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZZ;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZZ;

    invoke-static {p4, v0, v1}, LZX;->b(ILZZ;LZZ;)I

    move-result v0

    if-nez v0, :cond_ab

    .line 419
    invoke-virtual {p5}, [Z->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 420
    const/4 v0, 0x1

    aput-boolean v0, v5, p4

    .line 424
    const/4 v1, 0x0

    .line 425
    array-length v3, v5

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_81
    if-ge v1, v3, :cond_8f

    aget-boolean v0, v5, v1

    .line 426
    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    :goto_88
    add-int/2addr v2, v0

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_81

    .line 426
    :cond_8d
    const/4 v0, 0x0

    goto :goto_88

    .line 428
    :cond_8f
    const/4 v0, 0x2

    if-ne v2, v0, :cond_a2

    .line 432
    new-instance v0, Laaa;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p0, p2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Laaa;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;LZY;)V

    goto :goto_32

    :cond_a2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 434
    invoke-static/range {v0 .. v5}, LZX;->a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;

    move-result-object v0

    goto :goto_32

    .line 441
    :cond_ab
    const/4 v0, 0x2

    new-array v7, v0, [[Ljava/lang/String;

    .line 442
    const/4 v0, 0x0

    move v1, v0

    :goto_b0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_ca

    .line 443
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    .line 444
    aget-object v0, v7, v1

    mul-int/lit8 v2, p4, 0x2

    add-int/2addr v2, v1

    iget-object v5, v6, LZZ;->a:[Ljava/lang/String;

    aget-object v5, v5, p4

    aput-object v5, v0, v2

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b0

    .line 447
    :cond_ca
    const/4 v0, 0x0

    aget-object v1, v7, v0

    move-object v0, p0

    move v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LZX;->a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;

    move-result-object v8

    const/4 v0, 0x1

    aget-object v1, v7, v0

    add-int/lit8 v2, v3, 0x1

    move-object v0, p0

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LZX;->a(Ljava/util/List;[Ljava/lang/String;III[Z)Laaa;

    move-result-object v0

    invoke-static {v8, v0}, LaiA;->a(Ljava/lang/Object;Ljava/lang/Object;)LaiA;

    move-result-object v3

    .line 451
    new-instance v0, Laaa;

    iget-object v1, v6, LZZ;->a:[Ljava/lang/String;

    aget-object v2, v1, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p4

    invoke-direct/range {v0 .. v5}, Laaa;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;LZY;)V

    goto/16 :goto_32
.end method

.method private a()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, LZX;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 239
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)V
    .registers 1
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, LZX;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Set;LZZ;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;",
            "LZZ",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 249
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p2, LZZ;->a:[Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p2, LZZ;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_3b

    move v0, v1

    :goto_14
    invoke-static {v0}, LafQ;->a(Z)V

    .line 253
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    array-length v0, p3

    if-ne v0, v3, :cond_3d

    :goto_1d
    invoke-static {v1}, LafQ;->a(Z)V

    .line 258
    :goto_20
    if-ge v2, v3, :cond_42

    .line 259
    iget-object v0, p2, LZZ;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    aget-object v0, p3, v2

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p2, LZZ;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 266
    :goto_3a
    return-void

    :cond_3b
    move v0, v2

    .line 252
    goto :goto_14

    :cond_3d
    move v1, v2

    .line 254
    goto :goto_1d

    .line 258
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 265
    :cond_42
    iget-object v0, p2, LZZ;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a
.end method

.method private a(Ljava/util/Set;[Ljava/lang/String;Laaa;[Ljava/lang/String;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;[",
            "Ljava/lang/String;",
            "Laaa",
            "<TT;>;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p5, :cond_40

    move v0, v1

    :goto_a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 195
    array-length v0, p2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_42

    move v0, v1

    :goto_12
    invoke-static {v0}, LafQ;->a(Z)V

    .line 196
    array-length v0, p4

    if-ne v0, v7, :cond_44

    :goto_18
    invoke-static {v1}, LafQ;->a(Z)V

    .line 197
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, LZX;->b()V

    .line 202
    invoke-virtual {p3}, Laaa;->a()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 203
    iget-object v0, p3, Laaa;->b:LaiA;

    invoke-virtual {v0}, LaiA;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZZ;

    .line 204
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, p5, :cond_46

    .line 235
    :cond_3f
    return-void

    :cond_40
    move v0, v2

    .line 194
    goto :goto_a

    :cond_42
    move v0, v2

    .line 195
    goto :goto_12

    :cond_44
    move v1, v2

    .line 196
    goto :goto_18

    .line 208
    :cond_46
    invoke-direct {p0, p1, v0, p4}, LZX;->a(Ljava/util/Set;LZZ;[Ljava/lang/String;)V

    goto :goto_2d

    :cond_4a
    move v6, v2

    .line 214
    :goto_4b
    if-ge v6, v7, :cond_3f

    .line 218
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 224
    iget v0, p3, Laaa;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    iget-object v1, p3, Laaa;->a:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 226
    invoke-direct {p0, p4, v2}, LZX;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 227
    iget-object v0, p3, Laaa;->a:LaiA;

    invoke-virtual {v0, v6}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laaa;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, LZX;->a(Ljava/util/Set;[Ljava/lang/String;Laaa;[Ljava/lang/String;I)V

    .line 229
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p5, :cond_3f

    .line 214
    :cond_77
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4b
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    array-length v0, p1

    if-ne v0, v6, :cond_38

    move v0, v1

    :goto_a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 279
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    array-length v0, p2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3a

    move v0, v1

    :goto_15
    invoke-static {v0}, LafQ;->a(Z)V

    move v4, v2

    .line 284
    :goto_19
    if-ge v4, v6, :cond_46

    move v3, v2

    .line 289
    :goto_1c
    if-ge v3, v6, :cond_42

    .line 290
    invoke-static {v4, v3}, LZX;->a(II)I

    move-result v0

    aget-object v0, p2, v0

    .line 291
    aget-object v5, p1, v4

    .line 292
    invoke-static {v5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {v0, v5}, LZX;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-static {v3}, LZX;->a(I)I

    move-result v5

    .line 307
    mul-int/2addr v0, v5

    if-gtz v0, :cond_3c

    move v0, v1

    .line 308
    :goto_35
    if-nez v0, :cond_3e

    .line 314
    :goto_37
    return v2

    :cond_38
    move v0, v2

    .line 278
    goto :goto_a

    :cond_3a
    move v0, v2

    .line 280
    goto :goto_15

    :cond_3c
    move v0, v2

    .line 307
    goto :goto_35

    .line 289
    :cond_3e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    .line 284
    :cond_42
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    :cond_46
    move v2, v1

    .line 314
    goto :goto_37
.end method

.method static a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 480
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    .line 481
    const/4 v0, 0x0

    :goto_4
    const/4 v2, 0x2

    if-ge v0, v2, :cond_19

    .line 482
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    .line 483
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 485
    :cond_19
    return-object v1
.end method

.method private static b(ILZZ;LZZ;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "LZZ",
            "<TU;>;",
            "LZZ",
            "<TU;>;)I"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p1, LZZ;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    iget-object v1, p2, LZZ;->a:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, LZX;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 243
    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    if-eqz p0, :cond_8

    .line 469
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 471
    :cond_8
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;[Ljava/lang/String;I)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, LZX;->a()V

    .line 181
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p3, :cond_d

    iget-object v0, p0, LZX;->a:Laaa;

    if-nez v0, :cond_e

    .line 187
    :cond_d
    :goto_d
    return-void

    .line 185
    :cond_e
    invoke-static {}, LZX;->a()[Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, LZX;->a:Laaa;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, LZX;->a(Ljava/util/Set;[Ljava/lang/String;Laaa;[Ljava/lang/String;I)V

    goto :goto_d
.end method
