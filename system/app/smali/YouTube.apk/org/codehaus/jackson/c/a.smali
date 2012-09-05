.class public final Lorg/codehaus/jackson/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lorg/codehaus/jackson/c/a;

.field final b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lorg/codehaus/jackson/c/e;

.field private g:[Lorg/codehaus/jackson/c/b;

.field private h:I

.field private i:I

.field private transient j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->a:Lorg/codehaus/jackson/c/a;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/a;->b:Z

    .line 206
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/c/a;->b(I)V

    .line 221
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/c/a;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/codehaus/jackson/c/a;->a:Lorg/codehaus/jackson/c/a;

    .line 229
    iput-boolean p2, p0, Lorg/codehaus/jackson/c/a;->b:Z

    .line 232
    iget v0, p1, Lorg/codehaus/jackson/c/a;->c:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->c:I

    .line 233
    iget v0, p1, Lorg/codehaus/jackson/c/a;->d:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->d:I

    .line 234
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->e:[I

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->e:[I

    .line 235
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    .line 236
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 237
    iget v0, p1, Lorg/codehaus/jackson/c/a;->h:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->h:I

    .line 238
    iget v0, p1, Lorg/codehaus/jackson/c/a;->i:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->i:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/a;->j:Z

    .line 241
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->k:Z

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->l:Z

    .line 243
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->m:Z

    .line 244
    return-void
.end method

.method public static a()Lorg/codehaus/jackson/c/a;
    .registers 3

    .prologue
    .line 167
    new-instance v0, Lorg/codehaus/jackson/c/a;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/c/a;-><init>(IZ)V

    return-object v0
.end method

.method private declared-synchronized a(Lorg/codehaus/jackson/c/a;)V
    .registers 4
    .parameter

    .prologue
    .line 265
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lorg/codehaus/jackson/c/a;->c:I

    .line 266
    iget v1, p0, Lorg/codehaus/jackson/c/a;->c:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    if-gt v0, v1, :cond_9

    .line 294
    :goto_7
    monitor-exit p0

    return-void

    .line 276
    :cond_9
    :try_start_9
    iget v0, p1, Lorg/codehaus/jackson/c/a;->c:I

    const/16 v1, 0x1770

    if-le v0, v1, :cond_18

    .line 282
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/c/a;->b(I)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_7

    .line 265
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_18
    :try_start_18
    iget v0, p1, Lorg/codehaus/jackson/c/a;->c:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->c:I

    .line 285
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->e:[I

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->e:[I

    .line 286
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/a;->k:Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/a;->l:Z

    .line 289
    iget v0, p1, Lorg/codehaus/jackson/c/a;->d:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->d:I

    .line 290
    iget-object v0, p1, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 291
    iget v0, p1, Lorg/codehaus/jackson/c/a;->h:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->h:I

    .line 292
    iget v0, p1, Lorg/codehaus/jackson/c/a;->i:I

    iput v0, p0, Lorg/codehaus/jackson/c/a;->i:I
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_15

    goto :goto_7
.end method

.method private static b([II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 533
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 534
    const/4 v0, 0x1

    :goto_4
    if-ge v0, p1, :cond_e

    .line 535
    mul-int/lit8 v1, v1, 0x1f

    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 538
    :cond_e
    ushr-int/lit8 v0, v1, 0x10

    xor-int/2addr v0, v1

    .line 539
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 541
    return v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lorg/codehaus/jackson/c/a;->c:I

    .line 249
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->e:[I

    .line 250
    new-array v0, p1, [Lorg/codehaus/jackson/c/e;

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    .line 251
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->k:Z

    .line 252
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->l:Z

    .line 253
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/codehaus/jackson/c/a;->d:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/a;->m:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 257
    iput v1, p0, Lorg/codehaus/jackson/c/a;->i:I

    .line 259
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->j:Z

    .line 260
    return-void
.end method

.method public static c()Lorg/codehaus/jackson/c/e;
    .registers 1

    .prologue
    .line 323
    invoke-static {}, Lorg/codehaus/jackson/c/f;->b()Lorg/codehaus/jackson/c/f;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .registers 7

    .prologue
    .line 808
    iget-object v4, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 809
    const v3, 0x7fffffff

    .line 810
    const/4 v0, -0x1

    .line 812
    const/4 v1, 0x0

    iget v5, p0, Lorg/codehaus/jackson/c/a;->i:I

    :goto_9
    if-ge v1, v5, :cond_1c

    .line 813
    aget-object v2, v4, v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/c/b;->a()I

    move-result v2

    .line 814
    if-ge v2, v3, :cond_1e

    .line 815
    const/4 v0, 0x1

    if-ne v2, v0, :cond_17

    .line 822
    :goto_16
    return v1

    :cond_17
    move v0, v1

    .line 812
    :goto_18
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_9

    :cond_1c
    move v1, v0

    .line 822
    goto :goto_16

    :cond_1e
    move v2, v3

    goto :goto_18
.end method

.method private e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v0, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 866
    array-length v1, v0

    .line 867
    add-int v2, v1, v1

    new-array v2, v2, [Lorg/codehaus/jackson/c/b;

    iput-object v2, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    .line 868
    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 869
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)Lorg/codehaus/jackson/c/a;
    .registers 3
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/codehaus/jackson/c/a;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/c/a;-><init>(Lorg/codehaus/jackson/c/a;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Lorg/codehaus/jackson/c/e;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 343
    ushr-int/lit8 v1, p1, 0x10

    xor-int/2addr v1, p1

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v1

    .line 344
    iget v1, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int/2addr v1, v2

    .line 345
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->e:[I

    aget v3, v3, v1

    .line 350
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_24

    .line 352
    iget-object v4, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aget-object v1, v4, v1

    .line 353
    if-nez v1, :cond_1c

    .line 372
    :cond_1b
    :goto_1b
    return-object v0

    .line 356
    :cond_1c
    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/c/e;->a(I)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object v0, v1

    .line 357
    goto :goto_1b

    .line 359
    :cond_24
    if-eqz v3, :cond_1b

    .line 363
    :cond_26
    and-int/lit16 v1, v3, 0xff

    .line 364
    if-lez v1, :cond_1b

    .line 365
    add-int/lit8 v1, v1, -0x1

    .line 366
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    aget-object v1, v3, v1

    .line 367
    if-eqz v1, :cond_1b

    .line 368
    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lorg/codehaus/jackson/c/b;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_1b
.end method

.method public final a(II)Lorg/codehaus/jackson/c/e;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 393
    mul-int/lit8 v1, p1, 0x1f

    add-int/2addr v1, p2

    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v1

    .line 394
    iget v1, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int/2addr v1, v2

    .line 395
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->e:[I

    aget v3, v3, v1

    .line 400
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_27

    .line 402
    iget-object v4, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aget-object v1, v4, v1

    .line 403
    if-nez v1, :cond_1f

    .line 422
    :cond_1e
    :goto_1e
    return-object v0

    .line 406
    :cond_1f
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/c/e;->a(II)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v0, v1

    .line 407
    goto :goto_1e

    .line 409
    :cond_27
    if-eqz v3, :cond_1e

    .line 413
    :cond_29
    and-int/lit16 v1, v3, 0xff

    .line 414
    if-lez v1, :cond_1e

    .line 415
    add-int/lit8 v1, v1, -0x1

    .line 416
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    aget-object v1, v3, v1

    .line 417
    if-eqz v1, :cond_1e

    .line 418
    invoke-virtual {v1, v2, p1, p2}, Lorg/codehaus/jackson/c/b;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;[II)Lorg/codehaus/jackson/c/e;
    .registers 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iget-boolean v1, p0, Lorg/codehaus/jackson/c/a;->b:Z

    if-eqz v1, :cond_225

    .line 496
    sget-object v1, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    :goto_c
    invoke-static/range {p2 .. p3}, Lorg/codehaus/jackson/c/a;->b([II)I

    move-result v3

    .line 499
    const/4 v1, 0x4

    move/from16 v0, p3

    if-ge v0, v1, :cond_18

    packed-switch p3, :pswitch_data_22a

    :cond_18
    move/from16 v0, p3

    new-array v4, v0, [I

    const/4 v1, 0x0

    :goto_1d
    move/from16 v0, p3

    if-ge v1, v0, :cond_d5

    aget v5, p2, v1

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :pswitch_28
    new-instance v1, Lorg/codehaus/jackson/c/f;

    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/codehaus/jackson/c/f;-><init>(Ljava/lang/String;II)V

    .line 500
    :goto_30
    iget-boolean v2, p0, Lorg/codehaus/jackson/c/a;->k:Z

    if-eqz v2, :cond_47

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    iget-object v4, p0, Lorg/codehaus/jackson/c/a;->e:[I

    array-length v4, v4

    new-array v5, v4, [I

    iput-object v5, p0, Lorg/codehaus/jackson/c/a;->e:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codehaus/jackson/c/a;->e:[I

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->k:Z

    :cond_47
    iget-boolean v2, p0, Lorg/codehaus/jackson/c/a;->j:Z

    if-eqz v2, :cond_75

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->j:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->l:Z

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    array-length v5, v2

    add-int v2, v5, v5

    const/high16 v4, 0x1

    if-le v2, v4, :cond_de

    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/c/a;->c:I

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/c/a;->i:I

    :cond_75
    iget v2, p0, Lorg/codehaus/jackson/c/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/c/a;->c:I

    iget v2, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int v4, v3, v2

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aget-object v2, v2, v4

    if-nez v2, :cond_1ba

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    shl-int/lit8 v3, v3, 0x8

    aput v3, v2, v4

    iget-boolean v2, p0, Lorg/codehaus/jackson/c/a;->l:Z

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    array-length v3, v2

    new-array v5, v3, [Lorg/codehaus/jackson/c/e;

    iput-object v5, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->l:Z

    :cond_a0
    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aput-object v1, v2, v4

    :goto_a4
    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    array-length v2, v2

    iget v3, p0, Lorg/codehaus/jackson/c/a;->c:I

    shr-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_b7

    shr-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/codehaus/jackson/c/a;->c:I

    sub-int/2addr v2, v3

    if-le v4, v2, :cond_21c

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->j:Z

    .line 501
    :cond_b7
    :goto_b7
    return-object v1

    .line 499
    :pswitch_b8
    new-instance v1, Lorg/codehaus/jackson/c/g;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/codehaus/jackson/c/g;-><init>(Ljava/lang/String;III)V

    goto/16 :goto_30

    :pswitch_c5
    new-instance v1, Lorg/codehaus/jackson/c/h;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-direct/range {v1 .. v6}, Lorg/codehaus/jackson/c/h;-><init>(Ljava/lang/String;IIII)V

    goto/16 :goto_30

    :cond_d5
    new-instance v1, Lorg/codehaus/jackson/c/i;

    move/from16 v0, p3

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/codehaus/jackson/c/i;-><init>(Ljava/lang/String;I[II)V

    goto/16 :goto_30

    .line 500
    :cond_de
    new-array v4, v2, [I

    iput-object v4, p0, Lorg/codehaus/jackson/c/a;->e:[I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lorg/codehaus/jackson/c/a;->d:I

    iget-object v6, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    new-array v2, v2, [Lorg/codehaus/jackson/c/e;

    iput-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_f1
    if-ge v4, v5, :cond_10d

    aget-object v7, v6, v4

    if-eqz v7, :cond_10a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v8

    iget v9, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int/2addr v9, v8

    iget-object v10, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aput-object v7, v10, v9

    iget-object v7, p0, Lorg/codehaus/jackson/c/a;->e:[I

    shl-int/lit8 v8, v8, 0x8

    aput v8, v7, v9

    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    :cond_10d
    iget v7, p0, Lorg/codehaus/jackson/c/a;->i:I

    if-eqz v7, :cond_75

    const/4 v4, 0x0

    iput v4, p0, Lorg/codehaus/jackson/c/a;->h:I

    const/4 v4, 0x0

    iput v4, p0, Lorg/codehaus/jackson/c/a;->i:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/codehaus/jackson/c/a;->m:Z

    iget-object v8, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    array-length v4, v8

    new-array v4, v4, [Lorg/codehaus/jackson/c/b;

    iput-object v4, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    const/4 v4, 0x0

    :goto_122
    if-ge v4, v7, :cond_191

    aget-object v5, v8, v4

    move-object v6, v5

    move v5, v2

    :goto_128
    if-eqz v6, :cond_18c

    add-int/lit8 v5, v5, 0x1

    iget-object v9, v6, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    invoke-virtual {v9}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v2

    iget v10, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int/2addr v10, v2

    iget-object v11, p0, Lorg/codehaus/jackson/c/a;->e:[I

    aget v11, v11, v10

    iget-object v12, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aget-object v12, v12, v10

    if-nez v12, :cond_14d

    iget-object v11, p0, Lorg/codehaus/jackson/c/a;->e:[I

    shl-int/lit8 v2, v2, 0x8

    aput v2, v11, v10

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aput-object v9, v2, v10

    :goto_149
    iget-object v2, v6, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    move-object v6, v2

    goto :goto_128

    :cond_14d
    iget v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    and-int/lit16 v2, v11, 0xff

    if-nez v2, :cond_189

    iget v2, p0, Lorg/codehaus/jackson/c/a;->i:I

    const/16 v12, 0xfe

    if-gt v2, v12, :cond_184

    iget v2, p0, Lorg/codehaus/jackson/c/a;->i:I

    iget v12, p0, Lorg/codehaus/jackson/c/a;->i:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lorg/codehaus/jackson/c/a;->i:I

    iget-object v12, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    array-length v12, v12

    if-lt v2, v12, :cond_16d

    invoke-direct {p0}, Lorg/codehaus/jackson/c/a;->e()V

    :cond_16d
    :goto_16d
    iget-object v12, p0, Lorg/codehaus/jackson/c/a;->e:[I

    and-int/lit16 v11, v11, -0x100

    add-int/lit8 v13, v2, 0x1

    or-int/2addr v11, v13

    aput v11, v12, v10

    :goto_176
    iget-object v10, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    new-instance v11, Lorg/codehaus/jackson/c/b;

    iget-object v12, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    aget-object v12, v12, v2

    invoke-direct {v11, v9, v12}, Lorg/codehaus/jackson/c/b;-><init>(Lorg/codehaus/jackson/c/e;Lorg/codehaus/jackson/c/b;)V

    aput-object v11, v10, v2

    goto :goto_149

    :cond_184
    invoke-direct {p0}, Lorg/codehaus/jackson/c/a;->d()I

    move-result v2

    goto :goto_16d

    :cond_189
    add-int/lit8 v2, v2, -0x1

    goto :goto_176

    :cond_18c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_122

    :cond_191
    iget v4, p0, Lorg/codehaus/jackson/c/a;->c:I

    if-eq v2, v4, :cond_75

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: count after rehash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codehaus/jackson/c/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1ba
    iget-boolean v2, p0, Lorg/codehaus/jackson/c/a;->m:Z

    if-eqz v2, :cond_1cb

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    if-nez v2, :cond_207

    const/16 v2, 0x20

    new-array v2, v2, [Lorg/codehaus/jackson/c/b;

    iput-object v2, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    :goto_1c8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->m:Z

    :cond_1cb
    iget v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    iget-object v2, p0, Lorg/codehaus/jackson/c/a;->e:[I

    aget v3, v2, v4

    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_219

    iget v2, p0, Lorg/codehaus/jackson/c/a;->i:I

    const/16 v5, 0xfe

    if-gt v2, v5, :cond_214

    iget v2, p0, Lorg/codehaus/jackson/c/a;->i:I

    iget v5, p0, Lorg/codehaus/jackson/c/a;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/c/a;->i:I

    iget-object v5, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    array-length v5, v5

    if-lt v2, v5, :cond_1ef

    invoke-direct {p0}, Lorg/codehaus/jackson/c/a;->e()V

    :cond_1ef
    :goto_1ef
    iget-object v5, p0, Lorg/codehaus/jackson/c/a;->e:[I

    and-int/lit16 v3, v3, -0x100

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v3, v6

    aput v3, v5, v4

    :goto_1f8
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    new-instance v4, Lorg/codehaus/jackson/c/b;

    iget-object v5, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    aget-object v5, v5, v2

    invoke-direct {v4, v1, v5}, Lorg/codehaus/jackson/c/b;-><init>(Lorg/codehaus/jackson/c/e;Lorg/codehaus/jackson/c/b;)V

    aput-object v4, v3, v2

    goto/16 :goto_a4

    :cond_207
    array-length v3, v2

    new-array v5, v3, [Lorg/codehaus/jackson/c/b;

    iput-object v5, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c8

    :cond_214
    invoke-direct {p0}, Lorg/codehaus/jackson/c/a;->d()I

    move-result v2

    goto :goto_1ef

    :cond_219
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f8

    :cond_21c
    iget v2, p0, Lorg/codehaus/jackson/c/a;->h:I

    if-lt v2, v3, :cond_b7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codehaus/jackson/c/a;->j:Z

    goto/16 :goto_b7

    :cond_225
    move-object/from16 v2, p1

    goto/16 :goto_c

    .line 499
    nop

    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_b8
        :pswitch_c5
    .end packed-switch
.end method

.method public final a([II)Lorg/codehaus/jackson/c/e;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-static {p1, p2}, Lorg/codehaus/jackson/c/a;->b([II)I

    move-result v2

    .line 451
    iget v0, p0, Lorg/codehaus/jackson/c/a;->d:I

    and-int/2addr v0, v2

    .line 452
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->e:[I

    aget v3, v3, v0

    .line 453
    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_20

    .line 454
    iget-object v4, p0, Lorg/codehaus/jackson/c/a;->f:[Lorg/codehaus/jackson/c/e;

    aget-object v0, v4, v0

    .line 455
    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/c/e;->a([II)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 470
    :cond_1f
    :goto_1f
    return-object v0

    .line 459
    :cond_20
    if-nez v3, :cond_24

    move-object v0, v1

    .line 460
    goto :goto_1f

    .line 462
    :cond_24
    and-int/lit16 v0, v3, 0xff

    .line 463
    if-lez v0, :cond_35

    .line 464
    add-int/lit8 v0, v0, -0x1

    .line 465
    iget-object v3, p0, Lorg/codehaus/jackson/c/a;->g:[Lorg/codehaus/jackson/c/b;

    aget-object v0, v3, v0

    .line 466
    if-eqz v0, :cond_35

    .line 467
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/c/b;->a(I[II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_1f

    :cond_35
    move-object v0, v1

    .line 470
    goto :goto_1f
.end method

.method public final b()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-boolean v0, p0, Lorg/codehaus/jackson/c/a;->k:Z

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/codehaus/jackson/c/a;->a:Lorg/codehaus/jackson/c/a;

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lorg/codehaus/jackson/c/a;->a:Lorg/codehaus/jackson/c/a;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/c/a;->a(Lorg/codehaus/jackson/c/a;)V

    .line 195
    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->k:Z

    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->l:Z

    iput-boolean v1, p0, Lorg/codehaus/jackson/c/a;->m:Z

    .line 197
    :cond_17
    return-void

    .line 189
    :cond_18
    const/4 v0, 0x0

    goto :goto_6
.end method
