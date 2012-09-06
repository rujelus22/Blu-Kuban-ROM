.class Lcom/google/common/collect/RegularImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 259
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 267
    new-instance v0, Lcom/google/common/collect/jo;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;
    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/jn;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/jo;-><init>(Lcom/google/common/collect/RegularImmutableMap$Values;I)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$Values;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/jn;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
