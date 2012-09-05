.class final Lcom/google/common/collect/cf;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/common/collect/cf;->d:Lcom/google/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/common/collect/cf;->a:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 185
    iget v0, p0, Lcom/google/common/collect/cf;->a:I

    if-gtz v0, :cond_1e

    .line 186
    iget-object v0, p0, Lcom/google/common/collect/cf;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/cf;->b:Ljava/lang/Object;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/cf;->a:I

    .line 190
    :cond_1e
    iget v0, p0, Lcom/google/common/collect/cf;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/cf;->a:I

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/cf;->b:Ljava/lang/Object;

    return-object v0
.end method
