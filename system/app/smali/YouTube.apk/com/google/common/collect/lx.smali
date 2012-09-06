.class final Lcom/google/common/collect/lx;
.super Lcom/google/common/collect/cy;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/lw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lw;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/common/collect/lx;->b:Lcom/google/common/collect/lw;

    iput-object p2, p0, Lcom/google/common/collect/lx;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/cy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .registers 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/common/collect/lx;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/common/collect/lx;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/common/collect/lx;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/lx;->b:Lcom/google/common/collect/lw;

    iget-object v1, v1, Lcom/google/common/collect/lw;->b:Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;

    iget-object v1, v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
