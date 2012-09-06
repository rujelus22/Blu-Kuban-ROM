.class final Lcom/google/common/collect/cn;
.super Lcom/google/common/collect/cw;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;

.field private c:Lcom/google/common/collect/ir;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/common/collect/cn;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/cw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 502
    invoke-super {p0}, Lcom/google/common/collect/cw;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    iput-object v0, p0, Lcom/google/common/collect/cn;->c:Lcom/google/common/collect/ir;

    iget-object v0, p0, Lcom/google/common/collect/cn;->c:Lcom/google/common/collect/ir;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/cn;->c:Lcom/google/common/collect/ir;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/cn;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/cn;->c:Lcom/google/common/collect/ir;

    invoke-interface {v2}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cn;->c:Lcom/google/common/collect/ir;

    .line 518
    return-void

    :cond_18
    move v0, v1

    .line 515
    goto :goto_6
.end method
