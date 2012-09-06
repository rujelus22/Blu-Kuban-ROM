.class public interface abstract Lcom/google/common/base/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Comparable",
        "<-TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract contains(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enclose(Ljava/lang/Comparable;)Lcom/google/common/base/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enclosure(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract intersection(Lcom/google/common/base/Range;)Lcom/google/common/base/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)",
            "Lcom/google/common/base/Range",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract intersects(Lcom/google/common/base/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Range",
            "<TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isEmpty()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract max()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract min()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
