.class final Lcom/google/common/collect/gj;
.super Lcom/google/common/collect/gh;
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
    .line 1321
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/gh;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1326
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/gj;->d:J

    .line 1338
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gj;->e:Lcom/google/common/collect/gg;

    .line 1351
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gj;->f:Lcom/google/common/collect/gg;

    .line 1322
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 1330
    iget-wide v0, p0, Lcom/google/common/collect/gj;->d:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/google/common/collect/gj;->e:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/common/collect/gj;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1335
    iput-wide p1, p0, Lcom/google/common/collect/gj;->d:J

    .line 1336
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/google/common/collect/gj;->e:Lcom/google/common/collect/gg;

    .line 1349
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/google/common/collect/gj;->f:Lcom/google/common/collect/gg;

    .line 1362
    return-void
.end method
