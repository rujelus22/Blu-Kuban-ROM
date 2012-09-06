.class public interface abstract Lcom/google/common/collect/lz;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cellSet()Ljava/util/Set;
.end method

.method public abstract clear()V
.end method

.method public abstract column(Ljava/lang/Object;)Ljava/util/Map;
.end method

.method public abstract columnKeySet()Ljava/util/Set;
.end method

.method public abstract columnMap()Ljava/util/Map;
.end method

.method public abstract contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract containsColumn(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract containsRow(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract containsValue(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract putAll(Lcom/google/common/collect/lz;)V
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract row(Ljava/lang/Object;)Ljava/util/Map;
.end method

.method public abstract rowKeySet()Ljava/util/Set;
.end method

.method public abstract rowMap()Ljava/util/Map;
.end method

.method public abstract size()I
.end method

.method public abstract values()Ljava/util/Collection;
.end method
