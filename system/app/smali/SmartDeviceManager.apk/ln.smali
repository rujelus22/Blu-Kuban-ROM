.class public final Lln;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lln$c;,
        Lln$a;,
        Lln$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Llk;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lln;->a:Ljava/util/HashMap;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lln;->b:Llk;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lhj;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lln;->a:Ljava/util/HashMap;

    new-instance v1, Lln$c;

    invoke-direct {v1, p1}, Lln$c;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    return-object v0

    .line 65
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lnd;)Lhj;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lln;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    return-object v0

    .line 75
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Llk;
    .registers 3

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lln;->b:Llk;

    .line 50
    if-nez v0, :cond_15

    .line 51
    iget-object v0, p0, Lln;->a:Ljava/util/HashMap;

    new-instance v1, Llk;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Llk;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lln;->b:Llk;

    move-object v0, v1

    .line 53
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    .line 54
    new-instance v1, Llk;

    iget-object v0, v0, Llk;->a:Ljava/util/HashMap;

    invoke-direct {v1, v0}, Llk;-><init>(Ljava/util/HashMap;)V

    return-object v1

    .line 53
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/Class;)Lhj;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lln;->a:Ljava/util/HashMap;

    new-instance v1, Lln$b;

    invoke-direct {v1, p1}, Lln$b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    return-object v0

    .line 89
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lnd;)Lhj;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lln;->a:Ljava/util/HashMap;

    new-instance v1, Lln$a;

    invoke-direct {v1, p1}, Lln$a;-><init>(Lnd;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhj;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    return-object v0

    .line 82
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
