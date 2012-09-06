.class final Lcom/google/common/collect/ks;
.super Lcom/google/common/collect/ls;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 3
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/google/common/collect/ks;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 288
    instance-of v0, p1, Lcom/google/common/collect/ma;

    if-eqz v0, :cond_19

    .line 289
    check-cast p1, Lcom/google/common/collect/ma;

    .line 290
    iget-object v0, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 293
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 280
    new-instance v0, Lcom/google/common/collect/kr;

    iget-object v1, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/StandardTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/kr;-><init>(Lcom/google/common/collect/StandardTable;B)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 297
    instance-of v0, p1, Lcom/google/common/collect/ma;

    if-eqz v0, :cond_19

    .line 298
    check-cast p1, Lcom/google/common/collect/ma;

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 302
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/collect/ks;->a:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
