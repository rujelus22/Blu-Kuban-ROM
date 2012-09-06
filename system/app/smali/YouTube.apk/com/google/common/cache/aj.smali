.class final Lcom/google/common/cache/aj;
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

.field volatile d:J

.field e:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/cache/x;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V
    .registers 8
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
    const-wide v1, 0x7fffffffffffffffL

    .line 1548
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/ak;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/x;)V

    .line 1553
    iput-wide v1, p0, Lcom/google/common/cache/aj;->a:J

    .line 1565
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/x;

    .line 1578
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/x;

    .line 1593
    iput-wide v1, p0, Lcom/google/common/cache/aj;->d:J

    .line 1605
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->e:Lcom/google/common/cache/x;

    .line 1618
    invoke-static {}, Lcom/google/common/cache/LocalCache;->k()Lcom/google/common/cache/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/aj;->f:Lcom/google/common/cache/x;

    .line 1549
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .registers 3

    .prologue
    .line 1557
    iget-wide v0, p0, Lcom/google/common/cache/aj;->a:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/common/cache/aj;->e:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/common/cache/aj;->f:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public final getWriteTime()J
    .registers 3

    .prologue
    .line 1597
    iget-wide v0, p0, Lcom/google/common/cache/aj;->d:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1562
    iput-wide p1, p0, Lcom/google/common/cache/aj;->a:J

    .line 1563
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/google/common/cache/aj;->b:Lcom/google/common/cache/x;

    .line 1576
    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/google/common/cache/aj;->e:Lcom/google/common/cache/x;

    .line 1616
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/google/common/cache/aj;->c:Lcom/google/common/cache/x;

    .line 1589
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 2
    .parameter

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/google/common/cache/aj;->f:Lcom/google/common/cache/x;

    .line 1629
    return-void
.end method

.method public final setWriteTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1602
    iput-wide p1, p0, Lcom/google/common/cache/aj;->d:J

    .line 1603
    return-void
.end method
