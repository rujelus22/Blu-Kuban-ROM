.class public Ldf;
.super Ljava/lang/Object;
.source "AccountFlagSetImpl.java"

# interfaces
.implements Lde;


# instance fields
.field private final a:Ljava/lang/String;

.field final a:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldf;->a:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Ldf;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :cond_11
    return-wide p2
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Ldf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    .line 57
    if-eqz v0, :cond_10

    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    move-object v0, p2

    goto :goto_e

    .line 55
    :catchall_12
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
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

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

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 36
    monitor-exit p0

    return-void

    .line 35
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 65
    monitor-exit p0

    return-void

    .line 62
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Ldf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    if-eqz v0, :cond_12

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result p2

    :cond_12
    monitor-exit p0

    return p2

    .line 69
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
