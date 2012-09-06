.class final Lcom/google/common/collect/je;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 209
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/jf;

    invoke-direct {v1, p0}, Lcom/google/common/collect/jf;-><init>(Lcom/google/common/collect/je;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/v;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/je;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 221
    if-ne p1, p2, :cond_4

    .line 222
    const/4 v0, 0x0

    .line 235
    :cond_3
    :goto_3
    return v0

    .line 224
    :cond_4
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 225
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 226
    if-eq v0, v1, :cond_14

    .line 227
    if-ge v0, v1, :cond_12

    const/4 v0, -0x1

    goto :goto_3

    :cond_12
    const/4 v0, 0x1

    goto :goto_3

    .line 231
    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/je;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/collect/je;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 232
    if-nez v0, :cond_3

    .line 233
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
