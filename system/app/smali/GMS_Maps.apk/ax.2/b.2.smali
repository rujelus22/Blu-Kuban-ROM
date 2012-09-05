.class public Lax/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lax/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Lax/c;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lax/c;-><init>(Lax/b;Lap/c;)V

    invoke-virtual {v0}, Lax/c;->g()V

    return-void
.end method

.method public declared-synchronized a(Lax/d;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lax/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Lax/e;
    .registers 7

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lax/b;->a:Ljava/util/List;

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lax/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/d;

    invoke-interface {v0}, Lax/d;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Lax/d;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_32
    move-exception v0

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    new-instance v0, Lax/e;

    invoke-direct {v0, v1, v2}, Lax/e;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
