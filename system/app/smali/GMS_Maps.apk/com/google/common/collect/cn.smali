.class Lcom/google/common/collect/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/cm;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cm;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/google/common/collect/cn;->b:Lcom/google/common/collect/cm;

    iput-object p2, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/common/collect/cn;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 797
    return-void
.end method
