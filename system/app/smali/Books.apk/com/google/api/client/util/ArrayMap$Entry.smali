.class final Lcom/google/api/client/util/ArrayMap$Entry;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/google/api/client/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ArrayMap;I)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 400
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iput-object p1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput p2, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    .line 402
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    if-ne p0, p1, :cond_5

    .line 430
    :cond_4
    :goto_4
    return v1

    .line 426
    :cond_5
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_b

    move v1, v2

    .line 427
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 429
    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    .local v0, other:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/ArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 418
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, this:Lcom/google/api/client/util/ArrayMap$Entry;,"Lcom/google/api/client/util/ArrayMap<TK;TV;>.Entry;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap$Entry;->this$0:Lcom/google/api/client/util/ArrayMap;

    iget v1, p0, Lcom/google/api/client/util/ArrayMap$Entry;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
