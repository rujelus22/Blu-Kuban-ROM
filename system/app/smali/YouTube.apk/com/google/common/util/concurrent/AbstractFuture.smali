.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/f;


# instance fields
.field private final a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

.field private final b:Lcom/google/common/util/concurrent/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    .line 71
    new-instance v0, Lcom/google/common/util/concurrent/b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/b;

    .line 215
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_d

    .line 170
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/b;->a()V

    .line 172
    :cond_d
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .registers 4
    .parameter

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_13

    .line 188
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/b;->a()V

    .line 193
    :cond_13
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1a

    .line 194
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 196
    :cond_1a
    return v0
.end method

.method public cancel(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->cancel()Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_9
    return v0

    .line 129
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->a()V

    .line 130
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method
