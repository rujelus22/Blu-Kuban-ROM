.class public final Ljava/lang/ref/FinalizerReference;
.super Ljava/lang/ref/Reference;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/FinalizerReference$1;,
        Ljava/lang/ref/FinalizerReference$Sentinel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static head:Ljava/lang/ref/FinalizerReference;

.field public static final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private next:Ljava/lang/ref/FinalizerReference;

.field private prev:Ljava/lang/ref/FinalizerReference;

.field private zombie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 35
    return-void
.end method

.method static add(Ljava/lang/Object;)V
    .registers 4
    .parameter "referent"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 49
    .local v0, reference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    const-class v2, Ljava/lang/ref/FinalizerReference;

    monitor-enter v2

    .line 50
    const/4 v1, 0x0

    :try_start_b
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 51
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 52
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    if-eqz v1, :cond_19

    .line 53
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 55
    :cond_19
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .line 56
    monitor-exit v2

    .line 57
    return-void

    .line 56
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public static finalizeAllEnqueued()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v1, Ljava/lang/ref/FinalizerReference$Sentinel;

    invoke-direct {v1, v3}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>(Ljava/lang/ref/FinalizerReference$1;)V

    .line 81
    .local v1, sentinel:Ljava/lang/ref/FinalizerReference$Sentinel;
    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v2, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v3, v2}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 82
    .local v0, reference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<Ljava/lang/Object;>;"
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 83
    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->enqueueInternal()Z

    .line 84
    invoke-virtual {v1}, Ljava/lang/ref/FinalizerReference$Sentinel;->awaitFinalization()V

    .line 85
    return-void
.end method

.method public static remove(Ljava/lang/ref/FinalizerReference;)V
    .registers 5
    .parameter "reference"

    .prologue
    .line 60
    const-class v3, Ljava/lang/ref/FinalizerReference;

    monitor-enter v3

    .line 61
    :try_start_3
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 62
    .local v0, next:Ljava/lang/ref/FinalizerReference;
    iget-object v1, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 63
    .local v1, prev:Ljava/lang/ref/FinalizerReference;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 65
    if-eqz v1, :cond_17

    .line 66
    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 70
    :goto_11
    if-eqz v0, :cond_15

    .line 71
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 73
    :cond_15
    monitor-exit v3

    .line 74
    return-void

    .line 68
    :cond_17
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    goto :goto_11

    .line 73
    .end local v0           #next:Ljava/lang/ref/FinalizerReference;
    .end local v1           #prev:Ljava/lang/ref/FinalizerReference;
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v2
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 44
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    return-object v0
.end method
