.class final Lcom/google/common/collect/fw;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/RegularImmutableMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap$Values;)V
    .registers 3
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/common/collect/fw;->b:Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/fw;->a:I

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 192
    iget v0, p0, Lcom/google/common/collect/fw;->a:I

    iget-object v1, p0, Lcom/google/common/collect/fw;->b:Lcom/google/common/collect/RegularImmutableMap$Values;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/google/common/collect/fw;->b:Lcom/google/common/collect/RegularImmutableMap$Values;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/fw;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/fw;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0}, Lcom/google/common/collect/fw;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_21
.end method
