.class public LGd;
.super Ljava/lang/Object;
.source "ClientFlagImpl.java"

# interfaces
.implements LFX;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "LFY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, LGd;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LGd;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;D)D
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 96
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-wide p2

    .line 98
    :cond_15
    monitor-exit p0

    return-wide p2

    .line 95
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result p2

    .line 85
    :cond_15
    monitor-exit p0

    return p2

    .line 82
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 70
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    .line 72
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    move-object v0, p2

    goto :goto_11

    .line 69
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, LGd;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFY;

    .line 38
    invoke-interface {v0}, LFY;->a()V

    goto :goto_6

    .line 40
    :cond_16
    return-void
.end method

.method public declared-synchronized a(LFY;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, LGd;->a:Ljava/util/Map;

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1e

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 111
    :goto_18
    monitor-exit p0

    return v0

    .line 109
    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    :cond_1c
    move v0, p2

    .line 111
    goto :goto_18

    .line 108
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LGd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
