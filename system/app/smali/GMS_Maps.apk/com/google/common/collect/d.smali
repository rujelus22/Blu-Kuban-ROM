.class Lcom/google/common/collect/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    iput-object p2, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    .line 309
    new-instance v1, Lcom/google/common/collect/e;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/d;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/common/collect/d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 334
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/google/common/collect/d;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 336
    iget-object v1, p0, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    iget-object v1, v1, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-static {v1, v0}, Lcom/google/common/collect/a;->b(Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 337
    return-void

    .line 333
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method
