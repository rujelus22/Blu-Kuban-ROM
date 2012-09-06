.class public LtN;
.super Ljava/lang/Object;
.source "UploadQueue.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LtZ;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LtZ;",
            ">;"
        }
    .end annotation
.end field

.field private a:LtZ;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, LtN;->a:LtZ;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LtN;->a:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LtN;->a:Ljava/util/Set;

    .line 38
    return-void
.end method

.method private b()LtZ;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, LtN;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtZ;

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LtZ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LtN;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized a()LtZ;
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, LtN;->a:LtZ;

    if-eqz v0, :cond_16

    iget-object v0, p0, LtN;->a:LtZ;

    invoke-virtual {v0}, LtZ;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 65
    iget-object v0, p0, LtN;->a:LtZ;

    invoke-virtual {p0, v0}, LtN;->a(LtZ;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_1

    .line 64
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_16
    :try_start_16
    iget-object v0, p0, LtN;->a:LtZ;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_13

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized a(I)LtZ;
    .registers 3
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LtN;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtZ;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "LtZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LtN;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, LtN;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-direct {p0}, LtN;->b()LtZ;

    move-result-object v0

    iput-object v0, p0, LtN;->a:LtZ;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 54
    monitor-exit p0

    return-void

    .line 51
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(LtZ;)V
    .registers 3
    .parameter

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LtN;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 86
    iget-object v0, p0, LtN;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_e
    iget-object v0, p0, LtN;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, LtN;->a:LtZ;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_26

    .line 93
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 90
    :cond_1b
    :try_start_1b
    iget-object v0, p0, LtN;->a:LtZ;

    if-ne p1, v0, :cond_19

    .line 91
    invoke-direct {p0}, LtN;->b()LtZ;

    move-result-object v0

    iput-object v0, p0, LtN;->a:LtZ;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    goto :goto_19

    .line 85
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LtN;->a()LtZ;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
