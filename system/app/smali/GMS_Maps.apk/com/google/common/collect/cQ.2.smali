.class final Lcom/google/common/collect/cQ;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/collect/cM;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cM;)V
    .registers 2
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    .line 575
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 578
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 582
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0}, Lcom/google/common/collect/cM;->clear()V

    .line 587
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0, p1}, Lcom/google/common/collect/cM;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0, p1}, Lcom/google/common/collect/cM;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0}, Lcom/google/common/collect/cM;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 603
    new-instance v1, Lcom/google/common/collect/cR;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cR;-><init>(Lcom/google/common/collect/cQ;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0, p1}, Lcom/google/common/collect/cM;->a(Ljava/lang/Object;)I

    move-result v0

    .line 621
    if-lez v0, :cond_f

    .line 622
    iget-object v1, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/cM;->b(Ljava/lang/Object;I)I

    .line 623
    const/4 v0, 0x1

    .line 625
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public size()I
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/common/collect/cQ;->a:Lcom/google/common/collect/cM;

    invoke-interface {v0}, Lcom/google/common/collect/cM;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
