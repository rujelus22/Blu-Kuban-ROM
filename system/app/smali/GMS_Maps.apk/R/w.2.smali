.class public Lr/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final synthetic c:Z

.field private static final d:[B

.field private static e:I


# instance fields
.field private A:Lr/ab;

.field private B:Lr/H;

.field private C:Ljava/util/Set;

.field private D:I

.field private final E:I

.field private final F:I

.field private final f:Ljava/lang/String;

.field private final g:Lr/Y;

.field private h:Lr/X;

.field private i:Lr/z;

.field private final j:Lr/G;

.field private final k:Lr/y;

.field private final l:[Lr/X;

.field private final m:Lt/f;

.field private final n:Ljava/util/Set;

.field private final o:Ljava/util/concurrent/locks/ReentrantLock;

.field private final p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 212
    const-class v0, Lr/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lr/w;->c:Z

    .line 216
    new-array v0, v1, [B

    sput-object v0, Lr/w;->d:[B

    .line 292
    const/16 v0, 0x14

    sput v0, Lr/w;->a:I

    .line 293
    const v0, 0x13f88

    sput v0, Lr/w;->b:I

    .line 297
    sget v0, Lr/w;->a:I

    sput v0, Lr/w;->e:I

    return-void

    :cond_1e
    move v0, v1

    .line 212
    goto :goto_a
.end method

.method private constructor <init>(Ljava/lang/String;Lr/z;Lr/G;Lr/y;Lr/X;Lr/Y;Lr/H;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    .line 369
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 382
    const/4 v2, -0x1

    iput v2, p0, Lr/w;->y:I

    .line 383
    iput-boolean v0, p0, Lr/w;->z:Z

    .line 387
    iput-object v4, p0, Lr/w;->A:Lr/ab;

    .line 391
    iput-object v4, p0, Lr/w;->B:Lr/H;

    .line 402
    iput v3, p0, Lr/w;->D:I

    .line 404
    const/16 v2, 0x32

    iput v2, p0, Lr/w;->E:I

    .line 406
    iput v3, p0, Lr/w;->F:I

    .line 416
    iput-object p1, p0, Lr/w;->f:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Lr/w;->i:Lr/z;

    .line 418
    iput-object p3, p0, Lr/w;->j:Lr/G;

    .line 419
    iput-object p4, p0, Lr/w;->k:Lr/y;

    .line 420
    iput-object p5, p0, Lr/w;->h:Lr/X;

    .line 421
    iput-object p6, p0, Lr/w;->g:Lr/Y;

    .line 422
    iget v2, p2, Lr/z;->d:I

    new-array v2, v2, [Lr/X;

    iput-object v2, p0, Lr/w;->l:[Lr/X;

    .line 423
    new-instance v2, Lt/f;

    const/16 v3, 0x800

    invoke-virtual {p0}, Lr/w;->f()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Lt/f;-><init>(I)V

    iput-object v2, p0, Lr/w;->m:Lt/f;

    .line 424
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lr/w;->n:Ljava/util/Set;

    .line 425
    iput-object p7, p0, Lr/w;->B:Lr/H;

    .line 428
    iget-object v2, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v2, v0

    .line 431
    :goto_5c
    :try_start_5c
    iget-object v3, p0, Lr/w;->i:Lr/z;

    iget v3, v3, Lr/z;->d:I

    if-ge v2, v3, :cond_c7

    .line 432
    iget-object v3, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v3, v2}, Lr/G;->c(I)Z

    move-result v3

    if-nez v3, :cond_7a

    iget-object v3, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v3, v2}, Lr/G;->d(I)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v3, v2}, Lr/y;->c(I)Z

    move-result v3

    if-nez v3, :cond_a8

    .line 434
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebuilding inconsistent shard: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lr/w;->a(Ljava/lang/String;)V

    .line 436
    iget v0, p0, Lr/w;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/w;->r:I
    :try_end_96
    .catchall {:try_start_5c .. :try_end_96} :catchall_e6

    .line 438
    :try_start_96
    invoke-direct {p0, v2}, Lr/w;->d(I)Lr/E;

    move-result-object v0

    .line 439
    iget-object v3, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v3, v0}, Lr/G;->a(Lr/E;)V

    .line 440
    iget-object v3, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v3, v0}, Lr/y;->a(Lr/E;)V

    .line 441
    invoke-direct {p0, v2}, Lr/w;->f(I)V
    :try_end_a7
    .catchall {:try_start_96 .. :try_end_a7} :catchall_e6
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a7} :catch_ab

    move v0, v1

    .line 431
    :cond_a8
    :goto_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 442
    :catch_ab
    move-exception v0

    .line 443
    :try_start_ac
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebuilding shard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    invoke-direct {p0, v2}, Lr/w;->g(I)V

    move v0, v1

    goto :goto_a8

    .line 450
    :cond_c7
    if-eqz v0, :cond_cc

    .line 451
    invoke-direct {p0}, Lr/w;->n()V
    :try_end_cc
    .catchall {:try_start_ac .. :try_end_cc} :catchall_e6

    .line 454
    :cond_cc
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 459
    iget-object v0, p0, Lr/w;->k:Lr/y;

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lr/y;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 460
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lr/G;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 462
    :cond_e5
    return-void

    .line 454
    :catchall_e6
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 659
    shl-int/lit8 v0, p0, 0x10

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Z)I
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1714
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lr/w;->j:Lr/G;

    iget v1, v1, Lr/G;->g:I

    if-ge v0, v1, :cond_14

    .line 1715
    iget-object v1, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v1, v0}, Lr/G;->d(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1748
    :cond_10
    :goto_10
    return v0

    .line 1714
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1720
    :cond_14
    if-eqz p1, :cond_24

    .line 1721
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v1, p0, Lr/w;->C:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lr/G;->a(Ljava/util/Set;)I

    move-result v0

    .line 1722
    if-eq v0, v2, :cond_24

    .line 1723
    invoke-direct {p0, v0}, Lr/w;->g(I)V

    goto :goto_10

    .line 1729
    :cond_24
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget v0, v0, Lr/G;->g:I

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->d:I

    if-ge v0, v1, :cond_5e

    .line 1732
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1734
    :try_start_37
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v0}, Lr/G;->b()I

    move-result v0

    .line 1735
    iget-object v1, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v1, v0}, Lr/y;->b(I)V

    .line 1736
    iget-object v1, p0, Lr/w;->k:Lr/y;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lr/y;->a(I)V
    :try_end_49
    .catchall {:try_start_37 .. :try_end_49} :catchall_53

    .line 1739
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_10

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 1744
    :cond_5e
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v1, p0, Lr/w;->C:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lr/G;->a(Ljava/util/Set;)I

    move-result v0

    .line 1745
    if-eq v0, v2, :cond_10

    .line 1746
    invoke-direct {p0, v0}, Lr/w;->g(I)V

    goto :goto_10
.end method

