.class Lcom/google/common/collect/cB;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/List;

.field final b:Lcom/google/common/base/D;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/D;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 441
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    .line 442
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/D;

    iput-object v0, p0, Lcom/google/common/collect/cB;->b:Lcom/google/common/base/D;

    .line 443
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 446
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/common/collect/cB;->b:Lcom/google/common/base/D;

    iget-object v1, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/common/collect/cB;->b:Lcom/google/common/base/D;

    iget-object v1, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/D;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/common/collect/cB;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
