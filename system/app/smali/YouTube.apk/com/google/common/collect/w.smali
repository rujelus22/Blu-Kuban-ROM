.class final Lcom/google/common/collect/w;
.super Lcom/google/common/collect/hd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/v;

    invoke-direct {p0}, Lcom/google/common/collect/hd;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/v;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/v;

    iget-object v0, v0, Lcom/google/common/collect/v;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cf;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1251
    new-instance v0, Lcom/google/common/collect/x;

    iget-object v1, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/v;

    invoke-direct {v0, v1}, Lcom/google/common/collect/x;-><init>(Lcom/google/common/collect/v;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lcom/google/common/collect/w;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1262
    const/4 v0, 0x0

    .line 1266
    :goto_7
    return v0

    .line 1264
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1265
    iget-object v0, p0, Lcom/google/common/collect/w;->a:Lcom/google/common/collect/v;

    iget-object v0, v0, Lcom/google/common/collect/v;->c:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    .line 1266
    const/4 v0, 0x1

    goto :goto_7
.end method
