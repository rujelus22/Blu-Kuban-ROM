.class Lcom/google/common/collect/u;
.super Lcom/google/common/collect/cP;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/t;


# direct methods
.method constructor <init>(Lcom/google/common/collect/t;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/common/collect/u;->b:Lcom/google/common/collect/t;

    iput-object p2, p0, Lcom/google/common/collect/u;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/cP;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/u;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/u;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 122
    if-nez v1, :cond_29

    .line 123
    iget-object v0, p0, Lcom/google/common/collect/u;->b:Lcom/google/common/collect/t;

    iget-object v0, v0, Lcom/google/common/collect/t;->c:Lcom/google/common/collect/s;

    iget-object v0, v0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/q;

    invoke-static {v0}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/u;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    if-eqz v0, :cond_29

    .line 125
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 128
    :goto_28
    return v0

    :cond_29
    move v0, v1

    goto :goto_28
.end method
