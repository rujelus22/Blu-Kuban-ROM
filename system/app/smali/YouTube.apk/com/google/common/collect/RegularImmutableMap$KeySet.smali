.class Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;
.source "SourceFile"


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .registers 4
    .parameter

    .prologue
    .line 229
    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/jn;

    move-result-object v0

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->access$100(Lcom/google/common/collect/RegularImmutableMap;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 231
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
