.class final Lcom/google/common/collect/gi;
.super Lcom/google/common/collect/gh;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field d:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field e:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 6
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
    .line 1369
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/gh;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1374
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gi;->d:Lcom/google/common/collect/gg;

    .line 1387
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gi;->e:Lcom/google/common/collect/gg;

    .line 1370
    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/google/common/collect/gi;->d:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/common/collect/gi;->e:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/google/common/collect/gi;->d:Lcom/google/common/collect/gg;

    .line 1385
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/google/common/collect/gi;->e:Lcom/google/common/collect/gg;

    .line 1398
    return-void
.end method
