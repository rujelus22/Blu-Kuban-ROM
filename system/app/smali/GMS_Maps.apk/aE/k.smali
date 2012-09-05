.class LaE/k;
.super Ljava/lang/Object;

# interfaces
.implements LaE/j;


# instance fields
.field private final a:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LaE/k;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(LaE/i;)V
    .registers 2

    invoke-direct {p0}, LaE/k;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILaE/h;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/k;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/m;

    invoke-interface {v0, p1, p2}, LaE/m;->a(ILaE/h;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(LaE/m;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/k;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/B;LaE/h;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/k;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaE/m;

    invoke-interface {v0, p1, p2}, LaE/m;->a(LaJ/B;LaE/h;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(LaE/m;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/k;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
