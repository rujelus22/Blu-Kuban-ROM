.class public Lmv;
.super Ljava/lang/Object;
.source "DiscussionFutureImpl.java"

# interfaces
.implements Lmu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:LmM;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmv;->a:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmv;->a:Z

    return-void
.end method

.method private declared-synchronized a(LmM;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LmM;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lmv;->a:Z

    if-nez v2, :cond_47

    move v2, v0

    :goto_8
    const-string v3, "can set result only once"

    invoke-static {v2, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmv;->a:Z

    .line 57
    if-eqz p1, :cond_4b

    .line 58
    if-nez p2, :cond_49

    :goto_14
    const-string v1, "exception may only be given if result is null"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lmv;->a:LmM;

    .line 60
    const-string v0, "DiscussionFutureImpl"

    const-string v1, "error processing discussion"

    invoke-static {v0, v1, p1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_22
    iget-object v0, p0, Lmv;->a:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 66
    iget-object v0, p0, Lmv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 67
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    goto :goto_2c

    .line 54
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_47
    move v2, v1

    goto :goto_8

    :cond_49
    move v0, v1

    .line 58
    goto :goto_14

    .line 62
    :cond_4b
    :try_start_4b
    iput-object p2, p0, Lmv;->a:Ljava/lang/Object;

    goto :goto_22

    .line 69
    :cond_4e
    iget-object v0, p0, Lmv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lmv;->a:Ljava/util/List;
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_44

    .line 72
    :cond_56
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmv;->a:Z

    invoke-static {v0}, LafQ;->b(Z)V

    .line 39
    iget-object v0, p0, Lmv;->a:LmM;

    if-eqz v0, :cond_10

    .line 40
    iget-object v0, p0, Lmv;->a:LmM;

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 38
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 42
    :cond_10
    :try_start_10
    iget-object v0, p0, Lmv;->a:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lmv;->a:Z

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_14

    .line 34
    :goto_8
    monitor-exit p0

    return-void

    .line 32
    :cond_a
    :try_start_a
    iget-object v0, p0, Lmv;->a:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_14

    goto :goto_8

    .line 29
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmv;->a(LmM;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    instance-of v0, p1, LmM;

    if-eqz v0, :cond_e

    .line 89
    check-cast p1, LmM;

    .line 93
    :goto_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmv;->a(LmM;Ljava/lang/Object;)V

    .line 94
    return-void

    .line 91
    :cond_e
    new-instance v0, LmM;

    invoke-direct {v0, p1}, LmM;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_9
.end method
