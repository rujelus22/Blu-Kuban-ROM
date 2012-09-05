.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field

.field volatile queue:Ljava/lang/ref/ReferenceQueue;

.field volatile queueNext:Ljava/lang/ref/Reference;

.field volatile referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .parameter
    .parameter "q"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 88
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 95
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public enqueue()Z
    .registers 2

    .prologue
    .line 123
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized enqueueInternal()Z
    .registers 2

    .prologue
    .line 107
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-nez v0, :cond_14

    .line 108
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 107
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnqueued()Z
    .registers 2

    .prologue
    .line 143
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
