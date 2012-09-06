.class final Lcom/google/common/collect/lm;
.super Lcom/google/common/collect/cy;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/ll;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ll;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/common/collect/lm;->b:Lcom/google/common/collect/ll;

    iput-object p2, p0, Lcom/google/common/collect/lm;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/cy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/common/collect/lm;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/common/collect/lm;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 478
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_24

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/cy;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/google/common/collect/cy;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 473
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/collect/cy;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
