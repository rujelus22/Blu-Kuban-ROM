.class public Lr/h;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# static fields
.field private static final g:Lr/f;


# instance fields
.field private final a:Lx/ay;

.field private final b:Lx/az;

.field private final c:Lz/g;

.field private d:I

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr/f;

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v1

    invoke-direct {v0, v1}, Lr/f;-><init>(Ljava/util/List;)V

    sput-object v0, Lr/h;->g:Lr/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lr/h;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lr/h;->f:Ljava/util/Set;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    iput-object v0, p0, Lr/h;->a:Lx/ay;

    new-instance v0, Lz/g;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lr/h;->c:Lz/g;

    new-instance v0, Lr/i;

    invoke-direct {v0, p0}, Lr/i;-><init>(Lr/h;)V

    iput-object v0, p0, Lr/h;->b:Lx/az;

    iget-object v0, p0, Lr/h;->a:Lx/ay;

    iget-object v1, p0, Lr/h;->b:Lx/az;

    invoke-interface {v0, v1}, Lx/ay;->a(Lx/az;)V

    :goto_38
    return-void

    :cond_39
    iput-object v1, p0, Lr/h;->a:Lx/ay;

    iput-object v1, p0, Lr/h;->c:Lz/g;

    iput-object v1, p0, Lr/h;->b:Lx/az;

    goto :goto_38
.end method

.method static a(Lt/ao;)Lr/f;
    .registers 5

    new-instance v1, Lr/g;

    invoke-direct {v1}, Lr/g;-><init>()V

    invoke-virtual {p0}, Lt/ao;->j()Lt/ar;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Lt/ar;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    instance-of v3, v0, Lt/d;

    if-eqz v3, :cond_9

    check-cast v0, Lt/d;

    invoke-virtual {v0}, Lt/d;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v0}, Lr/g;->a(Lt/d;)V

    goto :goto_9

    :cond_25
    invoke-virtual {v1}, Lr/g;->a()Lr/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lt/af;Lr/f;)V
    .registers 5

    iget-object v0, p0, Lr/h;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/j;

    invoke-interface {v0, p1, p2}, Lr/j;->a(Lt/af;Lr/f;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private declared-synchronized b(Lt/af;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/h;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_16

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lr/h;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lr/h;->a:Lx/ay;

    invoke-interface {v0, p1, p0}, Lx/ay;->a(Lt/af;Lx/aw;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_9

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lt/af;)Lr/f;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lr/h;->c:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/f;

    sget-object v2, Lr/h;->g:Lr/f;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_1e

    if-ne v0, v2, :cond_11

    move-object v0, v1

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    if-nez v0, :cond_f

    :try_start_13
    invoke-direct {p0, p1}, Lr/h;->b(Lt/af;)V

    iget v0, p0, Lr/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/h;->d:I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1e

    move-object v0, v1

    goto :goto_f

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/h;->c:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    iget-object v0, p0, Lr/h;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lr/j;)V
    .registers 4

    iget-object v1, p0, Lr/h;->f:Ljava/util/Set;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/h;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Lt/af;ILt/ae;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_25

    instance-of v1, p3, Lt/ao;

    if-eqz v1, :cond_33

    check-cast p3, Lt/ao;

    invoke-static {p3}, Lr/h;->a(Lt/ao;)Lr/f;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_1d

    monitor-enter p0

    :try_start_10
    iget-object v2, p0, Lr/h;->c:Lz/g;

    invoke-virtual {v2, p1, v1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2b

    sget-object v2, Lr/h;->g:Lr/f;

    if-ne v1, v2, :cond_31

    :goto_1a
    invoke-direct {p0, p1, v0}, Lr/h;->a(Lt/af;Lr/f;)V

    :cond_1d
    monitor-enter p0

    :try_start_1e
    iget-object v0, p0, Lr/h;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2e

    return-void

    :cond_25
    const/4 v1, 0x2

    if-ne p2, v1, :cond_33

    sget-object v1, Lr/h;->g:Lr/f;

    goto :goto_d

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0

    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    move-object v0, v1

    goto :goto_1a

    :cond_33
    move-object v1, v0

    goto :goto_d
.end method
