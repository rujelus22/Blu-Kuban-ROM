.class public abstract Lcom/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedHashSet;


# virtual methods
.method public final declared-synchronized a(Lcom/a/b/a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/a/a/a;->a:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/a;->a:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/a/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_19

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/a/a/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method
