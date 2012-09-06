.class public abstract Lcom/google/common/collect/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
.end method

.method public maxValue()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 111
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public minValue()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 96
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
.end method

.method public abstract previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
.end method
