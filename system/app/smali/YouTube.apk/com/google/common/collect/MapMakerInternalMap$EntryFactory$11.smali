.class final enum Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$11;
.super Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 483
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
    .line 493
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 494
    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory$11;->copyEvictableEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)V

    .line 495
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
    .line 487
    new-instance v0, Lcom/google/common/collect/gv;

    iget-object v1, p1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/common/collect/gv;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    return-object v0
.end method
