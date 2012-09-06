.class final Lcom/google/common/collect/m;
.super Lcom/google/common/collect/iv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/l;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/common/collect/m;->b:Lcom/google/common/collect/l;

    iput-object p2, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    .line 114
    if-nez v1, :cond_27

    .line 115
    iget-object v0, p0, Lcom/google/common/collect/m;->b:Lcom/google/common/collect/l;

    iget-object v0, v0, Lcom/google/common/collect/l;->c:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/m;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 116
    if-eqz v0, :cond_27

    .line 117
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v0

    .line 120
    :goto_26
    return v0

    :cond_27
    move v0, v1

    goto :goto_26
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/collect/m;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
