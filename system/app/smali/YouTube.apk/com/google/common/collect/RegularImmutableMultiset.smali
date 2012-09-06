.class Lcom/google/common/collect/RegularImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# instance fields
.field private final transient map:Lcom/google/common/collect/ImmutableMap;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    .line 41
    iput p2, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/common/collect/jp;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/jp;-><init>(Lcom/google/common/collect/RegularImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
