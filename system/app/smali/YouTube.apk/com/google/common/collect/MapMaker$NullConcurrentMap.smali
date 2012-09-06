.class Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

.field private final removalListener:Lcom/google/common/collect/fr;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .registers 3
    .parameter

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 846
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/fr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/fr;

    .line 847
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 848
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 912
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 864
    const/4 v0, 0x0

    return-object v0
.end method

.method notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 868
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalCause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 870
    iget-object v1, p0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->removalListener:Lcom/google/common/collect/fr;

    invoke-interface {v1, v0}, Lcom/google/common/collect/fr;->onRemoval(Lcom/google/common/collect/MapMaker$RemovalNotification;)V

    .line 871
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 875
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 878
    const/4 v0, 0x0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 883
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 888
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const/4 v0, 0x0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 905
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const/4 v0, 0x0

    return v0
.end method
