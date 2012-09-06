.class Lcom/google/common/collect/cC;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


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
    .line 358
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 359
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/cC;->a:Ljava/util/List;

    .line 360
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/D;

    iput-object v0, p0, Lcom/google/common/collect/cC;->b:Lcom/google/common/base/D;

    .line 361
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/cC;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/collect/cC;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/google/common/collect/cD;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cD;-><init>(Lcom/google/common/collect/cC;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/cC;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
