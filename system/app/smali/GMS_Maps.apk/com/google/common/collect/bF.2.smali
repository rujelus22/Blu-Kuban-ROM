.class Lcom/google/common/collect/bF;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/bE;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bE;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/common/collect/bF;->a:Lcom/google/common/collect/bE;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/common/collect/bF;->a:Lcom/google/common/collect/bE;

    iget-object v1, p0, Lcom/google/common/collect/bF;->a:Lcom/google/common/collect/bE;

    iget-object v1, v1, Lcom/google/common/collect/bE;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
