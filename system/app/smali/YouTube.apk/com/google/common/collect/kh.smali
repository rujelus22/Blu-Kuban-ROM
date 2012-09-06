.class final Lcom/google/common/collect/kh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Lcom/google/common/collect/ir;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 35
    if-nez p0, :cond_8

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_8
    invoke-interface {p0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
