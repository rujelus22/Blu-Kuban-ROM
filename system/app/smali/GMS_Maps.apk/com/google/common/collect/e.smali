.class Lcom/google/common/collect/e;
.super Lcom/google/common/collect/bi;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/common/collect/e;->b:Lcom/google/common/collect/d;

    iput-object p2, p0, Lcom/google/common/collect/e;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/bi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/common/collect/e;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 316
    iget-object v0, p0, Lcom/google/common/collect/e;->b:Lcom/google/common/collect/d;

    iget-object v0, v0, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/google/common/collect/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 327
    :goto_19
    return-object p1

    .line 321
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/e;->b:Lcom/google/common/collect/d;

    iget-object v0, v0, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    iget-object v0, v0, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_27
    const-string v3, "value already present: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/P;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/google/common/collect/e;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget-object v2, p0, Lcom/google/common/collect/e;->b:Lcom/google/common/collect/d;

    iget-object v2, v2, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    iget-object v2, v2, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/google/common/base/P;->b(ZLjava/lang/Object;)V

    .line 326
    iget-object v2, p0, Lcom/google/common/collect/e;->b:Lcom/google/common/collect/d;

    iget-object v2, v2, Lcom/google/common/collect/d;->c:Lcom/google/common/collect/c;

    iget-object v2, v2, Lcom/google/common/collect/c;->b:Lcom/google/common/collect/a;

    invoke-virtual {p0}, Lcom/google/common/collect/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, p1}, Lcom/google/common/collect/a;->a(Lcom/google/common/collect/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 327
    goto :goto_19

    :cond_5c
    move v0, v2

    .line 321
    goto :goto_27
.end method
