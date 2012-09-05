.class public final Lnb;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb$a;
    }
.end annotation


# static fields
.field static final a:Lnb;


# instance fields
.field protected b:Lnb;

.field protected final c:Z

.field protected final d:Z

.field protected e:[Ljava/lang/String;

.field protected f:[Lnb$a;

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    sput-object v0, Lnb;->a:Lnb;

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
    iput-boolean v0, p0, Lnb;->d:Z

    .line 182
    iput-boolean v0, p0, Lnb;->c:Z

    .line 184
    iput-boolean v0, p0, Lnb;->j:Z

    .line 185
    invoke-direct {p0}, Lnb;->c()V

    .line 186
    return-void
.end method

.method private constructor <init>(Lnb;ZZ[Ljava/lang/String;[Lnb$a;I)V
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
    iput-object p1, p0, Lnb;->b:Lnb;

    .line 207
    iput-boolean p2, p0, Lnb;->d:Z

    .line 208
    iput-boolean p3, p0, Lnb;->c:Z

    .line 210
    iput-object p4, p0, Lnb;->e:[Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lnb;->f:[Lnb$a;

    .line 212
    iput p6, p0, Lnb;->g:I

    .line 214
    array-length v0, p4

    .line 215
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lnb;->h:I

    .line 216
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnb;->i:I

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb;->j:Z

    .line 220
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_d
    if-ge v0, v2, :cond_19

    .line 405
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 408
    :cond_19
    return v1
.end method

.method private static a([CI)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 395
    const/4 v0, 0x0

    aget-char v0, p0, v0

    .line 396
    const/4 v1, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_7
    if-ge v0, p1, :cond_11

    .line 397
    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, p0, v0

    add-int/2addr v1, v2

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 399
    :cond_11
    return v1
.end method

.method public static a()Lnb;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 169
    sget-object v3, Lnb;->a:Lnb;

    new-instance v0, Lnb;

    const/4 v1, 0x0

    iget-object v4, v3, Lnb;->e:[Ljava/lang/String;

    iget-object v5, v3, Lnb;->f:[Lnb$a;

    iget v6, v3, Lnb;->g:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lnb;-><init>(Lnb;ZZ[Ljava/lang/String;[Lnb$a;I)V

    return-object v0
.end method

.method private declared-synchronized a(Lnb;)V
    .registers 4
    .parameter

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget v0, p1, Lnb;->g:I

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_f

    .line 265
    invoke-direct {p0}, Lnb;->c()V

    .line 285
    :goto_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb;->j:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2a

    .line 286
    :cond_d
    monitor-exit p0

    return-void

    .line 271
    :cond_f
    :try_start_f
    iget v0, p1, Lnb;->g:I

    iget v1, p0, Lnb;->g:I

    if-le v0, v1, :cond_d

    .line 275
    iget-object v0, p1, Lnb;->e:[Ljava/lang/String;

    iput-object v0, p0, Lnb;->e:[Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lnb;->f:[Lnb$a;

    iput-object v0, p0, Lnb;->f:[Lnb$a;

    .line 277
    iget v0, p1, Lnb;->g:I

    iput v0, p0, Lnb;->g:I

    .line 278
    iget v0, p1, Lnb;->h:I

    iput v0, p0, Lnb;->h:I

    .line 279
    iget v0, p1, Lnb;->i:I

    iput v0, p0, Lnb;->i:I
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_2a

    goto :goto_a

    .line 259
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 190
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnb;->e:[Ljava/lang/String;

    .line 191
    const/16 v0, 0x20

    new-array v0, v0, [Lnb$a;

    iput-object v0, p0, Lnb;->f:[Lnb$a;

    .line 193
    const/16 v0, 0x3f

    iput v0, p0, Lnb;->i:I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lnb;->g:I

    .line 196
    const/16 v0, 0x30

    iput v0, p0, Lnb;->h:I

    .line 197
    return-void
.end method

.method private d()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 441
    iget-object v0, p0, Lnb;->e:[Ljava/lang/String;

    array-length v0, v0

    .line 442
    add-int v1, v0, v0

    .line 448
    const/high16 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 453
    iput v10, p0, Lnb;->g:I

    .line 454
    iget-object v0, p0, Lnb;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lnb;->f:[Lnb$a;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    iput-boolean v5, p0, Lnb;->j:Z

    .line 507
    :cond_1a
    return-void

    .line 460
    :cond_1b
    iget-object v2, p0, Lnb;->e:[Ljava/lang/String;

    .line 461
    iget-object v3, p0, Lnb;->f:[Lnb$a;

    .line 462
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lnb;->e:[Ljava/lang/String;

    .line 463
    shr-int/lit8 v4, v1, 0x1

    new-array v4, v4, [Lnb$a;

    iput-object v4, p0, Lnb;->f:[Lnb$a;

    .line 465
    sub-int/2addr v1, v5

    iput v1, p0, Lnb;->i:I

    .line 466
    iget v1, p0, Lnb;->h:I

    iget v4, p0, Lnb;->h:I

    add-int/2addr v1, v4

    iput v1, p0, Lnb;->h:I

    move v1, v10

    move v4, v10

    .line 473
    :goto_35
    if-ge v1, v0, :cond_61

    .line 474
    aget-object v5, v2, v1

    .line 475
    if-eqz v5, :cond_4e

    .line 476
    add-int/lit8 v4, v4, 0x1

    .line 477
    invoke-static {v5}, Lnb;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lnb;->i:I

    and-int/2addr v6, v7

    .line 478
    iget-object v7, p0, Lnb;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_51

    .line 479
    iget-object v7, p0, Lnb;->e:[Ljava/lang/String;

    aput-object v5, v7, v6

    .line 473
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 481
    :cond_51
    shr-int/lit8 v6, v6, 0x1

    .line 482
    iget-object v7, p0, Lnb;->f:[Lnb$a;

    new-instance v8, Lnb$a;

    iget-object v9, p0, Lnb;->f:[Lnb$a;

    aget-object v9, v9, v6

    invoke-direct {v8, v5, v9}, Lnb$a;-><init>(Ljava/lang/String;Lnb$a;)V

    aput-object v8, v7, v6

    goto :goto_4e

    .line 487
    :cond_61
    shr-int/lit8 v0, v0, 0x1

    move v1, v10

    move v2, v4

    .line 488
    :goto_65
    if-ge v1, v0, :cond_9a

    .line 489
    aget-object v4, v3, v1

    move-object v11, v4

    move v4, v2

    move-object v2, v11

    .line 490
    :goto_6c
    if-eqz v2, :cond_96

    .line 491
    add-int/lit8 v4, v4, 0x1

    .line 492
    iget-object v5, v2, Lnb$a;->a:Ljava/lang/String;

    .line 493
    invoke-static {v5}, Lnb;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lnb;->i:I

    and-int/2addr v6, v7

    .line 494
    iget-object v7, p0, Lnb;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_86

    .line 495
    iget-object v7, p0, Lnb;->e:[Ljava/lang/String;

    aput-object v5, v7, v6

    .line 500
    :goto_83
    iget-object v2, v2, Lnb$a;->b:Lnb$a;

    goto :goto_6c

    .line 497
    :cond_86
    shr-int/lit8 v6, v6, 0x1

    .line 498
    iget-object v7, p0, Lnb;->f:[Lnb$a;

    new-instance v8, Lnb$a;

    iget-object v9, p0, Lnb;->f:[Lnb$a;

    aget-object v9, v9, v6

    invoke-direct {v8, v5, v9}, Lnb$a;-><init>(Ljava/lang/String;Lnb$a;)V

    aput-object v8, v7, v6

    goto :goto_83

    .line 488
    :cond_96
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_65

    .line 504
    :cond_9a
    iget v0, p0, Lnb;->g:I

    if-eq v2, v0, :cond_1a

    .line 505
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lnb;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries; now have "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    const/4 v5, 0x0

    .line 322
    if-gtz p3, :cond_6

    .line 323
    const-string v0, ""

    .line 382
    :goto_5
    return-object v0

    .line 325
    :cond_6
    iget-boolean v0, p0, Lnb;->d:Z

    if-nez v0, :cond_10

    .line 326
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5

    .line 329
    :cond_10
    iget v0, p0, Lnb;->i:I

    and-int/2addr v0, p4

    .line 331
    iget-object v1, p0, Lnb;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 334
    if-eqz v1, :cond_42

    .line 336
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_32

    move v2, v5

    .line 339
    :cond_20
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_2e

    .line 340
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_20

    .line 344
    :cond_2e
    if-ne v2, p3, :cond_32

    move-object v0, v1

    .line 345
    goto :goto_5

    .line 349
    :cond_32
    iget-object v1, p0, Lnb;->f:[Lnb$a;

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 350
    if-eqz v1, :cond_42

    .line 351
    invoke-virtual {v1, p1, p2, p3}, Lnb$a;->a([CII)Ljava/lang/String;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_42

    move-object v0, v1

    .line 353
    goto :goto_5

    .line 358
    :cond_42
    iget-boolean v1, p0, Lnb;->j:Z

    if-nez v1, :cond_82

    .line 359
    iget-object v1, p0, Lnb;->e:[Ljava/lang/String;

    array-length v2, v1

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lnb;->e:[Ljava/lang/String;

    iget-object v3, p0, Lnb;->e:[Ljava/lang/String;

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lnb;->f:[Lnb$a;

    array-length v2, v1

    new-array v3, v2, [Lnb$a;

    iput-object v3, p0, Lnb;->f:[Lnb$a;

    iget-object v3, p0, Lnb;->f:[Lnb$a;

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnb;->j:Z

    .line 368
    :cond_61
    :goto_61
    iget v1, p0, Lnb;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnb;->g:I

    .line 370
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 371
    iget-boolean v2, p0, Lnb;->c:Z

    if-eqz v2, :cond_76

    .line 372
    sget-object v2, Lni;->a:Lni;

    invoke-virtual {v2, v1}, Lni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_76
    iget-object v2, p0, Lnb;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_93

    .line 376
    iget-object v2, p0, Lnb;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    :goto_80
    move-object v0, v1

    .line 382
    goto :goto_5

    .line 361
    :cond_82
    iget v1, p0, Lnb;->g:I

    iget v2, p0, Lnb;->h:I

    if-lt v1, v2, :cond_61

    .line 362
    invoke-direct {p0}, Lnb;->d()V

    .line 366
    invoke-static {p1, p3}, Lnb;->a([CI)I

    move-result v0

    iget v1, p0, Lnb;->i:I

    and-int/2addr v0, v1

    goto :goto_61

    .line 378
    :cond_93
    shr-int/lit8 v0, v0, 0x1

    .line 379
    iget-object v2, p0, Lnb;->f:[Lnb$a;

    new-instance v3, Lnb$a;

    iget-object v4, p0, Lnb;->f:[Lnb$a;

    aget-object v4, v4, v0

    invoke-direct {v3, v1, v4}, Lnb$a;-><init>(Ljava/lang/String;Lnb$a;)V

    aput-object v3, v2, v0

    goto :goto_80
.end method

.method public final declared-synchronized a(ZZ)Lnb;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    new-instance v0, Lnb;

    iget-object v4, p0, Lnb;->e:[Ljava/lang/String;

    iget-object v5, p0, Lnb;->f:[Lnb$a;

    iget v6, p0, Lnb;->g:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lnb;-><init>(Lnb;ZZ[Ljava/lang/String;[Lnb$a;I)V
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
    iget-boolean v0, p0, Lnb;->j:Z

    if-nez v0, :cond_5

    .line 302
    :cond_4
    :goto_4
    return-void

    .line 294
    :cond_5
    iget-object v0, p0, Lnb;->b:Lnb;

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lnb;->b:Lnb;

    invoke-direct {v0, p0}, Lnb;->a(Lnb;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnb;->j:Z

    goto :goto_4
.end method
