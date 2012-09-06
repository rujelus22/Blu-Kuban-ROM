.class Lcom/google/common/collect/c;
.super Lcom/google/common/collect/bk;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/a;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/a;)V
    .registers 3
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-static {v0}, Lcom/google/common/collect/a;->a(Lcom/google/common/collect/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/common/collect/c;-><init>(Lcom/google/common/collect/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/collect/c;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0}, Lcom/google/common/collect/a;->clear()V

    .line 285
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/common/collect/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/collect/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    new-instance v1, Lcom/google/common/collect/d;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/collect/c;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 289
    const/4 v0, 0x0

    .line 293
    :goto_9
    return v0

    .line 291
    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    .line 292
    iget-object v0, p0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-static {v0}, Lcom/google/common/collect/a;->b(Lcom/google/common/collect/a;)Lcom/google/common/collect/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/a;->a(Lcom/google/common/collect/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/common/collect/c;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
