.class Lan/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/n;


# instance fields
.field private final a:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lan/o;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lan/m;)V
    .registers 2
    .parameter

    .prologue
    .line 739
    invoke-direct {p0}, Lan/o;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(ILan/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 766
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lan/o;->a:Ljava/util/WeakHashMap;

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

    check-cast v0, Lan/y;

    .line 767
    invoke-interface {v0, p1, p2}, Lan/y;->a(ILan/h;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 766
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 769
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lan/y;)V
    .registers 4
    .parameter

    .prologue
    .line 749
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lan/o;->a:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 750
    monitor-exit p0

    return-void

    .line 749
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/B;Lan/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 759
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lan/o;->a:Ljava/util/WeakHashMap;

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

    check-cast v0, Lan/y;

    .line 760
    invoke-interface {v0, p1, p2}, Lan/y;->a(Lat/B;Lan/h;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 759
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 762
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lan/y;)V
    .registers 3
    .parameter

    .prologue
    .line 754
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lan/o;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 755
    monitor-exit p0

    return-void

    .line 754
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
