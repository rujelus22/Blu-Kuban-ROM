.class final Lcom/google/common/collect/mh;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/BstSide;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/bp;Lcom/google/common/collect/BstSide;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/common/collect/mh;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p3, p0, Lcom/google/common/collect/mh;->a:Lcom/google/common/collect/BstSide;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 272
    check-cast p1, Lcom/google/common/collect/bp;

    iget-object v0, p0, Lcom/google/common/collect/mh;->a:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/bp;->a(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/common/collect/mh;->a:Lcom/google/common/collect/BstSide;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/bp;->b(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bp;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/mh;->b:Lcom/google/common/collect/TreeMultiset;

    #getter for: Lcom/google/common/collect/TreeMultiset;->range:Lcom/google/common/collect/GeneralRange;
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->access$400(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/GeneralRange;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/bp;->b()Lcom/google/common/collect/bw;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/GeneralRange;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v1

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
