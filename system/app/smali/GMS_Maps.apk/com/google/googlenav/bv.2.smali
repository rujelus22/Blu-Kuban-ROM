.class public Lcom/google/googlenav/bv;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/List;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/bv;->c:I

    iput v0, p0, Lcom/google/googlenav/bv;->d:I

    iput v0, p0, Lcom/google/googlenav/bv;->f:I

    iput v0, p0, Lcom/google/googlenav/bv;->g:I

    iput v0, p0, Lcom/google/googlenav/bv;->e:I

    iput v0, p0, Lcom/google/googlenav/bv;->h:I

    iput v0, p0, Lcom/google/googlenav/bv;->i:I

    iput v0, p0, Lcom/google/googlenav/bv;->j:I

    iput-object p1, p0, Lcom/google/googlenav/bv;->k:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(B)Lcom/google/googlenav/bv;
    .registers 3

    const-class v1, Lcom/google/googlenav/bv;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/bv;->b:Ljava/util/List;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/googlenav/bv;->f()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/bv;->b:Ljava/util/List;

    :cond_d
    sget-object v0, Lcom/google/googlenav/bv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    move-result v0

    if-lt p0, v0, :cond_18

    const/4 v0, 0x0

    :goto_16
    monitor-exit v1

    return-object v0

    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/googlenav/bv;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bv;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    goto :goto_16

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->f:I

    iget v1, p0, Lcom/google/googlenav/bv;->g:I

    iget v2, p0, Lcom/google/googlenav/bv;->h:I

    add-int v3, v0, v1

    const/16 v4, 0x32

    if-gt v3, v4, :cond_15

    add-int v3, v0, v1

    if-lez v3, :cond_13

    if-nez p1, :cond_15

    :cond_13
    monitor-exit p0

    :goto_14
    return-void

    :cond_15
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bv;->f:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bv;->g:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bv;->h:I

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_71

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_38

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_38
    if-lez v1, :cond_4c

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4c
    if-lez v2, :cond_60

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_60
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/bv;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_14

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method private static f()Ljava/util/List;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "CacheHitStats"

    invoke-static {v1}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_5b

    :try_start_e
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5b

    move v1, v0

    :goto_16
    sget-object v4, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5b

    new-instance v4, Lcom/google/googlenav/bv;

    sget-object v5, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Lcom/google/googlenav/bv;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bv;->c:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bv;->d:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bv;->i:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bv;->j:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bv;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_45} :catch_48

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catch_48
    move-exception v1

    const-string v2, "STATS"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v2, "CacheHitStats"

    invoke-interface {v1, v2}, Lak/m;->b(Ljava/lang/String;)Z

    :cond_5b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_7b

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_67
    sget-object v1, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7b

    new-instance v1, Lcom/google/googlenav/bv;

    sget-object v2, Lcom/google/googlenav/bv;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lcom/google/googlenav/bv;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_7b
    return-object v3
.end method


# virtual methods
.method public a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->e:I

    iget v0, p0, Lcom/google/googlenav/bv;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->h:I

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->c:I

    iget v0, p0, Lcom/google/googlenav/bv;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->f:I

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bv;->a(Z)V

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->d:I

    iget v0, p0, Lcom/google/googlenav/bv;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bv;->g:I

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bv;->a(Z)V

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized d()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bv;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
