.class final Lcom/google/api/client/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/a;

.field private b:I


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/api/client/util/b;->a:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput p2, p0, Lcom/google/api/client/util/b;->b:I

    .line 402
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    if-ne p0, p1, :cond_5

    .line 430
    :cond_4
    :goto_4
    return v0

    .line 426
    :cond_5
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_b

    move v0, v1

    .line 427
    goto :goto_4

    .line 429
    :cond_b
    check-cast p1, Ljava/util/Map$Entry;

    .line 430
    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/api/client/util/b;->a:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->b:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/api/client/util/b;->a:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->b:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/api/client/util/b;->a:Lcom/google/api/client/util/a;

    iget v1, p0, Lcom/google/api/client/util/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
