.class abstract Lcom/google/common/collect/mp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bs;


# instance fields
.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/common/collect/mp;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/TreeMultiset;)V

    return-void
.end method


# virtual methods
.method abstract a(I)I
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 457
    check-cast p2, Lcom/google/common/collect/TreeMultiset$Node;

    #calls: Lcom/google/common/collect/TreeMultiset;->countOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    invoke-static {p2}, Lcom/google/common/collect/TreeMultiset;->access$1200(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/mp;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_12

    invoke-static {p2}, Lcom/google/common/collect/BstModificationResult;->a(Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    if-nez v1, :cond_19

    invoke-static {p2, v3}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_11

    :cond_19
    if-nez v0, :cond_25

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-direct {v0, p1, v1, v3}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/mh;)V

    invoke-static {v3, v0}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_11

    :cond_25
    new-instance v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p2}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2, v1, v3}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/mh;)V

    invoke-static {p2, v0}, Lcom/google/common/collect/BstModificationResult;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v0

    goto :goto_11
.end method
