.class final Lcom/google/common/collect/mi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/Iterator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/common/collect/mi;->c:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/mi;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/mi;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/collect/mi;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/common/collect/mi;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bp;

    new-instance v2, Lcom/google/common/collect/mo;

    iget-object v3, p0, Lcom/google/common/collect/mi;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/mi;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/common/collect/mo;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/lang/Object;IB)V

    return-object v2
.end method

.method public final remove()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/google/common/collect/mi;->a:Ljava/lang/Object;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/common/collect/mi;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/mi;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/mi;->a:Ljava/lang/Object;

    .line 303
    return-void

    :cond_14
    move v0, v1

    .line 300
    goto :goto_6
.end method
