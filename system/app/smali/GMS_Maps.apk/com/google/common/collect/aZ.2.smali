.class final Lcom/google/common/collect/aZ;
.super Lcom/google/common/collect/y;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3555
    iput-object p1, p0, Lcom/google/common/collect/aZ;->c:Lcom/google/common/collect/X;

    invoke-direct {p0}, Lcom/google/common/collect/y;-><init>()V

    .line 3556
    iput-object p2, p0, Lcom/google/common/collect/aZ;->a:Ljava/lang/Object;

    .line 3557
    iput-object p3, p0, Lcom/google/common/collect/aZ;->b:Ljava/lang/Object;

    .line 3558
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3570
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_20

    .line 3571
    check-cast p1, Ljava/util/Map$Entry;

    .line 3572
    iget-object v1, p0, Lcom/google/common/collect/aZ;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/common/collect/aZ;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 3575
    :cond_20
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/google/common/collect/aZ;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/google/common/collect/aZ;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/google/common/collect/aZ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/aZ;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/google/common/collect/aZ;->c:Lcom/google/common/collect/X;

    iget-object v1, p0, Lcom/google/common/collect/aZ;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3585
    iput-object p1, p0, Lcom/google/common/collect/aZ;->b:Ljava/lang/Object;

    .line 3586
    return-object v0
.end method
