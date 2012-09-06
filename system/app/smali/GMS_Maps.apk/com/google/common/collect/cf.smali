.class final Lcom/google/common/collect/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field b:Ljava/util/Iterator;

.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    invoke-static {}, Lcom/google/common/collect/bZ;->a()Lcom/google/common/collect/dE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/cf;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 525
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/cf;->a:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 526
    iget-object v0, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/cf;->a:Ljava/util/Iterator;

    goto :goto_0

    .line 528
    :cond_21
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/cf;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 533
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 535
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/cf;->a:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/cf;->b:Ljava/util/Iterator;

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/cf;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/cf;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/cf;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cf;->b:Ljava/util/Iterator;

    .line 544
    return-void

    .line 540
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
