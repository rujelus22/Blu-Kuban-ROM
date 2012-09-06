.class Lcom/google/common/collect/cm;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/google/common/collect/cm;->a:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 784
    new-instance v0, Lcom/google/common/collect/cu;

    iget-object v1, p0, Lcom/google/common/collect/cm;->a:Lcom/google/common/collect/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/cu;-><init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V

    .line 785
    new-instance v1, Lcom/google/common/collect/cn;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cn;-><init>(Lcom/google/common/collect/cm;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/common/collect/cm;->a:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cM;->size()I

    move-result v0

    return v0
.end method
