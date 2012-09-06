.class public abstract Lanf;
.super Ljava/lang/Object;
.source "AbstractModule.java"

# interfaces
.implements Lanz;


# instance fields
.field a:Lcom/google/inject/Binder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(LanP;)LanQ;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "LanQ",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a(LanP;)LanQ;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)LanQ;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanQ",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    return-object v0
.end method

.method protected a()LanR;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Binder;->a()LanR;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lant;)LanU;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanU",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a(Lant;)LanU;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/google/inject/Binder;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lanf;->a:Lcom/google/inject/Binder;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    const-string v1, "The binder can only be used inside configure()"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lanf;->a:Lcom/google/inject/Binder;

    return-object v0

    .line 78
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract a()V
.end method

.method protected a(Lanz;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a(Lanz;)V

    .line 123
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/inject/Binder;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lanf;->a:Lcom/google/inject/Binder;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_6
    const-string v1, "Re-entry is not allowed."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 60
    const-string v0, "builder"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binder;

    iput-object v0, p0, Lanf;->a:Lcom/google/inject/Binder;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_24

    .line 62
    :try_start_15
    invoke-virtual {p0}, Lanf;->a()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    .line 65
    const/4 v0, 0x0

    :try_start_19
    iput-object v0, p0, Lanf;->a:Lcom/google/inject/Binder;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_24

    .line 67
    monitor-exit p0

    return-void

    .line 58
    :cond_1d
    const/4 v0, 0x0

    goto :goto_6

    .line 65
    :catchall_1f
    move-exception v0

    const/4 v1, 0x0

    :try_start_21
    iput-object v1, p0, Lanf;->a:Lcom/google/inject/Binder;

    throw v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_24

    .line 58
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a(Ljava/lang/Class;)LanD;

    .line 197
    return-void
.end method

.method protected a(Ljava/lang/Class;LanG;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "LanG;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/inject/Binder;->a(Ljava/lang/Class;LanG;)V

    .line 88
    return-void
.end method

.method protected varargs a([Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lanf;->a()Lcom/google/inject/Binder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/inject/Binder;->a([Ljava/lang/Class;)V

    .line 160
    return-void
.end method
