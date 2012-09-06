.class final Lcom/google/common/cache/ai;
.super Lcom/google/common/cache/ak;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/x;


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field c:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1452
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/ak;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1457
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/ai;->a:J

    .line 1469
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ai;->b:Lcom/google/common/cache/x;

    .line 1482
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ai;->c:Lcom/google/common/cache/x;

    .line 1453
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 1461
    iget-wide v0, p0, Lcom/google/common/cache/ai;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/google/common/cache/ai;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/common/cache/ai;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1466
    iput-wide p1, p0, Lcom/google/common/cache/ai;->a:J

    .line 1467
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/google/common/cache/ai;->b:Lcom/google/common/cache/x;

    .line 1480
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/google/common/cache/ai;->c:Lcom/google/common/cache/x;

    .line 1493
    return-void
.end method
