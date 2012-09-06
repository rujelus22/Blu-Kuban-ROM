.class final Lcom/google/common/collect/e;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 175
    return-void
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/common/collect/e;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/common/collect/e;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/google/common/collect/f;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/f;-><init>(Lcom/google/common/collect/e;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_7
    return v0

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Lcom/google/common/collect/AbstractBiMap;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$300(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
