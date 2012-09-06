.class final Lcom/google/common/collect/jp;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMultiset;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/common/collect/jp;->b:Lcom/google/common/collect/RegularImmutableMultiset;

    iput-object p2, p0, Lcom/google/common/collect/jp;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/common/collect/jp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/jp;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method
