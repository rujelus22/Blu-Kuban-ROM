.class Lcom/google/common/collect/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/g;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/g;

    iput-object p2, p0, Lcom/google/common/collect/h;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/common/collect/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/h;->a:Ljava/util/Map$Entry;

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/common/collect/h;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 210
    iget-object v0, p0, Lcom/google/common/collect/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/common/collect/h;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 212
    iget-object v1, p0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/g;

    iget-object v1, v1, Lcom/google/common/collect/g;->a:Lcom/google/common/collect/a;

    invoke-static {v1, v0}, Lcom/google/common/collect/a;->b(Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 213
    return-void

    .line 209
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method
