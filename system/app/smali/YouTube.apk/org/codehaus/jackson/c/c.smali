.class public final Lorg/codehaus/jackson/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lorg/codehaus/jackson/c/c;


# instance fields
.field protected b:Lorg/codehaus/jackson/c/c;

.field protected final c:Z

.field protected final d:Z

.field protected e:[Ljava/lang/String;

.field protected f:[Lorg/codehaus/jackson/c/d;

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lorg/codehaus/jackson/c/c;

    invoke-direct {v0}, Lorg/codehaus/jackson/c/c;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/c/c;->a:Lorg/codehaus/jackson/c/c;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->d:Z

    .line 182
    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->c:Z

    .line 184
    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    .line 185
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/c/c;->a(I)V

    .line 186
    return-void
.end method

.method private constructor <init>(Lorg/codehaus/jackson/c/c;ZZ[Ljava/lang/String;[Lorg/codehaus/jackson/c/d;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lorg/codehaus/jackson/c/c;->b:Lorg/codehaus/jackson/c/c;

    .line 207
    iput-boolean p2, p0, Lorg/codehaus/jackson/c/c;->d:Z

    .line 208
    iput-boolean p3, p0, Lorg/codehaus/jackson/c/c;->c:Z

    .line 210
    iput-object p4, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    .line 212
    iput p6, p0, Lorg/codehaus/jackson/c/c;->g:I

    .line 214
    array-length v0, p4

    .line 215
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lorg/codehaus/jackson/c/c;->h:I

    .line 216
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/c/c;->i:I

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    .line 220
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_16

    .line 405
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 408
    :cond_16
    return v1
.end method

.method private static a([CI)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 395
    const/4 v0, 0x0

    aget-char v1, p0, v0

    .line 396
    const/4 v0, 0x1

    :goto_4
    if-ge v0, p1, :cond_e

    .line 397
    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, p0, v0

    add-int/2addr v1, v2

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 399
    :cond_e
    return v1
.end method

.method public static a()Lorg/codehaus/jackson/c/c;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 169
    sget-object v3, Lorg/codehaus/jackson/c/c;->a:Lorg/codehaus/jackson/c/c;

    new-instance v0, Lorg/codehaus/jackson/c/c;

    const/4 v1, 0x0

    iget-object v4, v3, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    iget-object v5, v3, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    iget v6, v3, Lorg/codehaus/jackson/c/c;->g:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/c/c;-><init>(Lorg/codehaus/jackson/c/c;ZZ[Ljava/lang/String;[Lorg/codehaus/jackson/c/d;I)V

    return-object v0
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 190
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    .line 191
    const/16 v0, 0x20

    new-array v0, v0, [Lorg/codehaus/jackson/c/d;

    iput-object v0, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    .line 193
    const/16 v0, 0x3f

    iput v0, p0, Lorg/codehaus/jackson/c/c;->i:I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/c/c;->g:I

    .line 196
    const/16 v0, 0x30

    iput v0, p0, Lorg/codehaus/jackson/c/c;->h:I

    .line 197
    return-void
.end method

.method private declared-synchronized a(Lorg/codehaus/jackson/c/c;)V
    .registers 4
    .parameter

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lorg/codehaus/jackson/c/c;->g:I

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_11

    .line 265
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/c/c;->a(I)V

    .line 285
    :goto_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2c

    .line 286
    :cond_f
    monitor-exit p0

    return-void

    .line 271
    :cond_11
    :try_start_11
    iget v0, p1, Lorg/codehaus/jackson/c/c;->g:I

    iget v1, p0, Lorg/codehaus/jackson/c/c;->g:I

    if-le v0, v1, :cond_f

    .line 275
    iget-object v0, p1, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    iput-object v0, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    .line 277
    iget v0, p1, Lorg/codehaus/jackson/c/c;->g:I

    iput v0, p0, Lorg/codehaus/jackson/c/c;->g:I

    .line 278
    iget v0, p1, Lorg/codehaus/jackson/c/c;->h:I

    iput v0, p0, Lorg/codehaus/jackson/c/c;->h:I

    .line 279
    iget v0, p1, Lorg/codehaus/jackson/c/c;->i:I

    iput v0, p0, Lorg/codehaus/jackson/c/c;->i:I
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_c

    .line 259
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    array-length v3, v0

    .line 442
    add-int v0, v3, v3

    .line 448
    const/high16 v2, 0x1

    if-le v0, v2, :cond_1b

    .line 453
    iput v1, p0, Lorg/codehaus/jackson/c/c;->g:I

    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    .line 507
    :cond_1a
    return-void

    .line 460
    :cond_1b
    iget-object v4, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    .line 461
    iget-object v5, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    .line 462
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    .line 463
    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lorg/codehaus/jackson/c/d;

    iput-object v2, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    .line 465
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/c/c;->i:I

    .line 466
    iget v0, p0, Lorg/codehaus/jackson/c/c;->h:I

    iget v2, p0, Lorg/codehaus/jackson/c/c;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/codehaus/jackson/c/c;->h:I

    move v2, v1

    move v0, v1

    .line 473
    :goto_36
    if-ge v2, v3, :cond_62

    .line 474
    aget-object v6, v4, v2

    .line 475
    if-eqz v6, :cond_4f

    .line 476
    add-int/lit8 v0, v0, 0x1

    .line 477
    invoke-static {v6}, Lorg/codehaus/jackson/c/c;->a(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lorg/codehaus/jackson/c/c;->i:I

    and-int/2addr v7, v8

    .line 478
    iget-object v8, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_52

    .line 479
    iget-object v8, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aput-object v6, v8, v7

    .line 473
    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 481
    :cond_52
    shr-int/lit8 v7, v7, 0x1

    .line 482
    iget-object v8, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    new-instance v9, Lorg/codehaus/jackson/c/d;

    iget-object v10, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    aget-object v10, v10, v7

    invoke-direct {v9, v6, v10}, Lorg/codehaus/jackson/c/d;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/c/d;)V

    aput-object v9, v8, v7

    goto :goto_4f

    .line 487
    :cond_62
    shr-int/lit8 v4, v3, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    .line 488
    :goto_67
    if-ge v0, v4, :cond_9e

    .line 489
    aget-object v2, v5, v0

    .line 490
    :goto_6b
    if-eqz v2, :cond_9b

    .line 491
    add-int/lit8 v3, v1, 0x1

    .line 492
    invoke-virtual {v2}, Lorg/codehaus/jackson/c/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {v1}, Lorg/codehaus/jackson/c/c;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lorg/codehaus/jackson/c/c;->i:I

    and-int/2addr v6, v7

    .line 494
    iget-object v7, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_8b

    .line 495
    iget-object v7, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aput-object v1, v7, v6

    .line 500
    :goto_84
    invoke-virtual {v2}, Lorg/codehaus/jackson/c/d;->b()Lorg/codehaus/jackson/c/d;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    .line 501
    goto :goto_6b

    .line 497
    :cond_8b
    shr-int/lit8 v6, v6, 0x1

    .line 498
    iget-object v7, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    new-instance v8, Lorg/codehaus/jackson/c/d;

    iget-object v9, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    aget-object v9, v9, v6

    invoke-direct {v8, v1, v9}, Lorg/codehaus/jackson/c/d;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/c/d;)V

    aput-object v8, v7, v6

    goto :goto_84

    .line 488
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 504
    :cond_9e
    iget v0, p0, Lorg/codehaus/jackson/c/c;->g:I

    if-eq v1, v0, :cond_1a

    .line 505
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/codehaus/jackson/c/c;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries; now have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a([CIII)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 322
    if-gtz p3, :cond_6

    .line 323
    const-string v1, ""

    .line 382
    :goto_5
    return-object v1

    .line 325
    :cond_6
    iget-boolean v0, p0, Lorg/codehaus/jackson/c/c;->d:Z

    if-nez v0, :cond_10

    .line 326
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5

    .line 329
    :cond_10
    iget v0, p0, Lorg/codehaus/jackson/c/c;->i:I

    and-int v2, p4, v0

    .line 331
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aget-object v3, v0, v2

    .line 334
    if-eqz v3, :cond_43

    .line 336
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_33

    move v0, v1

    .line 339
    :cond_21
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, p2, v0

    aget-char v5, p1, v5

    if-ne v4, v5, :cond_2f

    .line 340
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_21

    .line 344
    :cond_2f
    if-ne v0, p3, :cond_33

    move-object v1, v3

    .line 345
    goto :goto_5

    .line 349
    :cond_33
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    shr-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    .line 350
    if-eqz v0, :cond_43

    .line 351
    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/c/d;->a([CII)Ljava/lang/String;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_43

    move-object v1, v0

    .line 353
    goto :goto_5

    .line 358
    :cond_43
    iget-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    if-nez v0, :cond_83

    .line 359
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    iget-object v4, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    array-length v3, v0

    new-array v4, v3, [Lorg/codehaus/jackson/c/d;

    iput-object v4, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    iget-object v4, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    move v0, v2

    .line 368
    :goto_63
    iget v1, p0, Lorg/codehaus/jackson/c/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/c/c;->g:I

    .line 370
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 371
    iget-boolean v2, p0, Lorg/codehaus/jackson/c/c;->c:Z

    if-eqz v2, :cond_78

    .line 372
    sget-object v2, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_78
    iget-object v2, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_94

    .line 376
    iget-object v2, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto :goto_5

    .line 361
    :cond_83
    iget v0, p0, Lorg/codehaus/jackson/c/c;->g:I

    iget v1, p0, Lorg/codehaus/jackson/c/c;->h:I

    if-lt v0, v1, :cond_a5

    .line 362
    invoke-direct {p0}, Lorg/codehaus/jackson/c/c;->c()V

    .line 366
    invoke-static {p1, p3}, Lorg/codehaus/jackson/c/c;->a([CI)I

    move-result v0

    iget v1, p0, Lorg/codehaus/jackson/c/c;->i:I

    and-int/2addr v0, v1

    goto :goto_63

    .line 378
    :cond_94
    shr-int/lit8 v0, v0, 0x1

    .line 379
    iget-object v2, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    new-instance v3, Lorg/codehaus/jackson/c/d;

    iget-object v4, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    aget-object v4, v4, v0

    invoke-direct {v3, v1, v4}, Lorg/codehaus/jackson/c/d;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/c/d;)V

    aput-object v3, v2, v0

    goto/16 :goto_5

    :cond_a5
    move v0, v2

    goto :goto_63
.end method

.method public final declared-synchronized a(ZZ)Lorg/codehaus/jackson/c/c;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/c/c;->e:[Ljava/lang/String;

    iget-object v5, p0, Lorg/codehaus/jackson/c/c;->f:[Lorg/codehaus/jackson/c/d;

    iget v6, p0, Lorg/codehaus/jackson/c/c;->g:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/c/c;-><init>(Lorg/codehaus/jackson/c/c;ZZ[Ljava/lang/String;[Lorg/codehaus/jackson/c/d;I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    if-nez v0, :cond_5

    .line 302
    :cond_4
    :goto_4
    return-void

    .line 294
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->b:Lorg/codehaus/jackson/c/c;

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lorg/codehaus/jackson/c/c;->b:Lorg/codehaus/jackson/c/c;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/c/c;->a(Lorg/codehaus/jackson/c/c;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/c/c;->j:Z

    goto :goto_4
.end method
