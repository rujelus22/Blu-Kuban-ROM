.class public interface abstract Lcom/google/common/collect/km;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jv;


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
.end method

.method public abstract valueComparator()Ljava/util/Comparator;
.end method
