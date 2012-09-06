.class Lcom/google/common/collect/cp;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/cj;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/cj;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/google/common/collect/cp;-><init>(Lcom/google/common/collect/cj;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 874
    new-instance v0, Lcom/google/common/collect/cs;

    iget-object v1, p0, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/cs;-><init>(Lcom/google/common/collect/cj;Lcom/google/common/collect/ck;)V

    .line 875
    new-instance v1, Lcom/google/common/collect/cq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cq;-><init>(Lcom/google/common/collect/cp;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/cj;

    invoke-static {v0}, Lcom/google/common/collect/cj;->c(Lcom/google/common/collect/cj;)Lcom/google/common/collect/cM;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/cM;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
