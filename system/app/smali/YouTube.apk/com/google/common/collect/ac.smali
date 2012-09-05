.class final Lcom/google/common/collect/ac;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ab;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/ab;)V
    .registers 3
    .parameter

    .prologue
    .line 994
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/ab;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ab;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    iget-object v0, v0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1015
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1005
    instance-of v0, p1, Lcom/google/common/collect/fk;

    if-nez v0, :cond_7

    move v0, v1

    .line 1010
    :goto_6
    return v0

    .line 1008
    :cond_7
    check-cast p1, Lcom/google/common/collect/fk;

    .line 1009
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    iget-object v0, v0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1010
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/fk;->b()I

    move-result v2

    if-ne v0, v2, :cond_29

    const/4 v0, 0x1

    goto :goto_6

    :cond_29
    move v0, v1

    goto :goto_6
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 996
    new-instance v0, Lcom/google/common/collect/z;

    iget-object v1, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    iget-object v1, v1, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ac;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    iget-object v0, v0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    check-cast p1, Lcom/google/common/collect/fk;

    invoke-interface {p1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/common/collect/ac;->a:Lcom/google/common/collect/ab;

    iget-object v0, v0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/AbstractMultimap;

    #getter for: Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
