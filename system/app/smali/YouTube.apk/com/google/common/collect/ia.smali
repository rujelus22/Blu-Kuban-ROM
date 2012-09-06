.class final Lcom/google/common/collect/ia;
.super Lcom/google/common/collect/iv;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/hz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hz;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/google/common/collect/ia;->b:Lcom/google/common/collect/hz;

    iput-object p2, p0, Lcom/google/common/collect/ia;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/iv;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/common/collect/ia;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/google/common/collect/ia;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
