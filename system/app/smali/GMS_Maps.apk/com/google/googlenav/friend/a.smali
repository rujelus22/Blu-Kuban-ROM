.class public Lcom/google/googlenav/friend/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/a;->a:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/friend/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/friend/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 95
    invoke-virtual {p0}, Lcom/google/googlenav/friend/a;->b()Lcom/google/googlenav/friend/c;

    move-result-object v0

    .line 96
    if-nez v0, :cond_16

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/friend/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    :cond_15
    :goto_15
    return-void

    .line 99
    :cond_16
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_15
.end method

.method public declared-synchronized a(Lcom/google/googlenav/friend/b;)V
    .registers 3
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Lcom/google/googlenav/friend/c;
    .registers 7

    .prologue
    .line 117
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/google/googlenav/friend/a;->a:Ljava/util/List;

    monitor-enter v3

    .line 123
    :try_start_b
    iget-object v0, p0, Lcom/google/googlenav/friend/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/b;

    .line 124
    invoke-interface {v0}, Lcom/google/googlenav/friend/b;->b()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 125
    invoke-interface {v0}, Lcom/google/googlenav/friend/b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 129
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

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3e

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_3d
    return-object v0

    :cond_3e
    new-instance v0, Lcom/google/googlenav/friend/c;

    iget-object v3, p0, Lcom/google/googlenav/friend/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_3d
.end method
