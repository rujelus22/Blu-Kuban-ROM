.class final Lcom/google/common/collect/co;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/ImmutableSortedMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$Values;)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 549
    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->access$400(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    #getter for: Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->access$300(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/co;->a:I

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 551
    iget v0, p0, Lcom/google/common/collect/co;->a:I

    iget-object v1, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap$Values;->access$400(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    #getter for: Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$500(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/common/collect/co;->b:Lcom/google/common/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/google/common/collect/ImmutableSortedMap$Values;->map:Lcom/google/common/collect/ImmutableSortedMap;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap$Values;->access$400(Lcom/google/common/collect/ImmutableSortedMap$Values;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    #getter for: Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->access$200(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/co;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/co;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    invoke-virtual {p0}, Lcom/google/common/collect/co;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_24
.end method
