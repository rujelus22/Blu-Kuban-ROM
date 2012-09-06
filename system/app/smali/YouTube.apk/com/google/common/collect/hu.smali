.class public interface abstract Lcom/google/common/collect/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asMap()Ljava/util/Map;
.end method

.method public abstract clear()V
.end method

.method public abstract containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract containsKey(Ljava/lang/Object;)Z
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

.method public abstract entries()Ljava/util/Collection;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Collection;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract keySet()Ljava/util/Set;
.end method

.method public abstract keys()Lcom/google/common/collect/iq;
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract putAll(Lcom/google/common/collect/hu;)Z
.end method

.method public abstract putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public abstract remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public abstract size()I
.end method

.method public abstract values()Ljava/util/Collection;
.end method
