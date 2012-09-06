.class final Lcom/google/common/collect/gw;
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
    .line 1579
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/gu;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1584
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/gw;->d:J

    .line 1596
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gw;->e:Lcom/google/common/collect/gg;

    .line 1609
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gw;->f:Lcom/google/common/collect/gg;

    .line 1580
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 1588
    iget-wide v0, p0, Lcom/google/common/collect/gw;->d:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/common/collect/gw;->e:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/common/collect/gw;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1593
    iput-wide p1, p0, Lcom/google/common/collect/gw;->d:J

    .line 1594
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/google/common/collect/gw;->e:Lcom/google/common/collect/gg;

    .line 1607
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/google/common/collect/gw;->f:Lcom/google/common/collect/gg;

    .line 1620
    return-void
.end method
