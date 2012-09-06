.class final Lcom/google/common/collect/g;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/common/collect/g;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    .line 230
    iget-object v0, p0, Lcom/google/common/collect/g;->b:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->inverse:Lcom/google/common/collect/AbstractBiMap;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/g;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/collect/g;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/g;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/g;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/common/collect/g;->b:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/google/common/collect/h;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/h;-><init>(Lcom/google/common/collect/g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/common/collect/g;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/g;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
