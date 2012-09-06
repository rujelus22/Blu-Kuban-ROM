.class final Lcom/google/common/collect/ml;
.super Lcom/google/common/collect/by;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/common/collect/by;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    check-cast p1, Lcom/google/common/collect/TreeMultiset$Node;

    move-object v3, p2

    check-cast v3, Lcom/google/common/collect/TreeMultiset$Node;

    move-object v4, p3

    check-cast v4, Lcom/google/common/collect/TreeMultiset$Node;

    new-instance v0, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$Node;-><init>(Ljava/lang/Object;ILcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/TreeMultiset$Node;Lcom/google/common/collect/mh;)V

    return-object v0
.end method
