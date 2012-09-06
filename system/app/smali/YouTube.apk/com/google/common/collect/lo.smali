.class Lcom/google/common/collect/lo;
.super Lcom/google/common/collect/hf;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/hf;-><init>()V

    .line 992
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 959
    new-instance v0, Lcom/google/common/collect/lq;

    invoke-direct {v0, p0}, Lcom/google/common/collect/lq;-><init>(Lcom/google/common/collect/lo;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 939
    iget-object v0, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 939
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/lo;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_3
.end method
