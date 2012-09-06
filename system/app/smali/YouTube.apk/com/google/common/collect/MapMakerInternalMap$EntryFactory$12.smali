.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/collect/fs;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 509
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;->copyExpirableEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    .line 510
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$12;->copyEvictableEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    .line 511
    return-object v0
.end method

.method final newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
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
    .line 502
    new-instance v0, Lcom/google/common/collect/gx;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/gx;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    return-object v0
.end method