.method public static a([BI)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3086
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 3087
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 3088
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 3089
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 3090
    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(JLjava/lang/String;I[B)Lr/A;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1434
    new-instance v0, Lr/A;

    invoke-static {p0, p1, p2}, Lr/w;->c(JLjava/lang/String;)Lr/B;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p4, v2}, Lr/A;-><init>(Lr/B;I[BLr/x;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;[B)Lr/A;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1419
    new-instance v0, Lr/A;

    invoke-static {p0, p1, p2}, Lr/w;->c(JLjava/lang/String;)Lr/B;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lr/A;-><init>(Lr/B;[BLr/x;)V

    return-object v0
.end method

.method public static a(J[B)Lr/A;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1426
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lr/w;->a(JLjava/lang/String;[B)Lr/A;

    move-result-object v0

    return-object v0
.end method

.method private a(Lr/B;)Lr/D;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1183
    invoke-virtual {p1}, Lr/B;->a()J

    move-result-wide v2

    .line 1184
    iget-object v4, p0, Lr/w;->m:Lt/f;

    monitor-enter v4

    .line 1185
    :try_start_8
    iget-object v0, p0, Lr/w;->m:Lt/f;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/D;

    .line 1186
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_43

    .line 1190
    if-eqz v0, :cond_1e

    invoke-direct {p0, v0, p1}, Lr/w;->a(Lr/D;Lr/B;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object v0, v1

    .line 1194
    :cond_1e
    if-eqz v0, :cond_38

    iget-object v4, p0, Lr/w;->j:Lr/G;

    iget v5, v0, Lr/D;->g:I

    invoke-virtual {v4, v5}, Lr/G;->d(I)Z

    move-result v4

    if-nez v4, :cond_38

    .line 1197
    iget-object v4, p0, Lr/w;->m:Lt/f;

    monitor-enter v4

    .line 1198
    :try_start_2d
    iget-object v0, p0, Lr/w;->m:Lt/f;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_46

    move-object v0, v1

    .line 1204
    :cond_38
    if-nez v0, :cond_42

    .line 1205
    invoke-direct {p0, p1}, Lr/w;->b(Lr/B;)Lr/F;

    move-result-object v1

    .line 1206
    if-eqz v1, :cond_42

    .line 1207
    iget-object v0, v1, Lr/F;->b:Lr/D;

    .line 1210
    :cond_42
    return-object v0

    .line 1186
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    .line 1199
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private a(III)Lr/E;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1799
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->e:I

    mul-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->e:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1802
    const v0, 0x7ffffff

    sub-int v2, v0, p3

    .line 1803
    :goto_16
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget v0, v0, Lr/G;->g:I

    if-ge p1, v0, :cond_4a

    .line 1804
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v0, v0, Lr/G;->e:[I

    aget v0, v0, p1

    if-lez v0, :cond_47

    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v0, v0, Lr/G;->e:[I

    aget v0, v0, p1

    if-gt v0, v1, :cond_47

    iget-object v0, p0, Lr/w;->C:Ljava/util/Set;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lr/w;->C:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1808
    :cond_3c
    invoke-direct {p0, p1}, Lr/w;->d(I)Lr/E;

    move-result-object v0

    .line 1810
    invoke-virtual {v0}, Lr/E;->d()I

    move-result v3

    if-gt v3, v2, :cond_47

    .line 1816
    :goto_46
    return-object v0

    .line 1814
    :cond_47
    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    .line 1816
    :cond_4a
    const/4 v0, 0x0

    goto :goto_46
.end method

.method private a(Lr/B;I)Lr/F;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1120
    invoke-virtual {p1}, Lr/B;->a()J

    move-result-wide v2

    .line 1121
    iget v0, p0, Lr/w;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/w;->u:I

    .line 1125
    :try_start_b
    invoke-direct {p0, p2}, Lr/w;->d(I)Lr/E;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_45

    move-result-object v3

    .line 1142
    invoke-virtual {v3}, Lr/E;->b()I

    move-result v4

    .line 1143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-ge v2, v4, :cond_87

    .line 1145
    invoke-virtual {v3, v2}, Lr/E;->f(I)Lr/D;

    move-result-object v6

    .line 1146
    iget-wide v7, v6, Lr/D;->a:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_ca

    .line 1147
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-wide v7, v6, Lr/D;->a:J

    invoke-virtual {p1}, Lr/B;->a()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_ca

    invoke-direct {p0, v6, p1}, Lr/w;->a(Lr/D;Lr/B;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 1149
    new-instance v0, Lr/F;

    invoke-direct {v0, v3, v6, v2}, Lr/F;-><init>(Lr/E;Lr/D;I)V

    .line 1144
    :goto_40
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1a

    .line 1126
    :catch_45
    move-exception v0

    .line 1127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lookupShardRecordIndexFromShard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1134
    :try_start_6f
    invoke-direct {p0, p2}, Lr/w;->e(I)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7c

    .line 1136
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1174
    :goto_7b
    return-object v1

    .line 1136
    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    .line 1153
    :cond_87
    if-eqz v1, :cond_c3

    .line 1160
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/D;

    .line 1161
    iget-object v3, p0, Lr/w;->m:Lt/f;

    monitor-enter v3

    .line 1162
    :try_start_9c
    iget-object v4, p0, Lr/w;->m:Lt/f;

    iget-wide v5, v0, Lr/D;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    monitor-exit v3

    goto :goto_8d

    :catchall_a9
    move-exception v0

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_a9

    throw v0

    .line 1168
    :cond_ac
    iget-object v2, p0, Lr/w;->m:Lt/f;

    monitor-enter v2

    .line 1169
    :try_start_af
    iget-object v0, p0, Lr/w;->m:Lt/f;

    iget-object v3, v1, Lr/F;->b:Lr/D;

    iget-wide v3, v3, Lr/D;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lr/F;->b:Lr/D;

    invoke-virtual {v0, v3, v4}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    monitor-exit v2

    goto :goto_7b

    :catchall_c0
    move-exception v0

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_c0

    throw v0

    .line 1172
    :cond_c3
    iget v0, p0, Lr/w;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/w;->t:I

    goto :goto_7b

    :cond_ca
    move-object v0, v1

    goto/16 :goto_40
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 480
    const/4 v0, 0x0

    .line 481
    const/4 v3, -0x1

    if-ne p1, v3, :cond_9

    .line 482
    sget p1, Lr/w;->b:I

    move v0, v1

    .line 487
    :cond_9
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 488
    const/4 v3, -0x2

    if-ne p1, v3, :cond_3a

    .line 489
    const/16 p1, 0x2fee

    move v3, v1

    move v0, p1

    .line 497
    :goto_16
    if-ge v0, v2, :cond_19

    move v0, v2

    .line 500
    :cond_19
    if-nez v3, :cond_43

    sget v1, Lr/w;->b:I

    if-le v0, v1, :cond_43

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of records must be between 4 and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lr/w;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_3a
    const/4 v3, -0x3

    if-ne p1, v3, :cond_5c

    .line 492
    const p1, 0x28d71

    move v3, v1

    move v0, p1

    .line 493
    goto :goto_16

    .line 504
    :cond_43
    add-int/lit8 v1, v0, -0x1

    div-int/lit16 v1, v1, 0x199

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 505
    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x1

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 507
    invoke-static/range {v0 .. v7}, Lr/w;->a(Ljava/lang/String;IIZILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;

    move-result-object v0

    return-object v0

    :cond_5c
    move v3, v0

    move v0, p1

    goto :goto_16
.end method

.method static a(Ljava/lang/String;IIZILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    sget-boolean v1, Lr/w;->c:Z

    if-nez v1, :cond_11

    const/4 v1, 0x4

    if-lt p1, v1, :cond_b

    const/16 v1, 0x199

    if-le p1, v1, :cond_11

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 531
    :cond_11
    sget-boolean v1, Lr/w;->c:Z

    if-nez v1, :cond_21

    if-nez p3, :cond_21

    const/16 v1, 0x23

    if-le p1, v1, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 532
    :cond_21
    sget-boolean v1, Lr/w;->c:Z

    if-nez v1, :cond_32

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2c

    const/16 v1, 0x199

    if-le p2, v1, :cond_32

    :cond_2c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 535
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lr/Y;->a(Ljava/lang/String;)V

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lr/Y;->a(Ljava/lang/String;Z)Lr/X;

    move-result-object v11

    .line 541
    new-instance v1, Lr/z;

    invoke-static {}, Lr/w;->j()I

    move-result v2

    invoke-static {}, Lr/w;->k()I

    move-result v3

    invoke-static {v2, v3}, Lr/w;->a(II)I

    move-result v2

    const/16 v3, 0x2000

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lr/z;-><init>(IIIIZIJLjava/util/Locale;)V

    .line 545
    new-instance v5, Lr/G;

    invoke-direct {v5, p1}, Lr/G;-><init>(I)V

    .line 546
    new-instance v6, Lr/y;

    const/4 v2, 0x0

    invoke-direct {v6, p1, v2}, Lr/y;-><init>(II)V

    .line 548
    invoke-static {v1, v5, v6, v11}, Lr/w;->a(Lr/z;Lr/G;Lr/y;Lr/X;)V

    .line 550
    invoke-interface {v11}, Lr/X;->b()V

    .line 552
    new-instance v2, Lr/w;

    move-object v3, p0

    move-object v4, v1

    move-object v7, v11

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lr/w;-><init>(Ljava/lang/String;Lr/z;Lr/G;Lr/y;Lr/X;Lr/Y;Lr/H;)V

    .line 557
    return-object v2
.end method

.method public static a(Ljava/lang/String;Lr/Y;Lr/H;)Lr/w;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0xffff

    const/16 v4, 0x2000

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lr/Y;->a(Ljava/lang/String;Z)Lr/X;

    move-result-object v5

    .line 576
    new-array v0, v4, [B

    .line 577
    invoke-interface {v5, v0}, Lr/X;->a([B)V

    .line 578
    new-instance v2, Lr/z;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lr/z;-><init>([BI)V

    .line 581
    invoke-static {}, Lr/w;->k()I

    move-result v0

    .line 582
    invoke-static {}, Lr/w;->j()I

    move-result v8

    .line 583
    invoke-static {v8, v0}, Lr/w;->a(II)I

    move-result v9

    .line 585
    iget v1, v2, Lr/z;->a:I

    shr-int/lit8 v1, v1, 0x10

    and-int v10, v1, v3

    .line 587
    iget v1, v2, Lr/z;->a:I

    and-int/2addr v1, v3

    .line 589
    if-nez v10, :cond_74

    if-eq v1, v0, :cond_74

    .line 590
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Cache Header(1): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; cached sever schema is zero but client schema part doesn\'t match:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cachedClientSchema = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expectedClientSchema = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    :cond_74
    if-eqz v10, :cond_7a

    iget v0, v2, Lr/z;->a:I

    if-ne v0, v9, :cond_7e

    :cond_7a
    iget v0, v2, Lr/z;->c:I

    if-eq v0, v4, :cond_ab

    .line 596
    :cond_7e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Cache Header(2): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expect expectedSchema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBlockSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_ab
    new-instance v3, Lr/G;

    iget v0, v2, Lr/z;->d:I

    invoke-direct {v3, v0}, Lr/G;-><init>(I)V

    .line 602
    invoke-virtual {v3, v5}, Lr/G;->b(Lr/X;)V

    .line 605
    new-instance v4, Lr/y;

    iget v0, v2, Lr/z;->d:I

    iget v1, v3, Lr/G;->g:I

    invoke-direct {v4, v0, v1}, Lr/y;-><init>(II)V

    .line 606
    invoke-virtual {v4, v5}, Lr/y;->b(Lr/X;)V

    .line 608
    new-instance v0, Lr/w;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lr/w;-><init>(Ljava/lang/String;Lr/z;Lr/G;Lr/y;Lr/X;Lr/Y;Lr/H;)V

    .line 612
    if-nez v10, :cond_d4

    if-eqz v8, :cond_d4

    .line 613
    iget-object v1, v0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->g:I

    invoke-direct {v0, v1, v9}, Lr/w;->b(II)V

    .line 618
    :cond_d4
    return-object v0
.end method

.method private static a(ILr/B;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1979
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1980
    if-eqz v0, :cond_18

    .line 1981
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lr/Z;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1986
    :goto_14
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    return-void

    .line 1984
    :cond_18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_14
.end method

.method private a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 3147
    return-void
.end method

.method private a(Lr/C;Lr/E;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1547
    invoke-virtual {p1}, Lr/C;->b()V

    .line 1548
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lr/w;->a(Lr/E;Z)V

    .line 1549
    return-void
.end method

.method private a(Lr/D;Ljava/io/IOException;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1002
    iget v0, p0, Lr/w;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/w;->s:I

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1004
    iget-object v0, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1005
    return-void
.end method

.method private a(Lr/E;Lr/E;Lr/C;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1762
    invoke-virtual {p1}, Lr/E;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lr/w;->b(I)Lr/X;

    move-result-object v11

    .line 1763
    const/4 v0, 0x0

    move v10, v0

    :goto_a
    invoke-virtual {p1}, Lr/E;->b()I

    move-result v0

    if-ge v10, v0, :cond_7d

    .line 1764
    invoke-virtual {p1, v10}, Lr/E;->b(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_79

    invoke-virtual {p1, v10}, Lr/E;->e(I)I

    move-result v0

    if-lez v0, :cond_79

    .line 1765
    invoke-virtual {p2}, Lr/E;->b()I

    move-result v0

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->e:I

    if-ge v0, v1, :cond_33

    invoke-virtual {p2}, Lr/E;->c()I

    move-result v0

    const v1, 0x7ffffff

    if-lt v0, v1, :cond_3b

    .line 1768
    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t fit refcounted records into collecting shard"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_3b
    invoke-virtual {p1, v10}, Lr/E;->f(I)Lr/D;

    move-result-object v7

    .line 1771
    iget v0, v7, Lr/D;->d:I

    iget v1, v7, Lr/D;->e:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1772
    iget v1, v7, Lr/D;->b:I

    invoke-static {v11, v1, v0}, Lr/w;->a(Lr/X;I[B)V

    .line 1773
    invoke-virtual {p3, v0}, Lr/C;->a([B)V

    .line 1774
    new-instance v0, Lr/D;

    iget-wide v1, v7, Lr/D;->a:J

    invoke-virtual {p2}, Lr/E;->c()I

    move-result v3

    iget v4, v7, Lr/D;->d:I

    iget v5, v7, Lr/D;->e:I

    iget v6, v7, Lr/D;->c:I

    iget v7, v7, Lr/D;->f:I

    invoke-virtual {p2}, Lr/E;->a()I

    move-result v8

    invoke-virtual {p2}, Lr/E;->b()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lr/D;-><init>(JIIIIIII)V

    .line 1778
    invoke-virtual {p2, v0}, Lr/E;->a(Lr/D;)V

    .line 1779
    iget-object v1, p0, Lr/w;->B:Lr/H;

    if-eqz v1, :cond_79

    .line 1780
    iget-object v1, p0, Lr/w;->B:Lr/H;

    iget-wide v2, v0, Lr/D;->a:J

    iget v0, v0, Lr/D;->g:I

    invoke-interface {v1, v2, v3, v0}, Lr/H;->b(JI)V

    .line 1763
    :cond_79
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_a

    .line 1784
    :cond_7d
    return-void
.end method

.method private a(Lr/E;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 942
    invoke-virtual {p0}, Lr/w;->h()V

    .line 943
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v0, v0, Lr/G;->a:[I

    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v1

    aget v0, v0, v1

    .line 945
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 949
    :try_start_16
    iget-object v1, p0, Lr/w;->j:Lr/G;

    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v2

    invoke-virtual {v1, v2}, Lr/G;->b(I)V

    .line 950
    invoke-direct {p0}, Lr/w;->n()V

    .line 957
    iget-object v1, p0, Lr/w;->h:Lr/X;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_71

    .line 958
    :try_start_25
    iget-object v2, p0, Lr/w;->h:Lr/X;

    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lr/w;->i:Lr/z;

    iget v4, v4, Lr/z;->k:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lr/X;->a(J)V

    .line 959
    iget-object v2, p0, Lr/w;->h:Lr/X;

    invoke-virtual {p1, v2}, Lr/E;->b(Lr/X;)V

    .line 960
    iget-object v2, p0, Lr/w;->h:Lr/X;

    invoke-interface {v2}, Lr/X;->b()V

    .line 961
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_6e

    .line 964
    :try_start_41
    iget-object v1, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v1, p1}, Lr/y;->a(Lr/E;)V

    .line 965
    iget-object v1, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v1, p1}, Lr/G;->a(Lr/E;)V

    .line 966
    if-eqz p2, :cond_7c

    .line 967
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v1

    invoke-direct {p0}, Lr/w;->p()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lr/G;->a(II)V
    :try_end_5a
    .catchall {:try_start_41 .. :try_end_5a} :catchall_71

    .line 972
    :goto_5a
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 976
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v0

    invoke-direct {p0, v0}, Lr/w;->f(I)V

    .line 977
    invoke-direct {p0}, Lr/w;->n()V

    .line 978
    return-void

    .line 961
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 972
    :catchall_71
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 969
    :cond_7c
    :try_start_7c
    iget-object v1, p0, Lr/w;->j:Lr/G;

    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lr/G;->a(II)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_71

    goto :goto_5a
.end method

.method private static a(Lr/X;I[B)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3074
    monitor-enter p0

    .line 3075
    int-to-long v0, p1

    :try_start_2
    invoke-interface {p0, v0, v1}, Lr/X;->a(J)V

    .line 3076
    invoke-interface {p0, p2}, Lr/X;->a([B)V

    .line 3077
    monitor-exit p0

    .line 3078
    return-void

    .line 3077
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static a(Lr/z;Lr/G;Lr/y;Lr/X;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 668
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 669
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lr/z;->a([BI)I

    .line 670
    invoke-interface {p3, v0}, Lr/X;->b([B)V

    .line 671
    invoke-virtual {p1, p3}, Lr/G;->a(Lr/X;)V

    .line 672
    invoke-virtual {p2, p3}, Lr/y;->a(Lr/X;)V

    .line 673
    return-void
.end method

.method public static a([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3099
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 3100
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 3101
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 3102
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 3103
    return-void
.end method

.method public static a([BIJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3134
    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lr/w;->a([BII)V

    .line 3135
    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lr/w;->a([BII)V

    .line 3136
    return-void
.end method

.method private a(Lr/D;Lr/B;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p2}, Lr/B;->b()[B

    move-result-object v1

    .line 1080
    array-length v2, v1

    iget v3, p1, Lr/D;->d:I

    if-eq v2, v3, :cond_b

    .line 1093
    :goto_a
    return v0

    .line 1084
    :cond_b
    array-length v2, v1

    if-nez v2, :cond_10

    .line 1086
    const/4 v0, 0x1

    goto :goto_a

    .line 1090
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lr/w;->a(Lr/D;)[B

    move-result-object v2

    .line 1091
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_19

    move-result v0

    goto :goto_a

    .line 1092
    :catch_19
    move-exception v1

    goto :goto_a
.end method

.method private a(Lr/D;)[B
    .registers 5
    .parameter

    .prologue
    .line 1012
    iget v0, p1, Lr/D;->d:I

    if-nez v0, :cond_7

    .line 1013
    sget-object v0, Lr/w;->d:[B

    .line 1021
    :goto_6
    return-object v0

    .line 1018
    :cond_7
    :try_start_7
    iget v0, p1, Lr/D;->g:I

    invoke-virtual {p0, v0}, Lr/w;->b(I)Lr/X;

    move-result-object v1

    .line 1019
    iget v0, p1, Lr/D;->d:I

    new-array v0, v0, [B

    .line 1020
    iget v2, p1, Lr/D;->b:I

    invoke-static {v1, v2, v0}, Lr/w;->a(Lr/X;I[B)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_6

    .line 1022
    :catch_17
    move-exception v0

    .line 1023
    invoke-direct {p0, p1, v0}, Lr/w;->a(Lr/D;Ljava/io/IOException;)V

    .line 1024
    throw v0
.end method

.method private b(Ljava/util/Collection;)I
    .registers 6
    .parameter

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1527
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/A;

    .line 1530
    iget-object v3, v0, Lr/A;->d:[B

    array-length v3, v3

    iget-object v0, v0, Lr/A;->b:[B

    array-length v0, v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    .line 1532
    :cond_1c
    return v1
.end method

.method public static b([BI)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3106
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 3107
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 3108
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(Lr/B;)Lr/F;
    .registers 6
    .parameter

    .prologue
    .line 1221
    invoke-virtual {p1}, Lr/B;->a()J

    move-result-wide v0

    .line 1222
    invoke-static {v0, v1}, Lr/y;->a(J)[I

    move-result-object v2

    .line 1223
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget v3, v0, Lr/G;->g:I

    .line 1224
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_2b

    .line 1225
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v0, v1}, Lr/G;->d(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v0, v2, v1}, Lr/y;->a([II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1226
    invoke-direct {p0, p1, v1}, Lr/w;->a(Lr/B;I)Lr/F;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_27

    .line 1232
    :goto_26
    return-object v0

    .line 1224
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1232
    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private b(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 839
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 841
    :try_start_5
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->g:I

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->a:I

    if-eq p2, v0, :cond_4f

    .line 844
    :cond_11
    new-instance v0, Lr/z;

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v2, v1, Lr/z;->c:I

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v3, v1, Lr/z;->d:I

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v4, v1, Lr/z;->e:I

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget-boolean v5, v1, Lr/z;->f:Z

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget-wide v7, v1, Lr/z;->h:J

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget-object v9, v1, Lr/z;->i:Ljava/util/Locale;

    move v1, p2

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lr/z;-><init>(IIIIZIJLjava/util/Locale;)V

    .line 848
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 849
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lr/z;->a([BI)I

    .line 850
    iget-object v2, p0, Lr/w;->h:Lr/X;

    monitor-enter v2
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3b} :catch_58

    .line 851
    :try_start_3b
    iget-object v3, p0, Lr/w;->h:Lr/X;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lr/X;->a(J)V

    .line 852
    iget-object v3, p0, Lr/w;->h:Lr/X;

    invoke-interface {v3, v1}, Lr/X;->b([B)V

    .line 853
    iget-object v1, p0, Lr/w;->h:Lr/X;

    invoke-interface {v1}, Lr/X;->b()V

    .line 854
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_55

    .line 855
    :try_start_4d
    iput-object v0, p0, Lr/w;->i:Lr/z;
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4f} :catch_58

    .line 861
    :cond_4f
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 863
    return-void

    .line 854
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_58} :catch_58

    .line 857
    :catch_58
    move-exception v0

    .line 858
    :try_start_59
    invoke-virtual {p0}, Lr/w;->g()V

    .line 859
    throw v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    .line 861
    :catchall_5d
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b(ILjava/util/Locale;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 876
    invoke-virtual {p0}, Lr/w;->h()V

    .line 879
    iget-object v1, p0, Lr/w;->m:Lt/f;

    monitor-enter v1

    .line 880
    :try_start_7
    iget-object v0, p0, Lr/w;->m:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 881
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_36

    .line 884
    iget-object v0, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v10

    .line 887
    :goto_13
    iget-object v1, p0, Lr/w;->l:[Lr/X;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 888
    iget-object v1, p0, Lr/w;->l:[Lr/X;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2a

    .line 889
    iget-object v1, p0, Lr/w;->l:[Lr/X;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lr/X;->a()V

    .line 890
    iget-object v1, p0, Lr/w;->l:[Lr/X;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 892
    :cond_2a
    iget-object v1, p0, Lr/w;->g:Lr/Y;

    invoke-virtual {p0, v0}, Lr/w;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lr/Y;->a(Ljava/lang/String;)V

    .line 887
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 881
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 896
    :cond_39
    iget-object v0, p0, Lr/w;->h:Lr/X;

    invoke-interface {v0}, Lr/X;->a()V

    .line 897
    iget-object v0, p0, Lr/w;->g:Lr/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lr/Y;->a(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lr/w;->g:Lr/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lr/Y;->a(Ljava/lang/String;Z)Lr/X;

    move-result-object v0

    iput-object v0, p0, Lr/w;->h:Lr/X;

    .line 902
    new-instance v0, Lr/z;

    invoke-static {}, Lr/w;->j()I

    move-result v1

    invoke-static {}, Lr/w;->k()I

    move-result v2

    invoke-static {v1, v2}, Lr/w;->a(II)I

    move-result v1

    iget-object v2, p0, Lr/w;->i:Lr/z;

    iget v2, v2, Lr/z;->c:I

    iget-object v3, p0, Lr/w;->i:Lr/z;

    iget v3, v3, Lr/z;->d:I

    iget-object v4, p0, Lr/w;->i:Lr/z;

    iget v4, v4, Lr/z;->e:I

    iget-object v5, p0, Lr/w;->i:Lr/z;

    iget-boolean v5, v5, Lr/z;->f:Z

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v7

    move v6, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lr/z;-><init>(IIIIZIJLjava/util/Locale;)V

    iput-object v0, p0, Lr/w;->i:Lr/z;

    .line 907
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v0}, Lr/G;->a()V

    .line 908
    iget-object v0, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v0}, Lr/y;->a()V

    .line 910
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget-object v1, p0, Lr/w;->j:Lr/G;

    iget-object v2, p0, Lr/w;->k:Lr/y;

    iget-object v3, p0, Lr/w;->h:Lr/X;

    invoke-static {v0, v1, v2, v3}, Lr/w;->a(Lr/z;Lr/G;Lr/y;Lr/X;)V

    .line 911
    iget-object v0, p0, Lr/w;->h:Lr/X;

    invoke-interface {v0}, Lr/X;->b()V

    .line 913
    iput-boolean v10, p0, Lr/w;->q:Z

    .line 916
    iget-object v0, p0, Lr/w;->A:Lr/ab;

    if-eqz v0, :cond_cc

    .line 917
    iget-object v0, p0, Lr/w;->A:Lr/ab;

    invoke-interface {v0}, Lr/ab;->a()V

    .line 919
    :cond_cc
    return-void
.end method

.method private b(Lr/D;)V
    .registers 7
    .parameter

    .prologue
    .line 1941
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1944
    :try_start_3
    iget v0, p1, Lr/D;->g:I

    invoke-direct {p0, v0}, Lr/w;->d(I)Lr/E;

    move-result-object v0

    .line 1945
    invoke-virtual {v0}, Lr/E;->b()I

    move-result v1

    iget v2, p1, Lr/D;->h:I

    if-le v1, v2, :cond_1f

    iget v1, p1, Lr/D;->h:I

    invoke-virtual {v0, v1}, Lr/E;->f(I)Lr/D;

    move-result-object v1

    iget-wide v1, v1, Lr/D;->a:J

    iget-wide v3, p1, Lr/D;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 1967
    :cond_1f
    :goto_1f
    return-void

    .line 1952
    :cond_20
    iget v1, p1, Lr/D;->h:I

    invoke-virtual {v0, v1}, Lr/E;->a(I)V

    .line 1953
    iget-object v1, p0, Lr/w;->m:Lt/f;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_4f

    .line 1954
    :try_start_28
    iget-object v2, p0, Lr/w;->m:Lt/f;

    iget-wide v3, p1, Lr/D;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_69

    .line 1957
    :try_start_34
    iget-object v1, p0, Lr/w;->A:Lr/ab;

    if-eqz v1, :cond_3f

    .line 1958
    iget-object v1, p0, Lr/w;->A:Lr/ab;

    iget-wide v2, p1, Lr/D;->a:J

    invoke-interface {v1, v2, v3}, Lr/ab;->a(J)V

    .line 1960
    :cond_3f
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lr/w;->a(Lr/E;Z)V

    .line 1961
    iget-object v0, p0, Lr/w;->B:Lr/H;

    if-eqz v0, :cond_1f

    .line 1962
    iget-object v0, p0, Lr/w;->B:Lr/H;

    iget-wide v1, p1, Lr/D;->a:J

    invoke-interface {v0, v1, v2}, Lr/H;->a(J)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4e} :catch_4f

    goto :goto_1f

    .line 1964
    :catch_4f
    move-exception v0

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 1955
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v0
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6c} :catch_4f
.end method

.method private b(Z)V
    .registers 15
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1840
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1843
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->d:I

    iget v1, p0, Lr/w;->D:I

    if-gt v0, v1, :cond_e

    .line 1937
    :cond_d
    :goto_d
    return-void

    .line 1848
    :cond_e
    if-eqz p1, :cond_b9

    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget v0, v0, Lr/G;->g:I

    .line 1850
    :goto_14
    iget-object v1, p0, Lr/w;->j:Lr/G;

    iget v1, v1, Lr/G;->h:I

    sub-int/2addr v0, v1

    .line 1851
    iget-object v1, p0, Lr/w;->C:Ljava/util/Set;

    if-eqz v1, :cond_24

    .line 1852
    iget-object v1, p0, Lr/w;->C:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1855
    :cond_24
    iget v1, p0, Lr/w;->D:I

    if-ge v0, v1, :cond_d

    .line 1856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1861
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_2f
    invoke-direct {p0, v0, v1, v4}, Lr/w;->a(III)Lr/E;

    move-result-object v4

    .line 1862
    if-eqz v4, :cond_d

    .line 1866
    invoke-virtual {v4}, Lr/E;->a()I

    move-result v0

    .line 1867
    add-int/lit8 v1, v0, 0x1

    iget-object v7, p0, Lr/w;->j:Lr/G;

    iget-object v7, v7, Lr/G;->e:[I

    aget v0, v7, v0

    invoke-virtual {v4}, Lr/E;->d()I

    move-result v7

    invoke-direct {p0, v1, v0, v7}, Lr/w;->a(III)Lr/E;

    move-result-object v0

    .line 1869
    if-eqz v0, :cond_d

    .line 1872
    invoke-direct {p0, p1}, Lr/w;->a(Z)I

    move-result v7

    .line 1873
    const/4 v1, -0x1

    if-eq v7, v1, :cond_d

    .line 1878
    new-instance v1, Lr/E;

    invoke-direct {v1, v7}, Lr/E;-><init>(I)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_57} :catch_13b

    .line 1879
    const/high16 v8, 0x2

    :try_start_59
    new-array v8, v8, [B

    .line 1880
    const/4 v9, 0x0

    .line 1881
    new-instance v10, Lr/C;

    invoke-virtual {p0, v7}, Lr/w;->b(I)Lr/X;

    move-result-object v7

    invoke-direct {v10, v7, v9, v8}, Lr/C;-><init>(Lr/X;I[B)V

    .line 1883
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1885
    :goto_6a
    if-eqz v4, :cond_81

    .line 1887
    invoke-direct {p0, v4, v1, v10}, Lr/w;->a(Lr/E;Lr/E;Lr/C;)V

    .line 1888
    invoke-virtual {v4}, Lr/E;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1891
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_bf

    .line 1905
    :cond_81
    invoke-direct {p0, v10, v1}, Lr/w;->a(Lr/C;Lr/E;)V

    .line 1906
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_97} :catch_e1

    move-result v4

    .line 1910
    :try_start_98
    invoke-direct {p0, v4}, Lr/w;->d(I)Lr/E;

    move-result-object v8

    move v0, v3

    .line 1911
    :goto_9d
    invoke-virtual {v8}, Lr/E;->b()I

    move-result v9

    if-ge v0, v9, :cond_d7

    .line 1912
    invoke-virtual {v8, v0}, Lr/E;->b(I)J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_b6

    invoke-virtual {v8, v0}, Lr/E;->e(I)I

    move-result v9

    if-lez v9, :cond_b6

    .line 1913
    invoke-virtual {v8, v0}, Lr/E;->a(I)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_b6} :catch_dc

    .line 1911
    :cond_b6
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 1848
    :cond_b9
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->d:I

    goto/16 :goto_14

    .line 1896
    :cond_bf
    if-eqz v0, :cond_c4

    move-object v4, v0

    move-object v0, v2

    .line 1898
    goto :goto_6a

    .line 1900
    :cond_c4
    :try_start_c4
    invoke-virtual {v4}, Lr/E;->a()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Lr/E;->b()I

    move-result v8

    invoke-virtual {v1}, Lr/E;->c()I

    move-result v9

    invoke-direct {p0, v4, v8, v9}, Lr/w;->a(III)Lr/E;
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d5} :catch_e1

    move-result-object v4

    goto :goto_6a

    .line 1916
    :cond_d7
    const/4 v0, 0x0

    :try_start_d8
    invoke-direct {p0, v8, v0}, Lr/w;->a(Lr/E;Z)V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_88

    .line 1917
    :catch_dc
    move-exception v0

    .line 1918
    :try_start_dd
    invoke-direct {p0, v4}, Lr/w;->g(I)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_88

    .line 1928
    :catch_e1
    move-exception v0

    .line 1931
    :goto_e2
    if-eqz v1, :cond_eb

    .line 1932
    invoke-virtual {v1}, Lr/E;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lr/w;->g(I)V

    .line 1934
    :cond_eb
    const-string v1, "Failed to combine refCounted records"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1921
    :cond_f2
    :try_start_f2
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v5, v2

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Combined refCounted records from "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " shards in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " milliseconds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1926
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lh/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_139} :catch_e1

    goto/16 :goto_d

    .line 1928
    :catch_13b
    move-exception v0

    move-object v1, v2

    goto :goto_e2
.end method

.method public static b([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3113
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 3114
    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 3115
    return-void
.end method

.method static c([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3139
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 3140
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 3141
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 3142
    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 3123
    invoke-static {p0, p1}, Lr/w;->a([BI)I

    move-result v0

    int-to-long v0, v0

    .line 3124
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lr/w;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 3125
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 15
    .parameter

    .prologue
    .line 1997
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1998
    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1999
    new-instance v6, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 2000
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2004
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2005
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2007
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 2008
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/A;

    .line 2009
    iget-object v2, v0, Lr/A;->a:Lr/B;

    invoke-virtual {v2}, Lr/B;->a()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v2, v2, v9

    if-eqz v2, :cond_49

    iget-object v2, v0, Lr/A;->b:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_4d

    .line 2012
    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 2014
    :cond_4d
    iget-object v2, v0, Lr/A;->a:Lr/B;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2016
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2018
    iget v2, v0, Lr/A;->c:I

    if-lez v2, :cond_2a

    .line 2019
    iget v2, v0, Lr/A;->c:I

    iget-object v0, v0, Lr/A;->a:Lr/B;

    invoke-static {v2, v0, v7}, Lr/w;->a(ILr/B;Ljava/util/Map;)V

    goto :goto_2a

    .line 2022
    :cond_64
    iget-object v2, v0, Lr/A;->a:Lr/B;

    invoke-virtual {v2}, Lr/B;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2023
    iget-object v0, v0, Lr/A;->a:Lr/B;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 2031
    :cond_77
    const/4 v0, 0x0

    move v1, v0

    :goto_79
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget v0, v0, Lr/G;->g:I

    if-ge v1, v0, :cond_147

    .line 2032
    const/4 v2, 0x0

    .line 2033
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_190

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2034
    iget-object v4, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v4, v1}, Lr/G;->d(I)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, p0, Lr/w;->k:Lr/y;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10, v1}, Lr/y;->b(JI)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2035
    const/4 v0, 0x1

    .line 2039
    :goto_a5
    if-eqz v0, :cond_13b

    .line 2040
    const/4 v0, 0x0

    .line 2042
    :try_start_a8
    invoke-direct {p0, v1}, Lr/w;->d(I)Lr/E;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_115

    move-result-object v0

    move-object v4, v0

    .line 2048
    :goto_ad
    if-eqz v4, :cond_13b

    .line 2049
    const/4 v2, 0x0

    .line 2050
    const/4 v0, 0x0

    :goto_b1
    invoke-virtual {v4}, Lr/E;->b()I

    move-result v3

    if-ge v0, v3, :cond_135

    .line 2051
    invoke-virtual {v4, v0}, Lr/E;->b(I)J

    move-result-wide v9

    .line 2052
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 2053
    sget-object v3, Lr/w;->d:[B

    .line 2057
    invoke-virtual {v4, v0}, Lr/E;->c(I)I

    move-result v11

    if-lez v11, :cond_d5

    .line 2058
    invoke-virtual {v4, v0}, Lr/E;->f(I)Lr/D;

    move-result-object v3

    .line 2061
    :try_start_d1
    invoke-direct {p0, v3}, Lr/w;->a(Lr/D;)[B
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_18d

    move-result-object v3

    .line 2068
    :cond_d5
    new-instance v11, Lr/B;

    invoke-direct {v11, v9, v10, v3}, Lr/B;-><init>(J[B)V

    .line 2069
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 2070
    iget v2, p0, Lr/w;->w:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lr/w;->w:I

    .line 2071
    iget-object v2, p0, Lr/w;->B:Lr/H;

    if-eqz v2, :cond_ef

    .line 2072
    iget-object v2, p0, Lr/w;->B:Lr/H;

    invoke-interface {v2, v9, v10}, Lr/H;->a(J)V

    .line 2074
    :cond_ef
    iget-object v2, p0, Lr/w;->m:Lt/f;

    monitor-enter v2

    .line 2075
    :try_start_f2
    iget-object v3, p0, Lr/w;->m:Lt/f;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    monitor-exit v2
    :try_end_fc
    .catchall {:try_start_f2 .. :try_end_fc} :catchall_132

    .line 2077
    iget-object v2, p0, Lr/w;->A:Lr/ab;

    if-eqz v2, :cond_105

    .line 2078
    iget-object v2, p0, Lr/w;->A:Lr/ab;

    invoke-interface {v2, v9, v10}, Lr/ab;->a(J)V

    .line 2083
    :cond_105
    invoke-virtual {v4, v0}, Lr/E;->e(I)I

    move-result v2

    .line 2084
    if-lez v2, :cond_10e

    .line 2086
    invoke-static {v2, v11, v7}, Lr/w;->a(ILr/B;Ljava/util/Map;)V

    .line 2089
    :cond_10e
    invoke-virtual {v4, v0}, Lr/E;->a(I)V

    .line 2090
    const/4 v2, 0x1

    .line 2050
    :cond_112
    :goto_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 2043
    :catch_115
    move-exception v2

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeOldRecordsAndFilterInsertions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2045
    invoke-direct {p0, v1}, Lr/w;->g(I)V

    move-object v4, v0

    goto/16 :goto_ad

    .line 2076
    :catchall_132
    move-exception v0

    :try_start_133
    monitor-exit v2
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw v0

    .line 2094
    :cond_135
    if-eqz v2, :cond_140

    .line 2095
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lr/w;->a(Lr/E;Z)V

    .line 2031
    :cond_13b
    :goto_13b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_79

    .line 2101
    :cond_140
    iget v0, p0, Lr/w;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/w;->v:I

    goto :goto_13b

    .line 2109
    :cond_147
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2110
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_157
    if-ltz v2, :cond_18f

    .line 2111
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/A;

    .line 2112
    iget-object v1, v0, Lr/A;->a:Lr/B;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2113
    if-eqz v1, :cond_186

    .line 2116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lr/A;->c:I

    invoke-static {v1, v4}, Lr/Z;->a(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2118
    new-instance v1, Lr/A;

    iget-object v5, v0, Lr/A;->a:Lr/B;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lr/A;->d:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v0, v6}, Lr/A;-><init>(Lr/B;I[BLr/x;)V

    move-object v0, v1

    .line 2120
    :cond_186
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_157

    .line 2062
    :catch_18d
    move-exception v3

    goto :goto_112

    .line 2122
    :cond_18f
    return-object v3

    :cond_190
    move v0, v2

    goto/16 :goto_a5
.end method

.method private static c(JLjava/lang/String;)Lr/B;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1305
    sget-object v0, Lr/w;->d:[B

    .line 1307
    if-eqz p2, :cond_8

    .line 1308
    invoke-static {p2}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 1311
    :cond_8
    new-instance v1, Lr/B;

    invoke-direct {v1, p0, p1, v0}, Lr/B;-><init>(J[B)V

    return-object v1
.end method

.method private c(Lr/B;)[B
    .registers 7
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Lr/w;->a(Lr/B;)Lr/D;

    move-result-object v1

    .line 1346
    if-eqz v1, :cond_4f

    .line 1349
    :try_start_6
    iget v0, v1, Lr/D;->g:I

    invoke-virtual {p0, v0}, Lr/w;->b(I)Lr/X;

    move-result-object v2

    .line 1350
    iget v0, v1, Lr/D;->e:I

    new-array v0, v0, [B

    .line 1351
    iget v3, v1, Lr/D;->b:I

    iget v4, v1, Lr/D;->d:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lr/w;->a(Lr/X;I[B)V

    .line 1354
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lr/w;->c([BII)I

    move-result v2

    .line 1355
    iget v3, v1, Lr/D;->f:I

    if-eq v2, v3, :cond_51

    .line 1356
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checksum mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_4b} :catch_4b

    .line 1363
    :catch_4b
    move-exception v0

    .line 1364
    invoke-direct {p0, v1, v0}, Lr/w;->a(Lr/D;Ljava/io/IOException;)V

    .line 1367
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return-object v0

    .line 1361
    :cond_51
    :try_start_51
    iget-object v2, p0, Lr/w;->j:Lr/G;

    iget v3, v1, Lr/D;->g:I

    invoke-direct {p0}, Lr/w;->p()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lr/G;->a(II)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_4b

    goto :goto_50
.end method

.method private d(I)Lr/E;
    .registers 6
    .parameter

    .prologue
    .line 925
    iget-object v1, p0, Lr/w;->h:Lr/X;

    monitor-enter v1

    .line 926
    :try_start_3
    iget-object v0, p0, Lr/w;->h:Lr/X;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lr/w;->i:Lr/z;

    iget v3, v3, Lr/z;->k:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lr/X;->a(J)V

    .line 927
    iget-object v0, p0, Lr/w;->h:Lr/X;

    invoke-static {v0}, Lr/E;->a(Lr/X;)Lr/E;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 928
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private e(I)V
    .registers 4
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 987
    :try_start_8
    invoke-direct {p0, p1}, Lr/w;->g(I)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    .line 989
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 992
    :cond_10
    return-void

    .line 989
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private f(I)V
    .registers 6
    .parameter

    .prologue
    .line 1600
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1601
    iget-object v1, p0, Lr/w;->h:Lr/X;

    monitor-enter v1

    .line 1602
    :try_start_6
    iget-object v0, p0, Lr/w;->h:Lr/X;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lr/X;->a(J)V

    .line 1603
    iget-object v0, p0, Lr/w;->k:Lr/y;

    iget-object v2, p0, Lr/w;->h:Lr/X;

    invoke-virtual {v0, v2, p1}, Lr/y;->a(Lr/X;I)V

    .line 1604
    iget-object v0, p0, Lr/w;->h:Lr/X;

    invoke-interface {v0}, Lr/X;->b()V

    .line 1605
    monitor-exit v1

    .line 1606
    return-void

    .line 1605
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private g(I)V
    .registers 5
    .parameter

    .prologue
    .line 2132
    invoke-virtual {p0}, Lr/w;->h()V

    .line 2134
    new-instance v0, Lr/E;

    invoke-direct {v0, p1}, Lr/E;-><init>(I)V

    .line 2136
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v0, v1}, Lr/w;->a(Lr/E;Z)V

    .line 2137
    iget-object v1, p0, Lr/w;->m:Lt/f;

    monitor-enter v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_27

    .line 2138
    :try_start_f
    iget-object v0, p0, Lr/w;->m:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 2139
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_24

    .line 2140
    :try_start_15
    iget-object v0, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2141
    iget-object v0, p0, Lr/w;->B:Lr/H;

    if-eqz v0, :cond_23

    .line 2142
    iget-object v0, p0, Lr/w;->B:Lr/H;

    invoke-interface {v0, p1}, Lr/H;->a(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_27

    .line 2147
    :cond_23
    :goto_23
    return-void

    .line 2139
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_27

    .line 2144
    :catch_27
    move-exception v0

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private h(I)V
    .registers 4
    .parameter

    .prologue
    .line 2157
    invoke-virtual {p0}, Lr/w;->h()V

    .line 2158
    invoke-direct {p0, p1}, Lr/w;->g(I)V

    .line 2161
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    aget-object v0, v0, p1

    if-eqz v0, :cond_18

    .line 2162
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lr/X;->a()V

    .line 2163
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2165
    :cond_18
    iget-object v0, p0, Lr/w;->g:Lr/Y;

    invoke-virtual {p0, p1}, Lr/w;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lr/Y;->a(Ljava/lang/String;)V

    .line 2166
    return-void
.end method

.method static synthetic i()[B
    .registers 1

    .prologue
    .line 212
    sget-object v0, Lr/w;->d:[B

    return-object v0
.end method

.method private static j()I
    .registers 2

    .prologue
    .line 628
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->d()Lcom/google/googlenav/clientparam/k;

    move-result-object v0

    .line 630
    if-nez v0, :cond_e

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VectorMapsParameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_e
    invoke-virtual {v0}, Lcom/google/googlenav/clientparam/k;->g()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static k()I
    .registers 2

    .prologue
    .line 642
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 643
    sget v0, Lr/w;->e:I

    .line 645
    :goto_8
    return v0

    :cond_9
    sget v0, Lr/w;->a:I

    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_8
.end method

.method private l()V
    .registers 4

    .prologue
    .line 1032
    iget-object v0, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1047
    :cond_8
    return-void

    .line 1036
    :cond_9
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1039
    iget-object v1, p0, Lr/w;->n:Ljava/util/Set;

    monitor-enter v1

    .line 1040
    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lr/w;->n:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1041
    iget-object v2, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1042
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_30

    .line 1044
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/D;

    .line 1045
    invoke-direct {p0, v0}, Lr/w;->b(Lr/D;)V

    goto :goto_20

    .line 1042
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 1056
    iget-object v0, p0, Lr/w;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 1069
    :cond_8
    :goto_8
    return-void

    .line 1060
    :cond_9
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1065
    :try_start_11
    invoke-direct {p0}, Lr/w;->l()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    .line 1067
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private n()V
    .registers 5

    .prologue
    .line 1614
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1615
    iget-object v1, p0, Lr/w;->h:Lr/X;

    monitor-enter v1

    .line 1616
    :try_start_6
    iget-object v0, p0, Lr/w;->h:Lr/X;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3}, Lr/X;->a(J)V

    .line 1617
    iget-object v0, p0, Lr/w;->j:Lr/G;

    iget-object v2, p0, Lr/w;->h:Lr/X;

    invoke-virtual {v0, v2}, Lr/G;->a(Lr/X;)V

    .line 1618
    iget-object v0, p0, Lr/w;->h:Lr/X;

    invoke-interface {v0}, Lr/X;->b()V

    .line 1619
    monitor-exit v1

    .line 1620
    return-void

    .line 1619
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private o()Lr/E;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1636
    invoke-virtual {p0}, Lr/w;->h()V

    .line 1637
    sget-boolean v0, Lr/w;->c:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lr/w;->C:Ljava/util/Set;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    move v0, v1

    .line 1643
    :goto_15
    iget-object v3, p0, Lr/w;->j:Lr/G;

    iget v3, v3, Lr/G;->g:I

    if-ge v0, v3, :cond_bc

    .line 1645
    iget-object v3, p0, Lr/w;->j:Lr/G;

    iget-object v3, v3, Lr/G;->c:[I

    aget v3, v3, v0

    iget-object v5, p0, Lr/w;->i:Lr/z;

    iget v5, v5, Lr/z;->e:I

    if-ge v3, v5, :cond_77

    iget-object v3, p0, Lr/w;->j:Lr/G;

    iget-object v3, v3, Lr/G;->b:[I

    aget v3, v3, v0

    const v5, 0x7ffffff

    if-gt v3, v5, :cond_77

    .line 1649
    :try_start_32
    invoke-direct {p0, v0}, Lr/w;->d(I)Lr/E;
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_5d

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    .line 1663
    :goto_39
    if-ne v3, v4, :cond_9c

    .line 1666
    invoke-direct {p0}, Lr/w;->q()Z

    move-result v3

    .line 1667
    invoke-direct {p0, v3}, Lr/w;->b(Z)V

    .line 1671
    iget-object v5, p0, Lr/w;->i:Lr/z;

    iget-boolean v5, v5, Lr/z;->f:Z

    if-eqz v5, :cond_7a

    if-eqz v3, :cond_7a

    .line 1675
    :goto_4a
    const/4 v5, 0x2

    if-ge v1, v5, :cond_7a

    .line 1676
    iget-object v5, p0, Lr/w;->j:Lr/G;

    iget-object v6, p0, Lr/w;->C:Ljava/util/Set;

    invoke-virtual {v5, v6}, Lr/G;->a(Ljava/util/Set;)I

    move-result v5

    .line 1677
    if-eq v5, v4, :cond_5a

    .line 1678
    invoke-direct {p0, v5}, Lr/w;->h(I)V

    .line 1675
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 1653
    :catch_5d
    move-exception v3

    .line 1655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocateShardToUse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v0

    move-object v0, v2

    .line 1657
    goto :goto_39

    .line 1643
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1683
    :cond_7a
    invoke-direct {p0, v3}, Lr/w;->a(Z)I

    move-result v1

    .line 1684
    if-ne v1, v4, :cond_9d

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tile store full, unable to allocate shard"

    invoke-static {v0, v1}, Lh/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 1702
    :goto_9b
    return-object v0

    :cond_9c
    move v1, v3

    .line 1693
    :cond_9d
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lr/E;->b()I

    move-result v2

    iget-object v3, p0, Lr/w;->j:Lr/G;

    iget-object v3, v3, Lr/G;->c:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_b0

    .line 1696
    :cond_ab
    new-instance v0, Lr/E;

    invoke-direct {v0, v1}, Lr/E;-><init>(I)V

    .line 1700
    :cond_b0
    iput v1, p0, Lr/w;->x:I

    .line 1701
    iget-object v2, p0, Lr/w;->C:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_bc
    move-object v0, v2

    move v3, v4

    goto/16 :goto_39
.end method

.method private p()I
    .registers 5

    .prologue
    .line 3037
    iget v0, p0, Lr/w;->y:I

    if-ltz v0, :cond_7

    .line 3038
    iget v0, p0, Lr/w;->y:I

    .line 3040
    :goto_6
    return v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_6
.end method

.method private q()Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3047
    invoke-virtual {p0}, Lr/w;->h()V

    .line 3048
    iget-boolean v2, p0, Lr/w;->z:Z

    if-eqz v2, :cond_a

    .line 3062
    :cond_9
    :goto_9
    return v0

    .line 3052
    :cond_a
    iget-object v2, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v2}, Lr/G;->e()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_16

    move v0, v1

    .line 3053
    goto :goto_9

    .line 3057
    :cond_16
    invoke-static {}, Lh/a;->f()J

    move-result-wide v2

    .line 3058
    iget-object v4, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v4}, Lr/G;->d()J

    move-result-wide v4

    .line 3059
    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v6, 0x3fd0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    .line 3062
    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    move v0, v1

    goto :goto_9
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->g:I

    return v0
.end method

.method public a(JLjava/lang/String;I)I
    .registers 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1561
    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1564
    :try_start_5
    invoke-static/range {p1 .. p3}, Lr/w;->c(JLjava/lang/String;)Lr/B;

    move-result-object v1

    .line 1565
    invoke-direct {p0, v1}, Lr/w;->b(Lr/B;)Lr/F;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_69

    move-result-object v11

    .line 1566
    if-nez v11, :cond_16

    .line 1567
    const/4 v7, -0x1

    .line 1589
    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1591
    :goto_15
    return v7

    .line 1570
    :cond_16
    :try_start_16
    iget-object v1, p0, Lr/w;->j:Lr/G;

    iget-object v1, v1, Lr/G;->e:[I

    iget-object v2, v11, Lr/F;->a:Lr/E;

    invoke-virtual {v2}, Lr/E;->a()I

    move-result v2

    aget v12, v1, v2

    .line 1573
    iget-object v10, v11, Lr/F;->b:Lr/D;

    .line 1575
    iget v1, v10, Lr/D;->c:I

    move/from16 v0, p4

    invoke-static {v1, v0}, Lr/Z;->a(II)I

    move-result v1

    and-int/lit8 v7, v1, 0x1f

    .line 1578
    new-instance v1, Lr/D;

    iget-wide v2, v10, Lr/D;->a:J

    iget v4, v10, Lr/D;->b:I

    iget v5, v10, Lr/D;->d:I

    iget v6, v10, Lr/D;->e:I

    iget v8, v10, Lr/D;->f:I

    iget v9, v10, Lr/D;->g:I

    iget v10, v10, Lr/D;->h:I

    invoke-direct/range {v1 .. v10}, Lr/D;-><init>(JIIIIIII)V

    .line 1580
    iget-object v2, v11, Lr/F;->a:Lr/E;

    iget v3, v11, Lr/F;->c:I

    invoke-virtual {v2, v1, v3}, Lr/E;->a(Lr/D;I)V

    .line 1581
    iget-object v1, v11, Lr/F;->a:Lr/E;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lr/w;->a(Lr/E;Z)V

    .line 1584
    if-nez v12, :cond_63

    iget-object v1, p0, Lr/w;->j:Lr/G;

    iget-object v1, v1, Lr/G;->e:[I

    iget-object v2, v11, Lr/F;->a:Lr/E;

    invoke-virtual {v2}, Lr/E;->a()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    .line 1586
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lr/w;->b(Z)V
    :try_end_63
    .catchall {:try_start_16 .. :try_end_63} :catchall_69

    .line 1589
    :cond_63
    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_15

    :catchall_69
    move-exception v1

    iget-object v2, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public a(Ljava/util/Collection;)I
    .registers 18
    .parameter

    .prologue
    .line 1453
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1455
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lr/w;->q:Z
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_bb

    if-eqz v1, :cond_1b

    .line 1456
    const/4 v1, -0x1

    .line 1519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lr/w;->C:Ljava/util/Set;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1522
    :goto_1a
    return v1

    .line 1458
    :cond_1b
    :try_start_1b
    invoke-direct/range {p0 .. p1}, Lr/w;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 1461
    invoke-direct/range {p0 .. p0}, Lr/w;->l()V

    .line 1464
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lr/w;->b(Ljava/util/Collection;)I

    move-result v2

    .line 1465
    const/high16 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v13, v2, [B

    .line 1467
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lr/w;->C:Ljava/util/Set;

    .line 1468
    invoke-direct/range {p0 .. p0}, Lr/w;->o()Lr/E;
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_bb

    move-result-object v3

    .line 1469
    if-nez v3, :cond_4d

    .line 1470
    const/4 v1, -0x1

    .line 1519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lr/w;->C:Ljava/util/Set;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    .line 1472
    :cond_4d
    :try_start_4d
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    new-instance v2, Lr/C;

    invoke-virtual {v3}, Lr/E;->a()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lr/w;->b(I)Lr/X;

    move-result-object v4

    invoke-virtual {v3}, Lr/E;->c()I

    move-result v5

    invoke-direct {v2, v4, v5, v13}, Lr/C;-><init>(Lr/X;I[B)V

    .line 1475
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_69
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lr/A;

    move-object v8, v0

    .line 1478
    iget v1, v8, Lr/A;->c:I

    and-int/lit8 v7, v1, 0x1f

    .line 1480
    invoke-virtual {v3}, Lr/E;->b()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lr/w;->i:Lr/z;

    iget v4, v4, Lr/z;->e:I

    if-ge v1, v4, :cond_90

    invoke-virtual {v3}, Lr/E;->c()I

    move-result v1

    const v4, 0x7ffffff

    if-le v1, v4, :cond_171

    .line 1482
    :cond_90
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lr/w;->a(Lr/C;Lr/E;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->B:Lr/H;

    if-eqz v1, :cond_c9

    .line 1484
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1485
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->B:Lr/H;

    invoke-virtual {v3}, Lr/E;->a()I

    move-result v6

    invoke-interface {v1, v4, v5, v6}, Lr/H;->a(JI)V
    :try_end_ba
    .catchall {:try_start_4d .. :try_end_ba} :catchall_bb

    goto :goto_9f

    .line 1519
    :catchall_bb
    move-exception v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lr/w;->C:Ljava/util/Set;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 1488
    :cond_c9
    :try_start_c9
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 1490
    invoke-direct/range {p0 .. p0}, Lr/w;->o()Lr/E;
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_bb

    move-result-object v2

    .line 1491
    if-nez v2, :cond_e1

    .line 1492
    const/4 v1, -0x1

    .line 1519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lr/w;->C:Ljava/util/Set;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1a

    .line 1494
    :cond_e1
    :try_start_e1
    new-instance v1, Lr/C;

    invoke-virtual {v2}, Lr/E;->a()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lr/w;->b(I)Lr/X;

    move-result-object v3

    invoke-virtual {v2}, Lr/E;->c()I

    move-result v4

    invoke-direct {v1, v3, v4, v13}, Lr/C;-><init>(Lr/X;I[B)V

    move-object v11, v1

    move-object v12, v2

    .line 1498
    :goto_f6
    iget-object v1, v8, Lr/A;->b:[B

    invoke-virtual {v11, v1}, Lr/C;->a([B)V

    .line 1499
    iget-object v1, v8, Lr/A;->d:[B

    invoke-virtual {v11, v1}, Lr/C;->a([B)V

    .line 1500
    new-instance v1, Lr/D;

    iget-object v2, v8, Lr/A;->a:Lr/B;

    invoke-virtual {v2}, Lr/B;->a()J

    move-result-wide v2

    invoke-virtual {v12}, Lr/E;->c()I

    move-result v4

    iget-object v5, v8, Lr/A;->b:[B

    array-length v5, v5

    iget-object v6, v8, Lr/A;->d:[B

    array-length v6, v6

    iget-object v9, v8, Lr/A;->d:[B

    const/4 v10, 0x0

    iget-object v8, v8, Lr/A;->d:[B

    array-length v8, v8

    invoke-static {v9, v10, v8}, Lr/w;->c([BII)I

    move-result v8

    invoke-virtual {v12}, Lr/E;->a()I

    move-result v9

    invoke-virtual {v12}, Lr/E;->b()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lr/D;-><init>(JIIIIIII)V

    .line 1505
    invoke-virtual {v12, v1}, Lr/E;->a(Lr/D;)V

    .line 1506
    iget-wide v1, v1, Lr/D;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v11

    move-object v3, v12

    .line 1510
    goto/16 :goto_69

    .line 1512
    :cond_137
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lr/w;->a(Lr/C;Lr/E;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->B:Lr/H;

    if-eqz v1, :cond_162

    .line 1514
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_146
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_162

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1515
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->B:Lr/H;

    invoke-virtual {v3}, Lr/E;->a()I

    move-result v6

    invoke-interface {v1, v4, v5, v6}, Lr/H;->a(JI)V
    :try_end_161
    .catchall {:try_start_e1 .. :try_end_161} :catchall_bb

    goto :goto_146

    .line 1519
    :cond_162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lr/w;->C:Ljava/util/Set;

    .line 1520
    move-object/from16 v0, p0

    iget-object v1, v0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1522
    const/4 v1, 0x0

    goto/16 :goto_1a

    :cond_171
    move-object v11, v2

    move-object v12, v3

    goto :goto_f6
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->a:I

    invoke-direct {p0, p1, v0}, Lr/w;->b(II)V

    .line 873
    return-void
.end method

.method public a(ILjava/util/Locale;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 811
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lr/w;->q:Z

    .line 812
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_3c

    .line 814
    :try_start_11
    iget-object v0, p0, Lr/w;->B:Lr/H;

    if-eqz v0, :cond_1a

    .line 815
    iget-object v0, p0, Lr/w;->B:Lr/H;

    invoke-interface {v0}, Lr/H;->a()V

    .line 817
    :cond_1a
    invoke-direct {p0, p1, p2}, Lr/w;->b(ILjava/util/Locale;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_31
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_2c

    .line 822
    :try_start_1d
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_3c

    .line 825
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 827
    return-void

    .line 818
    :catch_2c
    move-exception v0

    .line 819
    :try_start_2d
    invoke-virtual {p0}, Lr/w;->g()V

    .line 820
    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 822
    :catchall_31
    move-exception v0

    :try_start_32
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3c

    .line 825
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(J)[B
    .registers 4
    .parameter

    .prologue
    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lr/w;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)[B
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1322
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1324
    :try_start_9
    iget-boolean v0, p0, Lr/w;->q:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_30

    if-eqz v0, :cond_1b

    .line 1325
    const/4 v0, 0x0

    .line 1329
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1330
    invoke-direct {p0}, Lr/w;->m()V

    :goto_1a
    return-object v0

    .line 1327
    :cond_1b
    :try_start_1b
    invoke-static {p1, p2, p3}, Lr/w;->c(JLjava/lang/String;)Lr/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lr/w;->c(Lr/B;)[B
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_30

    move-result-object v0

    .line 1329
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1330
    invoke-direct {p0}, Lr/w;->m()V

    goto :goto_1a

    .line 1329
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1330
    invoke-direct {p0}, Lr/w;->m()V

    throw v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 698
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget-wide v0, v0, Lr/z;->h:J

    return-wide v0
.end method

.method b(I)Lr/X;
    .registers 7
    .parameter

    .prologue
    .line 2173
    iget-object v1, p0, Lr/w;->l:[Lr/X;

    monitor-enter v1

    .line 2174
    :try_start_3
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    aget-object v0, v0, p1

    if-nez v0, :cond_18

    .line 2175
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    iget-object v2, p0, Lr/w;->g:Lr/Y;

    invoke-virtual {p0, p1}, Lr/w;->c(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lr/Y;->a(Ljava/lang/String;Z)Lr/X;

    move-result-object v2

    aput-object v2, v0, p1

    .line 2177
    :cond_18
    iget-object v0, p0, Lr/w;->l:[Lr/X;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 2178
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public b(JLjava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1374
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1376
    :try_start_9
    invoke-static {p1, p2, p3}, Lr/w;->c(JLjava/lang/String;)Lr/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lr/w;->a(Lr/B;)Lr/D;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_23

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 1378
    :goto_14
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1379
    invoke-direct {p0}, Lr/w;->m()V

    return v0

    .line 1376
    :cond_21
    const/4 v0, 0x0

    goto :goto_14

    .line 1378
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1379
    invoke-direct {p0}, Lr/w;->m()V

    throw v0
.end method

.method c(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget-object v0, v0, Lr/z;->i:Ljava/util/Locale;

    return-object v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 712
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 714
    :try_start_9
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v0}, Lr/G;->c()I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result v0

    .line 716
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public e()J
    .registers 4

    .prologue
    .line 724
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 726
    :try_start_9
    iget-object v0, p0, Lr/w;->j:Lr/G;

    invoke-virtual {v0}, Lr/G;->d()J
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result-wide v0

    .line 728
    iget-object v2, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public f()I
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Lr/w;->i:Lr/z;

    iget v0, v0, Lr/z;->d:I

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public g()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 751
    :try_start_6
    iget-boolean v1, p0, Lr/w;->q:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_4d

    if-eqz v1, :cond_10

    .line 790
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 792
    :goto_f
    return-void

    .line 757
    :cond_10
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Lr/w;->q:Z

    .line 758
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_4d

    .line 764
    :try_start_1c
    invoke-direct {p0}, Lr/w;->n()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_63

    .line 769
    :goto_1f
    :try_start_1f
    iget-object v1, p0, Lr/w;->h:Lr/X;

    invoke-interface {v1}, Lr/X;->a()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_67

    .line 773
    :goto_24
    const/4 v1, 0x0

    :goto_25
    :try_start_25
    iget-object v2, p0, Lr/w;->l:[Lr/X;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    .line 774
    iget-object v2, p0, Lr/w;->l:[Lr/X;

    aget-object v2, v2, v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_42

    if-eqz v2, :cond_3c

    .line 776
    :try_start_30
    iget-object v2, p0, Lr/w;->l:[Lr/X;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lr/X;->a()V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_65

    .line 780
    :goto_37
    :try_start_37
    iget-object v2, p0, Lr/w;->l:[Lr/X;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 773
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 783
    :cond_3f
    if-eqz v0, :cond_54

    .line 784
    throw v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_42

    .line 787
    :catchall_42
    move-exception v0

    :try_start_43
    iget-object v1, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4d

    .line 790
    :catchall_4d
    move-exception v0

    iget-object v1, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 787
    :cond_54
    :try_start_54
    iget-object v0, p0, Lr/w;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_4d

    .line 790
    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 765
    :catch_63
    move-exception v0

    goto :goto_1f

    .line 777
    :catch_65
    move-exception v0

    goto :goto_37

    .line 770
    :catch_67
    move-exception v0

    goto :goto_24
.end method

.method h()V
    .registers 3

    .prologue
    .line 3259
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lr/w;->o:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write lock must be held"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3262
    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lr/w;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lr/w;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget-boolean v1, v1, Lr/z;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lr/w;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lr/w;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/w;->i:Lr/z;

    iget v1, v1, Lr/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
