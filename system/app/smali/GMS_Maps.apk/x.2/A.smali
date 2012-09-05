.class public Lx/A;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lx/ab;

.field private e:Lx/aa;

.field private f:Lx/D;

.field private final g:Lx/K;

.field private final h:Lx/C;

.field private final i:[Lx/aa;

.field private final j:Lz/g;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/util/concurrent/locks/ReentrantLock;

.field private final m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Lx/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lx/A;->a:[B

    const/16 v0, 0x13

    sput v0, Lx/A;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lx/D;Lx/K;Lx/C;Lx/aa;Lx/ab;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v2, -0x1

    iput v2, p0, Lx/A;->v:I

    iput-boolean v0, p0, Lx/A;->w:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lx/A;->x:Lx/ac;

    iput-object p1, p0, Lx/A;->c:Ljava/lang/String;

    iput-object p2, p0, Lx/A;->f:Lx/D;

    iput-object p3, p0, Lx/A;->g:Lx/K;

    iput-object p4, p0, Lx/A;->h:Lx/C;

    iput-object p5, p0, Lx/A;->e:Lx/aa;

    iput-object p6, p0, Lx/A;->d:Lx/ab;

    iget v2, p2, Lx/D;->d:I

    new-array v2, v2, [Lx/aa;

    iput-object v2, p0, Lx/A;->i:[Lx/aa;

    new-instance v2, Lz/g;

    const/16 v3, 0x800

    invoke-virtual {p0}, Lx/A;->e()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Lz/g;-><init>(I)V

    iput-object v2, p0, Lx/A;->j:Lz/g;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lx/A;->k:Ljava/util/Set;

    iget-object v2, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v2, v0

    :goto_4f
    :try_start_4f
    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget v3, v3, Lx/D;->d:I

    if-ge v2, v3, :cond_ba

    iget-object v3, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v3, v2}, Lx/K;->c(I)Z

    move-result v3

    if-nez v3, :cond_6d

    iget-object v3, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v3, v2}, Lx/K;->d(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v3, v2}, Lx/C;->c(I)Z

    move-result v3

    if-nez v3, :cond_9b

    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebuilding inconsistent shard: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lx/A;->a(Ljava/lang/String;)V

    iget v0, p0, Lx/A;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/A;->o:I
    :try_end_89
    .catchall {:try_start_4f .. :try_end_89} :catchall_d9

    :try_start_89
    invoke-direct {p0, v2}, Lx/A;->d(I)Lx/I;

    move-result-object v0

    iget-object v3, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v3, v0}, Lx/K;->a(Lx/I;)V

    iget-object v3, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v3, v0}, Lx/C;->a(Lx/I;)V

    invoke-direct {p0, v2}, Lx/A;->f(I)V
    :try_end_9a
    .catchall {:try_start_89 .. :try_end_9a} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_9a} :catch_9e

    move v0, v1

    :cond_9b
    :goto_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :catch_9e
    move-exception v0

    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebuilding shard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lx/A;->g(I)V

    move v0, v1

    goto :goto_9b

    :cond_ba
    if-eqz v0, :cond_bf

    invoke-direct {p0}, Lx/A;->k()V
    :try_end_bf
    .catchall {:try_start_9f .. :try_end_bf} :catchall_d9

    :cond_bf
    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_d8

    iget-object v0, p0, Lx/A;->h:Lx/C;

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lx/C;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iget-object v0, p0, Lx/A;->g:Lx/K;

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lx/K;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    :cond_d8
    return-void

    :catchall_d9
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static a([BI)I
    .registers 6

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lx/ab;)Lx/A;
    .registers 15

    const/16 v2, 0x37eb

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_93

    move v0, v1

    move p1, v2

    :goto_a
    invoke-static {}, Ln/a;->b()Z

    move-result v4

    if-nez v4, :cond_90

    const/4 v4, -0x2

    if-ne p1, v4, :cond_26

    const/16 p1, 0x2fee

    move v5, v1

    move v0, p1

    :goto_17
    if-ge v0, v3, :cond_1a

    move v0, v3

    :cond_1a
    if-nez v5, :cond_2f

    if-le v0, v2, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of records must be between 4 and 14315"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v4, -0x3

    if-ne p1, v4, :cond_90

    const p1, 0x28d71

    move v5, v1

    move v0, p1

    goto :goto_17

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".m"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lx/ab;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x1

    div-int/lit16 v2, v2, 0x199

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0, v1}, Lx/ab;->a(Ljava/lang/String;Z)Lx/aa;

    move-result-object v9

    new-instance v0, Lx/D;

    sget v1, Lx/A;->b:I

    const/16 v2, 0x2000

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lx/D;-><init>(IIIIZILjava/util/Locale;)V

    new-instance v4, Lx/K;

    invoke-direct {v4, v3}, Lx/K;-><init>(I)V

    new-instance v5, Lx/C;

    invoke-direct {v5, v3, v8}, Lx/C;-><init>(II)V

    invoke-static {v0, v4, v5, v9}, Lx/A;->a(Lx/D;Lx/K;Lx/C;Lx/aa;)V

    invoke-interface {v9}, Lx/aa;->b()V

    new-instance v1, Lx/A;

    move-object v2, p0

    move-object v3, v0

    move-object v6, v9

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lx/A;-><init>(Ljava/lang/String;Lx/D;Lx/K;Lx/C;Lx/aa;Lx/ab;)V

    return-object v1

    :cond_90
    move v5, v0

    move v0, p1

    goto :goto_17

    :cond_93
    move v0, v8

    goto/16 :goto_a
