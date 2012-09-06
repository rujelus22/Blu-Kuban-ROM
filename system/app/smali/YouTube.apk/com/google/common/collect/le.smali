.class final Lcom/google/common/collect/le;
.super Lcom/google/common/collect/hf;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/lh;

.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 2
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/hf;-><init>()V

    .line 1112
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/google/common/collect/le;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1034
    new-instance v0, Lcom/google/common/collect/lf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/lf;-><init>(Lcom/google/common/collect/le;)V

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/google/common/collect/le;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/collect/le;->b:Lcom/google/common/collect/StandardTable;

    #calls: Lcom/google/common/collect/StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    invoke-static {v0, p1}, Lcom/google/common/collect/StandardTable;->access$1100(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/lh;

    .line 1045
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/lh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/lh;-><init>(Lcom/google/common/collect/le;B)V

    iput-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/lh;

    :cond_c
    return-object v0
.end method
