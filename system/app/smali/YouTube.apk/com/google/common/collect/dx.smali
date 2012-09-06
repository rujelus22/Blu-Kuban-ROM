.class final Lcom/google/common/collect/dx;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/mt;

.field final synthetic b:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/mt;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/common/collect/dx;->b:Lcom/google/common/collect/ImmutableSortedMap;

    iput-object p2, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/mt;

    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/mt;

    invoke-virtual {v0}, Lcom/google/common/collect/mt;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/common/collect/dx;->a:Lcom/google/common/collect/mt;

    invoke-virtual {v0}, Lcom/google/common/collect/mt;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
