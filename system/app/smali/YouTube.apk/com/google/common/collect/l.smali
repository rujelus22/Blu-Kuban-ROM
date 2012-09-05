.class final Lcom/google/common/collect/l;
.super Lcom/google/common/collect/fm;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/common/collect/l;->b:Lcom/google/common/collect/k;

    iput-object p2, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/fm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/l;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 116
    if-nez v1, :cond_29

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/l;->b:Lcom/google/common/collect/k;

    iget-object v0, v0, Lcom/google/common/collect/k;->c:Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/l;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    if-eqz v0, :cond_29

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 122
    :goto_28
    return v0

    :cond_29
    move v0, v1

    goto :goto_28
.end method
