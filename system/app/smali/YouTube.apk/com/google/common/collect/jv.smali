.class public interface abstract Lcom/google/common/collect/jv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hu;


# virtual methods
.method public abstract entries()Ljava/util/Set;
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/util/Set;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
.end method
