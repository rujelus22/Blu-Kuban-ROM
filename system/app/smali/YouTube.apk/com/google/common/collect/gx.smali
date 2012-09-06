.class final Lcom/google/common/collect/gx;
.super Lcom/google/common/collect/gu;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field volatile d:J

.field e:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field g:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field h:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V
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
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/gu;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/gx;->d:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gx;->e:Lcom/google/common/collect/gg;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gx;->f:Lcom/google/common/collect/gg;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gx;->g:Lcom/google/common/collect/gg;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gx;->h:Lcom/google/common/collect/gg;

    .line 1664
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/gx;->d:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/gx;->g:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/gx;->e:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/gx;->h:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/gx;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/gx;->d:J

    .line 1678
    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/gx;->g:Lcom/google/common/collect/gg;

    .line 1719
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/gx;->e:Lcom/google/common/collect/gg;

    .line 1691
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/gx;->h:Lcom/google/common/collect/gg;

    .line 1732
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/gx;->f:Lcom/google/common/collect/gg;

    .line 1704
    return-void
.end method