.end method

.method public static a(Ljava/lang/String;Lx/ab;)Lx/A;
    .registers 9

    const/16 v3, 0x2000

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

    invoke-interface {p1, v0, v1}, Lx/ab;->a(Ljava/lang/String;Z)Lx/aa;

    move-result-object v5

    new-array v0, v3, [B

    invoke-interface {v5, v0}, Lx/aa;->a([B)V

    new-instance v2, Lx/D;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lx/D;-><init>([BI)V

    iget v0, v2, Lx/D;->a:I

    sget v1, Lx/A;->b:I

    if-ne v0, v1, :cond_2f

    iget v0, v2, Lx/D;->c:I

    if-eq v0, v3, :cond_48

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Cache Header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v3, Lx/K;

    iget v0, v2, Lx/D;->d:I

    invoke-direct {v3, v0}, Lx/K;-><init>(I)V

    invoke-virtual {v3, v5}, Lx/K;->b(Lx/aa;)V

    new-instance v4, Lx/C;

    iget v0, v2, Lx/D;->d:I

    iget v1, v3, Lx/K;->g:I

    invoke-direct {v4, v0, v1}, Lx/C;-><init>(II)V

    invoke-virtual {v4, v5}, Lx/C;->b(Lx/aa;)V

    new-instance v0, Lx/A;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lx/A;-><init>(Ljava/lang/String;Lx/D;Lx/K;Lx/C;Lx/aa;Lx/ab;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;I[B)Lx/E;
    .registers 8

    new-instance v0, Lx/E;

    invoke-static {p0, p1, p2}, Lx/A;->c(JLjava/lang/String;)Lx/F;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p4, v2}, Lx/E;-><init>(Lx/F;I[BLx/B;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;[B)Lx/E;
    .registers 7

    new-instance v0, Lx/E;

    invoke-static {p0, p1, p2}, Lx/A;->c(JLjava/lang/String;)Lx/F;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lx/E;-><init>(Lx/F;[BLx/B;)V

    return-object v0
.end method

.method public static a(J[B)Lx/E;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lx/A;->a(JLjava/lang/String;[B)Lx/E;

    move-result-object v0

    return-object v0
.end method

.method private a(Lx/F;)Lx/H;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lx/F;->a()J

    move-result-wide v2

    iget-object v4, p0, Lx/A;->j:Lz/g;

    monitor-enter v4

    :try_start_8
    iget-object v0, p0, Lx/A;->j:Lz/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/H;

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_43

    if-eqz v0, :cond_1e

    invoke-direct {p0, v0, p1}, Lx/A;->a(Lx/H;Lx/F;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object v0, v1

    :cond_1e
    if-eqz v0, :cond_38

    iget-object v4, p0, Lx/A;->g:Lx/K;

    iget v5, v0, Lx/H;->g:I

    invoke-virtual {v4, v5}, Lx/K;->d(I)Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lx/A;->j:Lz/g;

    monitor-enter v4

    :try_start_2d
    iget-object v0, p0, Lx/A;->j:Lz/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_46

    move-object v0, v1

    :cond_38
    if-nez v0, :cond_42

    invoke-direct {p0, p1}, Lx/A;->b(Lx/F;)Lx/J;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v0, v1, Lx/J;->b:Lx/H;

    :cond_42
    return-object v0

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private a(Lx/F;I)Lx/J;
    .registers 14

    const/4 v1, 0x0

    invoke-virtual {p1}, Lx/F;->a()J

    move-result-wide v2

    iget v0, p0, Lx/A;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/A;->r:I

    :try_start_b
    invoke-direct {p0, p2}, Lx/A;->d(I)Lx/I;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_45

    move-result-object v3

    invoke-virtual {v3}, Lx/I;->b()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-ge v2, v4, :cond_87

    invoke-virtual {v3, v2}, Lx/I;->e(I)Lx/H;

    move-result-object v6

    iget-wide v7, v6, Lx/H;->a:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_ca

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, v6, Lx/H;->a:J

    invoke-virtual {p1}, Lx/F;->a()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_ca

    invoke-direct {p0, v6, p1}, Lx/A;->a(Lx/H;Lx/F;)Z

    move-result v0

    if-eqz v0, :cond_ca

    new-instance v0, Lx/J;

    invoke-direct {v0, v3, v6, v2}, Lx/J;-><init>(Lx/I;Lx/H;I)V

    :goto_40
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1a

    :catch_45
    move-exception v0

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

    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :try_start_6f
    invoke-direct {p0, p2}, Lx/A;->e(I)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7c

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :goto_7b
    return-object v1

    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    :cond_87
    if-eqz v1, :cond_c3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/H;

    iget-object v3, p0, Lx/A;->j:Lz/g;

    monitor-enter v3

    :try_start_9c
    iget-object v4, p0, Lx/A;->j:Lz/g;

    iget-wide v5, v0, Lx/H;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v3

    goto :goto_8d

    :catchall_a9
    move-exception v0

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_a9

    throw v0

    :cond_ac
    iget-object v2, p0, Lx/A;->j:Lz/g;

    monitor-enter v2

    :try_start_af
    iget-object v0, p0, Lx/A;->j:Lz/g;

    iget-object v3, v1, Lx/J;->b:Lx/H;

    iget-wide v3, v3, Lx/H;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lx/J;->b:Lx/H;

    invoke-virtual {v0, v3, v4}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_7b

    :catchall_c0
    move-exception v0

    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_af .. :try_end_c2} :catchall_c0

    throw v0

    :cond_c3
    iget v0, p0, Lx/A;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/A;->q:I

    goto :goto_7b

    :cond_ca
    move-object v0, v1

    goto/16 :goto_40
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static a(Lx/D;Lx/K;Lx/C;Lx/aa;)V
    .registers 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lx/D;->a([BI)I

    invoke-interface {p3, v0}, Lx/aa;->b([B)V

    invoke-virtual {p1, p3}, Lx/K;->a(Lx/aa;)V

    invoke-virtual {p2, p3}, Lx/C;->a(Lx/aa;)V

    return-void
.end method

.method private static a(Lx/F;ILjava/util/Map;)V
    .registers 4

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_11
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11
.end method

.method private a(Lx/G;Lx/I;)V
    .registers 4

    invoke-virtual {p1}, Lx/G;->b()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lx/A;->a(Lx/I;Z)V

    return-void
.end method

.method private a(Lx/H;Ljava/io/IOException;)V
    .registers 5

    iget v0, p0, Lx/A;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/A;->p:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lx/I;Z)V
    .registers 8

    invoke-virtual {p0}, Lx/A;->g()V

    iget-object v0, p0, Lx/A;->g:Lx/K;

    iget-object v0, v0, Lx/K;->a:[I

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_16
    iget-object v1, p0, Lx/A;->g:Lx/K;

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/K;->b(I)V

    invoke-direct {p0}, Lx/A;->k()V

    iget-object v1, p0, Lx/A;->e:Lx/aa;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_71

    :try_start_25
    iget-object v2, p0, Lx/A;->e:Lx/aa;

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lx/A;->f:Lx/D;

    iget v4, v4, Lx/D;->j:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lx/aa;->a(J)V

    iget-object v2, p0, Lx/A;->e:Lx/aa;

    invoke-virtual {p1, v2}, Lx/I;->b(Lx/aa;)V

    iget-object v2, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v2}, Lx/aa;->b()V

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_6e

    :try_start_41
    iget-object v1, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v1, p1}, Lx/C;->a(Lx/I;)V

    iget-object v1, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v1, p1}, Lx/K;->a(Lx/I;)V

    if-eqz p2, :cond_7c

    iget-object v0, p0, Lx/A;->g:Lx/K;

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v1

    invoke-direct {p0}, Lx/A;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lx/K;->a(II)V
    :try_end_5a
    .catchall {:try_start_41 .. :try_end_5a} :catchall_71

    :goto_5a
    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v0

    invoke-direct {p0, v0}, Lx/A;->f(I)V

    invoke-direct {p0}, Lx/A;->k()V

    return-void

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

    :catchall_71
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_7c
    :try_start_7c
    iget-object v1, p0, Lx/A;->g:Lx/K;

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lx/K;->a(II)V
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_71

    goto :goto_5a
.end method

.method private static a(Lx/aa;I[B)V
    .registers 5

    monitor-enter p0

    int-to-long v0, p1

    :try_start_2
    invoke-interface {p0, v0, v1}, Lx/aa;->a(J)V

    invoke-interface {p0, p2}, Lx/aa;->a([B)V

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static a([BII)V
    .registers 6

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method public static a([BIJ)V
    .registers 6

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lx/A;->a([BII)V

    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lx/A;->a([BII)V

    return-void
.end method

.method private a(Lx/H;Lx/F;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Lx/F;->b()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p1, Lx/H;->d:I

    if-eq v2, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    array-length v2, v1

    if-nez v2, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lx/A;->a(Lx/H;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_19

    move-result v0

    goto :goto_a

    :catch_19
    move-exception v1

    goto :goto_a
.end method

.method private a(Lx/H;)[B
    .registers 5

    iget v0, p1, Lx/H;->d:I

    if-nez v0, :cond_7

    sget-object v0, Lx/A;->a:[B

    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    iget v0, p1, Lx/H;->g:I

    invoke-virtual {p0, v0}, Lx/A;->b(I)Lx/aa;

    move-result-object v1

    iget v0, p1, Lx/H;->d:I

    new-array v0, v0, [B

    iget v2, p1, Lx/H;->b:I

    invoke-static {v1, v2, v0}, Lx/A;->a(Lx/aa;I[B)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_6

    :catch_17
    move-exception v0

    invoke-direct {p0, p1, v0}, Lx/A;->a(Lx/H;Ljava/io/IOException;)V

    throw v0
.end method

.method public static b([BI)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 15

    invoke-virtual {p0}, Lx/A;->g()V

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/E;

    iget-object v2, v0, Lx/E;->a:Lx/F;

    invoke-virtual {v2}, Lx/F;->a()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v2, v2, v9

    if-eqz v2, :cond_49

    iget-object v2, v0, Lx/E;->b:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_4d

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    :cond_4d
    iget-object v2, v0, Lx/E;->a:Lx/F;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v2, v0, Lx/E;->c:I

    if-lez v2, :cond_2a

    iget-object v2, v0, Lx/E;->a:Lx/F;

    iget v0, v0, Lx/E;->c:I

    invoke-static {v2, v0, v7}, Lx/A;->a(Lx/F;ILjava/util/Map;)V

    goto :goto_2a

    :cond_64
    iget-object v2, v0, Lx/E;->a:Lx/F;

    invoke-virtual {v2}, Lx/F;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lx/E;->a:Lx/F;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_77
    const/4 v0, 0x0

    move v1, v0

    :goto_79
    iget-object v0, p0, Lx/A;->g:Lx/K;

    iget v0, v0, Lx/K;->g:I

    if-ge v1, v0, :cond_13d

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v4, v1}, Lx/K;->d(I)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10, v1}, Lx/C;->b(JI)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    :goto_a5
    if-eqz v0, :cond_131

    const/4 v0, 0x0

    :try_start_a8
    invoke-direct {p0, v1}, Lx/A;->d(I)Lx/I;
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_10c

    move-result-object v0

    move-object v4, v0

    :goto_ad
    if-eqz v4, :cond_131

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_b1
    invoke-virtual {v4}, Lx/I;->b()I

    move-result v3

    if-ge v0, v3, :cond_12b

    invoke-virtual {v4, v0}, Lx/I;->b(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    sget-object v3, Lx/A;->a:[B

    invoke-virtual {v4, v0}, Lx/I;->c(I)I

    move-result v11

    if-lez v11, :cond_d5

    invoke-virtual {v4, v0}, Lx/I;->e(I)Lx/H;

    move-result-object v3

    :try_start_d1
    invoke-direct {p0, v3}, Lx/A;->a(Lx/H;)[B
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_186

    move-result-object v3

    :cond_d5
    new-instance v11, Lx/F;

    invoke-direct {v11, v9, v10, v3}, Lx/F;-><init>(J[B)V

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    iget v2, p0, Lx/A;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lx/A;->t:I

    iget-object v2, p0, Lx/A;->j:Lz/g;

    monitor-enter v2

    :try_start_e9
    iget-object v3, p0, Lx/A;->j:Lz/g;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v12}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_e9 .. :try_end_f3} :catchall_128

    iget-object v2, p0, Lx/A;->x:Lx/ac;

    if-eqz v2, :cond_fc

    iget-object v2, p0, Lx/A;->x:Lx/ac;

    invoke-interface {v2, v9, v10}, Lx/ac;->a(J)V

    :cond_fc
    invoke-virtual {v4, v0}, Lx/I;->d(I)I

    move-result v2

    if-lez v2, :cond_105

    invoke-static {v11, v2, v7}, Lx/A;->a(Lx/F;ILjava/util/Map;)V

    :cond_105
    invoke-virtual {v4, v0}, Lx/I;->a(I)V

    const/4 v2, 0x1

    :cond_109
    :goto_109
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    :catch_10c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeOldRecordsAndFilterInsertions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lx/A;->g(I)V

    move-object v4, v0

    goto :goto_ad

    :catchall_128
    move-exception v0

    :try_start_129
    monitor-exit v2
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw v0

    :cond_12b
    if-eqz v2, :cond_136

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lx/A;->a(Lx/I;Z)V

    :cond_131
    :goto_131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_79

    :cond_136
    iget v0, p0, Lx/A;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/A;->s:I

    goto :goto_131

    :cond_13d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14d
    if-ltz v2, :cond_188

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/E;

    iget-object v1, v0, Lx/E;->a:Lx/F;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_17f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lx/E;->c:I

    add-int/2addr v1, v4

    const/16 v4, 0x1f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Lx/E;

    iget-object v5, v0, Lx/E;->a:Lx/F;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lx/E;->d:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v0, v6}, Lx/E;-><init>(Lx/F;I[BLx/B;)V

    move-object v0, v1

    :cond_17f
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14d

    :catch_186
    move-exception v3

    goto :goto_109

    :cond_188
    return-object v3

    :cond_189
    move v0, v2

    goto/16 :goto_a5
.end method

.method private b(Lx/F;)Lx/J;
    .registers 6

    invoke-virtual {p1}, Lx/F;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lx/C;->a(J)[I

    move-result-object v2

    iget-object v0, p0, Lx/A;->g:Lx/K;

    iget v3, v0, Lx/K;->g:I

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_2b

    iget-object v0, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v0, v1}, Lx/K;->d(I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v0, v2, v1}, Lx/C;->a([II)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0, p1, v1}, Lx/A;->a(Lx/F;I)Lx/J;

    move-result-object v0

    if-eqz v0, :cond_27

    :goto_26
    return-object v0

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private b(ILjava/util/Locale;)V
    .registers 12

    const/4 v8, 0x0

    invoke-virtual {p0}, Lx/A;->g()V

    iget-object v1, p0, Lx/A;->j:Lz/g;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lx/A;->j:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_36

    iget-object v0, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v8

    :goto_13
    iget-object v1, p0, Lx/A;->i:[Lx/aa;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lx/A;->i:[Lx/aa;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lx/A;->i:[Lx/aa;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lx/aa;->a()V

    iget-object v1, p0, Lx/A;->i:[Lx/aa;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_2a
    iget-object v1, p0, Lx/A;->d:Lx/ab;

    invoke-virtual {p0, v0}, Lx/A;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lx/ab;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    iget-object v0, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v0}, Lx/aa;->a()V

    iget-object v0, p0, Lx/A;->d:Lx/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lx/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lx/A;->d:Lx/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lx/ab;->a(Ljava/lang/String;Z)Lx/aa;

    move-result-object v0

    iput-object v0, p0, Lx/A;->e:Lx/aa;

    new-instance v0, Lx/D;

    sget v1, Lx/A;->b:I

    iget-object v2, p0, Lx/A;->f:Lx/D;

    iget v2, v2, Lx/D;->c:I

    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget v3, v3, Lx/D;->d:I

    iget-object v4, p0, Lx/A;->f:Lx/D;

    iget v4, v4, Lx/D;->e:I

    iget-object v5, p0, Lx/A;->f:Lx/D;

    iget-boolean v5, v5, Lx/D;->f:Z

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lx/D;-><init>(IIIIZILjava/util/Locale;)V

    iput-object v0, p0, Lx/A;->f:Lx/D;

    iget-object v0, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v0}, Lx/K;->a()V

    iget-object v0, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v0}, Lx/C;->a()V

    iget-object v0, p0, Lx/A;->f:Lx/D;

    iget-object v1, p0, Lx/A;->g:Lx/K;

    iget-object v2, p0, Lx/A;->h:Lx/C;

    iget-object v3, p0, Lx/A;->e:Lx/aa;

    invoke-static {v0, v1, v2, v3}, Lx/A;->a(Lx/D;Lx/K;Lx/C;Lx/aa;)V

    iget-object v0, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v0}, Lx/aa;->b()V

    iput-boolean v8, p0, Lx/A;->n:Z

    iget-object v0, p0, Lx/A;->x:Lx/ac;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lx/A;->x:Lx/ac;

    invoke-interface {v0}, Lx/ac;->a()V

    :cond_b6
    return-void
.end method

.method private b(Lx/H;)V
    .registers 7

    invoke-virtual {p0}, Lx/A;->g()V

    :try_start_3
    iget v0, p1, Lx/H;->g:I

    invoke-direct {p0, v0}, Lx/A;->d(I)Lx/I;

    move-result-object v0

    invoke-virtual {v0}, Lx/I;->b()I

    move-result v1

    iget v2, p1, Lx/H;->h:I

    if-le v1, v2, :cond_1f

    iget v1, p1, Lx/H;->h:I

    invoke-virtual {v0, v1}, Lx/I;->e(I)Lx/H;

    move-result-object v1

    iget-wide v1, v1, Lx/H;->a:J

    iget-wide v3, p1, Lx/H;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget v1, p1, Lx/H;->h:I

    invoke-virtual {v0, v1}, Lx/I;->a(I)V

    iget-object v1, p0, Lx/A;->j:Lz/g;

    monitor-enter v1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_28} :catch_44

    :try_start_28
    iget-object v2, p0, Lx/A;->j:Lz/g;

    iget-wide v3, p1, Lx/H;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_5e

    :try_start_34
    iget-object v1, p0, Lx/A;->x:Lx/ac;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lx/A;->x:Lx/ac;

    iget-wide v2, p1, Lx/H;->a:J

    invoke-interface {v1, v2, v3}, Lx/ac;->a(J)V

    :cond_3f
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lx/A;->a(Lx/I;Z)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_1f

    :catch_44
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_61} :catch_44
.end method

.method public static b([BII)V
    .registers 5

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method static c([BII)I
    .registers 5

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .registers 8

    invoke-static {p0, p1}, Lx/A;->a([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lx/A;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(JLjava/lang/String;)Lx/F;
    .registers 5

    sget-object v0, Lx/A;->a:[B

    if-eqz p2, :cond_8

    invoke-static {p2}, Lak/r;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_8
    new-instance v1, Lx/F;

    invoke-direct {v1, p0, p1, v0}, Lx/F;-><init>(J[B)V

    return-object v1
.end method

.method private c(Lx/F;)[B
    .registers 7

    invoke-direct {p0, p1}, Lx/A;->a(Lx/F;)Lx/H;

    move-result-object v1

    if-eqz v1, :cond_4f

    :try_start_6
    iget v0, v1, Lx/H;->g:I

    invoke-virtual {p0, v0}, Lx/A;->b(I)Lx/aa;

    move-result-object v2

    iget v0, v1, Lx/H;->e:I

    new-array v0, v0, [B

    iget v3, v1, Lx/H;->b:I

    iget v4, v1, Lx/H;->d:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lx/A;->a(Lx/aa;I[B)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lx/A;->c([BII)I

    move-result v2

    iget v3, v1, Lx/H;->f:I

    if-eq v2, v3, :cond_51

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

    :catch_4b
    move-exception v0

    invoke-direct {p0, v1, v0}, Lx/A;->a(Lx/H;Ljava/io/IOException;)V

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    return-object v0

    :cond_51
    :try_start_51
    iget-object v2, p0, Lx/A;->g:Lx/K;

    iget v3, v1, Lx/H;->g:I

    invoke-direct {p0}, Lx/A;->m()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lx/K;->a(II)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_4b

    goto :goto_50
.end method

.method private d(I)Lx/I;
    .registers 6

    iget-object v1, p0, Lx/A;->e:Lx/aa;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/A;->e:Lx/aa;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget v3, v3, Lx/D;->j:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lx/aa;->a(J)V

    iget-object v0, p0, Lx/A;->e:Lx/aa;

    invoke-static {v0}, Lx/I;->a(Lx/aa;)Lx/I;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private e(I)V
    .registers 4

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_10

    :try_start_8
    invoke-direct {p0, p1}, Lx/A;->g(I)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_10
    return-void

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private f(I)V
    .registers 6

    invoke-virtual {p0}, Lx/A;->g()V

    iget-object v1, p0, Lx/A;->e:Lx/aa;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lx/A;->e:Lx/aa;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lx/aa;->a(J)V

    iget-object v0, p0, Lx/A;->h:Lx/C;

    iget-object v2, p0, Lx/A;->e:Lx/aa;

    invoke-virtual {v0, v2, p1}, Lx/C;->a(Lx/aa;I)V

    iget-object v0, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v0}, Lx/aa;->b()V

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private g(I)V
    .registers 5

    invoke-virtual {p0}, Lx/A;->g()V

    new-instance v0, Lx/I;

    invoke-direct {v0, p1}, Lx/I;-><init>(I)V

    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v0, v1}, Lx/A;->a(Lx/I;Z)V

    iget-object v1, p0, Lx/A;->j:Lz/g;

    monitor-enter v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_1e

    :try_start_f
    iget-object v0, p0, Lx/A;->j:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1b

    :try_start_15
    iget-object v0, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_1e

    :goto_1a
    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method private h(I)V
    .registers 4

    invoke-virtual {p0}, Lx/A;->g()V

    invoke-direct {p0, p1}, Lx/A;->g(I)V

    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    aget-object v0, v0, p1

    if-eqz v0, :cond_18

    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lx/aa;->a()V

    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_18
    iget-object v0, p0, Lx/A;->d:Lx/ab;

    invoke-virtual {p0, p1}, Lx/A;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lx/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h()[B
    .registers 1

    sget-object v0, Lx/A;->a:[B

    return-object v0
.end method

.method private i()V
    .registers 4

    iget-object v0, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lx/A;->g()V

    iget-object v1, p0, Lx/A;->k:Ljava/util/Set;

    monitor-enter v1

    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lx/A;->k:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_30

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/H;

    invoke-direct {p0, v0}, Lx/A;->b(Lx/H;)V

    goto :goto_20

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lx/A;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_11
    invoke-direct {p0}, Lx/A;->i()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_8

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private k()V
    .registers 5

    invoke-virtual {p0}, Lx/A;->g()V

    iget-object v1, p0, Lx/A;->e:Lx/aa;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lx/A;->e:Lx/aa;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3}, Lx/aa;->a(J)V

    iget-object v0, p0, Lx/A;->g:Lx/K;

    iget-object v2, p0, Lx/A;->e:Lx/aa;

    invoke-virtual {v0, v2}, Lx/K;->a(Lx/aa;)V

    iget-object v0, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v0}, Lx/aa;->b()V

    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private l()Lx/I;
    .registers 9

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lx/A;->g()V

    const/4 v2, 0x0

    move v0, v1

    :goto_7
    iget-object v3, p0, Lx/A;->g:Lx/K;

    iget v3, v3, Lx/K;->g:I

    if-ge v0, v3, :cond_da

    iget-object v3, p0, Lx/A;->g:Lx/K;

    iget-object v3, v3, Lx/K;->c:[I

    aget v3, v3, v0

    iget-object v5, p0, Lx/A;->f:Lx/D;

    iget v5, v5, Lx/D;->e:I

    if-ge v3, v5, :cond_66

    iget-object v3, p0, Lx/A;->g:Lx/K;

    iget-object v3, v3, Lx/K;->b:[I

    aget v3, v3, v0

    const v5, 0x7ffffff

    if-gt v3, v5, :cond_66

    :try_start_24
    invoke-direct {p0, v0}, Lx/A;->d(I)Lx/I;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_4b

    move-result-object v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_2b
    if-ne v2, v4, :cond_69

    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget-boolean v3, v3, Lx/D;->f:Z

    if-eqz v3, :cond_69

    invoke-direct {p0}, Lx/A;->n()Z

    move-result v3

    if-eqz v3, :cond_69

    move v3, v1

    :goto_3a
    const/4 v5, 0x2

    if-ge v3, v5, :cond_69

    iget-object v5, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v5}, Lx/K;->c()I

    move-result v5

    if-eq v5, v4, :cond_48

    invoke-direct {p0, v5}, Lx/A;->h(I)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :catch_4b
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocateShardToUse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_2b

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_69
    if-ne v2, v4, :cond_d8

    :goto_6b
    iget-object v3, p0, Lx/A;->g:Lx/K;

    iget v3, v3, Lx/K;->g:I

    if-ge v1, v3, :cond_d8

    iget-object v3, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v3, v1}, Lx/K;->d(I)Z

    move-result v3

    if-nez v3, :cond_ca

    :goto_79
    if-ne v1, v4, :cond_a9

    iget-object v2, p0, Lx/A;->g:Lx/K;

    iget v2, v2, Lx/K;->g:I

    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget v3, v3, Lx/D;->d:I

    if-ge v2, v3, :cond_a9

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_8e
    iget-object v1, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v1}, Lx/K;->b()I

    move-result v1

    iget-object v2, p0, Lx/A;->h:Lx/C;

    invoke-virtual {v2, v1}, Lx/C;->b(I)V

    iget-object v2, p0, Lx/A;->h:Lx/C;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lx/C;->a(I)V
    :try_end_a0
    .catchall {:try_start_8e .. :try_end_a0} :catchall_cd

    iget-object v2, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_a9
    if-ne v1, v4, :cond_b4

    iget-object v1, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v1}, Lx/K;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lx/A;->g(I)V

    :cond_b4
    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Lx/I;->b()I

    move-result v2

    iget-object v3, p0, Lx/A;->g:Lx/K;

    iget-object v3, v3, Lx/K;->c:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_c7

    :cond_c2
    new-instance v0, Lx/I;

    invoke-direct {v0, v1}, Lx/I;-><init>(I)V

    :cond_c7
    iput v1, p0, Lx/A;->u:I

    return-object v0

    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :catchall_cd
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_d8
    move v1, v2

    goto :goto_79

    :cond_da
    move-object v0, v2

    move v2, v4

    goto/16 :goto_2b
.end method

.method private m()I
    .registers 5

    iget v0, p0, Lx/A;->v:I

    if-ltz v0, :cond_7

    iget v0, p0, Lx/A;->v:I

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

.method private n()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/A;->g()V

    iget-boolean v2, p0, Lx/A;->w:Z

    if-eqz v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v2}, Lx/K;->f()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_16

    move v0, v1

    goto :goto_9

    :cond_16
    invoke-static {}, Ln/b;->f()J

    move-result-wide v2

    iget-object v4, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v4}, Lx/K;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v6, 0x3fd0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_9

    move v0, v1

    goto :goto_9
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lx/A;->f:Lx/D;

    iget v0, v0, Lx/D;->g:I

    return v0
.end method

.method public a(I)V
    .registers 10

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lx/A;->f:Lx/D;

    iget v0, v0, Lx/D;->g:I

    if-eq p1, v0, :cond_48

    new-instance v0, Lx/D;

    iget-object v1, p0, Lx/A;->f:Lx/D;

    iget v1, v1, Lx/D;->a:I

    iget-object v2, p0, Lx/A;->f:Lx/D;

    iget v2, v2, Lx/D;->c:I

    iget-object v3, p0, Lx/A;->f:Lx/D;

    iget v3, v3, Lx/D;->d:I

    iget-object v4, p0, Lx/A;->f:Lx/D;

    iget v4, v4, Lx/D;->e:I

    iget-object v5, p0, Lx/A;->f:Lx/D;

    iget-boolean v5, v5, Lx/D;->f:Z

    iget-object v6, p0, Lx/A;->f:Lx/D;

    iget-object v7, v6, Lx/D;->h:Ljava/util/Locale;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lx/D;-><init>(IIIIZILjava/util/Locale;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lx/D;->a([BI)I

    iget-object v2, p0, Lx/A;->e:Lx/aa;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_56
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_34} :catch_51

    :try_start_34
    iget-object v3, p0, Lx/A;->e:Lx/aa;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lx/aa;->a(J)V

    iget-object v3, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v3, v1}, Lx/aa;->b([B)V

    iget-object v1, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v1}, Lx/aa;->b()V

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_4e

    :try_start_46
    iput-object v0, p0, Lx/A;->f:Lx/D;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_56
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_48} :catch_51

    :cond_48
    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_56
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    :try_start_52
    invoke-virtual {p0}, Lx/A;->f()V

    throw v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(ILjava/util/Locale;)V
    .registers 5

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lx/A;->n:Z

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_33

    :try_start_11
    invoke-direct {p0, p1, p2}, Lx/A;->b(ILjava/util/Locale;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_23

    :try_start_14
    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_33

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_23
    move-exception v0

    :try_start_24
    invoke-virtual {p0}, Lx/A;->f()V

    throw v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    :try_start_29
    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a(Ljava/util/Collection;)V
    .registers 17

    const/4 v1, 0x0

    iget-object v2, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-boolean v2, p0, Lx/A;->n:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_ce

    if-eqz v2, :cond_10

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_10
    :try_start_10
    invoke-direct/range {p0 .. p1}, Lx/A;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0}, Lx/A;->i()V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/E;

    iget-object v5, v1, Lx/E;->d:[B

    array-length v5, v5

    iget-object v1, v1, Lx/E;->b:[B

    array-length v1, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1c

    :cond_32
    const/high16 v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v13, v1, [B

    invoke-direct {p0}, Lx/A;->l()Lx/I;

    move-result-object v3

    new-instance v2, Lx/G;

    invoke-virtual {v3}, Lx/I;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lx/A;->b(I)Lx/aa;

    move-result-object v1

    invoke-virtual {v3}, Lx/I;->c()I

    move-result v5

    invoke-direct {v2, v1, v5, v13}, Lx/G;-><init>(Lx/aa;I[B)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_53
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lx/E;

    move-object v8, v0

    invoke-virtual {v3}, Lx/I;->b()I

    move-result v1

    iget-object v4, p0, Lx/A;->f:Lx/D;

    iget v4, v4, Lx/D;->e:I

    if-ge v1, v4, :cond_74

    invoke-virtual {v3}, Lx/I;->c()I

    move-result v1

    const v4, 0x7ffffff

    if-le v1, v4, :cond_d5

    :cond_74
    invoke-direct {p0, v2, v3}, Lx/A;->a(Lx/G;Lx/I;)V

    invoke-direct {p0}, Lx/A;->l()Lx/I;

    move-result-object v2

    new-instance v1, Lx/G;

    invoke-virtual {v2}, Lx/I;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lx/A;->b(I)Lx/aa;

    move-result-object v3

    invoke-virtual {v2}, Lx/I;->c()I

    move-result v4

    invoke-direct {v1, v3, v4, v13}, Lx/G;-><init>(Lx/aa;I[B)V

    move-object v11, v1

    move-object v12, v2

    :goto_8e
    iget-object v1, v8, Lx/E;->b:[B

    invoke-virtual {v11, v1}, Lx/G;->a([B)V

    iget-object v1, v8, Lx/E;->d:[B

    invoke-virtual {v11, v1}, Lx/G;->a([B)V

    new-instance v1, Lx/H;

    iget-object v2, v8, Lx/E;->a:Lx/F;

    invoke-virtual {v2}, Lx/F;->a()J

    move-result-wide v2

    invoke-virtual {v12}, Lx/I;->c()I

    move-result v4

    iget-object v5, v8, Lx/E;->b:[B

    array-length v5, v5

    iget-object v6, v8, Lx/E;->d:[B

    array-length v6, v6

    iget v7, v8, Lx/E;->c:I

    iget-object v9, v8, Lx/E;->d:[B

    const/4 v10, 0x0

    iget-object v8, v8, Lx/E;->d:[B

    array-length v8, v8

    invoke-static {v9, v10, v8}, Lx/A;->c([BII)I

    move-result v8

    invoke-virtual {v12}, Lx/I;->a()I

    move-result v9

    invoke-virtual {v12}, Lx/I;->b()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lx/H;-><init>(JIIIIIII)V

    invoke-virtual {v12, v1}, Lx/I;->a(Lx/H;)V

    move-object v2, v11

    move-object v3, v12

    goto :goto_53

    :cond_c7
    invoke-direct {p0, v2, v3}, Lx/A;->a(Lx/G;Lx/I;)V
    :try_end_ca
    .catchall {:try_start_10 .. :try_end_ca} :catchall_ce

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_c

    :catchall_ce
    move-exception v1

    iget-object v2, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_d5
    move-object v11, v2

    move-object v12, v3

    goto :goto_8e
.end method

.method public a(J)[B
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lx/A;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)[B
    .registers 6

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_9
    iget-boolean v0, p0, Lx/A;->n:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_2d

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_17
    invoke-direct {p0}, Lx/A;->j()V

    return-object v0

    :cond_1b
    :try_start_1b
    invoke-static {p1, p2, p3}, Lx/A;->c(JLjava/lang/String;)Lx/F;

    move-result-object v0

    invoke-direct {p0, v0}, Lx/A;->c(Lx/F;)[B
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_2d

    move-result-object v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_17

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lx/A;->j()V

    throw v0
.end method

.method public b()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lx/A;->f:Lx/D;

    iget-object v0, v0, Lx/D;->h:Ljava/util/Locale;

    return-object v0
.end method

.method b(I)Lx/aa;
    .registers 7

    iget-object v1, p0, Lx/A;->i:[Lx/aa;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    aget-object v0, v0, p1

    if-nez v0, :cond_18

    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    iget-object v2, p0, Lx/A;->d:Lx/ab;

    invoke-virtual {p0, p1}, Lx/A;->c(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lx/ab;->a(Ljava/lang/String;Z)Lx/aa;

    move-result-object v2

    aput-object v2, v0, p1

    :cond_18
    iget-object v0, p0, Lx/A;->i:[Lx/aa;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public b(JLjava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_9
    invoke-static {p1, p2, p3}, Lx/A;->c(JLjava/lang/String;)Lx/F;

    move-result-object v0

    invoke-direct {p0, v0}, Lx/A;->a(Lx/F;)Lx/H;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_23

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_14
    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lx/A;->j()V

    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_14

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lx/A;->j()V

    throw v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_9
    iget-object v0, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v0}, Lx/K;->d()I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method c(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx/A;->c:Ljava/lang/String;

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

.method public d()J
    .registers 4

    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_9
    iget-object v0, p0, Lx/A;->g:Lx/K;

    invoke-virtual {v0}, Lx/K;->e()J
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_19

    move-result-wide v0

    iget-object v2, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_19
    move-exception v0

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public e()I
    .registers 3

    iget-object v0, p0, Lx/A;->f:Lx/D;

    iget v0, v0, Lx/D;->d:I

    iget-object v1, p0, Lx/A;->f:Lx/D;

    iget v1, v1, Lx/D;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public f()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-boolean v1, p0, Lx/A;->n:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_4d

    if-eqz v1, :cond_10

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_10
    const/4 v1, 0x1

    :try_start_11
    iput-boolean v1, p0, Lx/A;->n:Z

    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_4d

    :try_start_1c
    invoke-direct {p0}, Lx/A;->k()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    iget-object v1, p0, Lx/A;->e:Lx/aa;

    invoke-interface {v1}, Lx/aa;->a()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_42
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_64

    :goto_24
    const/4 v1, 0x0

    :goto_25
    :try_start_25
    iget-object v2, p0, Lx/A;->i:[Lx/aa;

    array-length v2, v2

    if-ge v1, v2, :cond_3f

    iget-object v2, p0, Lx/A;->i:[Lx/aa;

    aget-object v2, v2, v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_42

    if-eqz v2, :cond_3c

    :try_start_30
    iget-object v2, p0, Lx/A;->i:[Lx/aa;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lx/aa;->a()V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_62

    :goto_37
    :try_start_37
    iget-object v2, p0, Lx/A;->i:[Lx/aa;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3f
    if-eqz v0, :cond_56

    throw v0
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v0

    :try_start_43
    iget-object v1, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    iget-object v1, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_54
    move-exception v0

    goto :goto_1f

    :cond_56
    :try_start_56
    iget-object v0, p0, Lx/A;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_4d

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_c

    :catch_62
    move-exception v0

    goto :goto_37

    :catch_64
    move-exception v0

    goto :goto_24
.end method

.method g()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lx/A;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write lock must be held"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx/A;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/A;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/A;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx/A;->f:Lx/D;

    iget-boolean v1, v1, Lx/D;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/A;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lx/A;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx/A;->f:Lx/D;

    iget v1, v1, Lx/D;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
