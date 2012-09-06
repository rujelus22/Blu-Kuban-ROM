.class Lcom/google/common/collect/Lists$TransformingSequentialList;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final fromList:Ljava/util/List;

.field final function:Lcom/google/common/base/v;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 362
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    .line 363
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->function:Lcom/google/common/base/v;

    .line 364
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 372
    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/google/common/collect/fp;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fp;-><init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingSequentialList;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
