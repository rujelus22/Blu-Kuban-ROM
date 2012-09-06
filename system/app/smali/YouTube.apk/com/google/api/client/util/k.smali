.class final Lcom/google/api/client/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic a:Lcom/google/api/client/util/j;

.field private b:Ljava/lang/Object;

.field private final c:Lcom/google/api/client/util/n;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/j;Lcom/google/api/client/util/n;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/api/client/util/k;->a:Lcom/google/api/client/util/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/google/api/client/util/k;->c:Lcom/google/api/client/util/n;

    .line 203
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/k;->b:Ljava/lang/Object;

    .line 204
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    if-ne p0, p1, :cond_5

    .line 235
    :cond_4
    :goto_4
    return v0

    .line 231
    :cond_5
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_b

    move v0, v1

    .line 232
    goto :goto_4

    .line 234
    :cond_b
    check-cast p1, Ljava/util/Map$Entry;

    .line 235
    iget-object v2, p0, Lcom/google/api/client/util/k;->c:Lcom/google/api/client/util/n;

    invoke-virtual {v2}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/google/api/client/util/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/api/client/util/k;->c:Lcom/google/api/client/util/n;

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/api/client/util/k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/api/client/util/k;->c:Lcom/google/api/client/util/n;

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/k;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/client/util/k;->b:Ljava/lang/Object;

    .line 216
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/util/k;->b:Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/google/api/client/util/k;->c:Lcom/google/api/client/util/n;

    iget-object v2, p0, Lcom/google/api/client/util/k;->a:Lcom/google/api/client/util/j;

    iget-object v2, v2, Lcom/google/api/client/util/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    return-object v0
.end method
