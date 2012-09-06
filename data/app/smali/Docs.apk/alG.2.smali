.class public abstract LalG;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements LalU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LalU",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:LalH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LalH",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final a:LalL;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, LalH;

    invoke-direct {v0}, LalH;-><init>()V

    iput-object v0, p0, LalG;->a:LalH;

    .line 71
    new-instance v0, LalL;

    invoke-direct {v0}, LalL;-><init>()V

    iput-object v0, p0, LalG;->a:LalL;

    .line 215
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, LalG;->a:LalL;

    invoke-virtual {v0, p1, p2}, LalL;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 156
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {v0, p1}, LalH;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 169
    if-eqz v0, :cond_d

    .line 170
    iget-object v1, p0, LalG;->a:LalL;

    invoke-virtual {v1}, LalL;->a()V

    .line 172
    :cond_d
    return v0
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .registers 4
    .parameter

    .prologue
    .line 186
    iget-object v1, p0, LalG;->a:LalH;

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, LalH;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 187
    if-eqz v0, :cond_13

    .line 188
    iget-object v1, p0, LalG;->a:LalL;

    invoke-virtual {v1}, LalL;->a()V

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
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {v0}, LalH;->c()Z

    move-result v0

    if-nez v0, :cond_a

    .line 127
    const/4 v0, 0x0

    .line 133
    :goto_9
    return v0

    .line 129
    :cond_a
    iget-object v0, p0, LalG;->a:LalL;

    invoke-virtual {v0}, LalL;->a()V

    .line 130
    if-eqz p1, :cond_14

    .line 131
    invoke-virtual {p0}, LalG;->a()V

    .line 133
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {v0}, LalH;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LalH;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {v0}, LalH;->b()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, LalG;->a:LalH;

    invoke-virtual {v0}, LalH;->a()Z

    move-result v0

    return v0
.end method
