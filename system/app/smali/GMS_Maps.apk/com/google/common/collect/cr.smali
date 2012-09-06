.class Lcom/google/common/collect/cr;
.super Lcom/google/common/collect/y;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/cq;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cq;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/google/common/collect/cr;->b:Lcom/google/common/collect/cq;

    iput-object p2, p0, Lcom/google/common/collect/cr;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/common/collect/cr;->b:Lcom/google/common/collect/cq;

    iget-object v0, v0, Lcom/google/common/collect/cq;->b:Lcom/google/common/collect/cp;

    iget-object v0, v0, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/cj;

    iget-object v1, p0, Lcom/google/common/collect/cr;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/cj;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/common/collect/cr;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/google/common/collect/cr;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
