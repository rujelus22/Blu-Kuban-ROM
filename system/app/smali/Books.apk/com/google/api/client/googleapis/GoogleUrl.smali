.class public Lcom/google/api/client/googleapis/GoogleUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "GoogleUrl.java"


# instance fields
.field public alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public prettyprint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/api/client/http/GenericUrl;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "encodedUrl"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 9
    .parameter "encodedServerUrl"
    .parameter "pathTemplate"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v3, Lcom/google/api/client/googleapis/GoogleUrl;

    invoke-direct {v3, p0}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, url:Lcom/google/api/client/googleapis/GoogleUrl;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v2, requestMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_16

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 107
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #value:Ljava/lang/Object;
    :cond_30
    invoke-static {p1, v2}, Lcom/google/api/client/googleapis/GoogleUrl;->expandUriTemplates(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/api/client/googleapis/GoogleUrl;->appendRawPath(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3, v2}, Lcom/google/api/client/googleapis/GoogleUrl;->putAll(Ljava/util/Map;)V

    .line 110
    return-object v3
.end method

.method static expandUriTemplates(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 14
    .parameter "pathUri"
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, variableMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v4, pathBuf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 130
    .local v1, cur:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 131
    .local v2, length:I
    :goto_c
    if-ge v1, v2, :cond_1e

    .line 132
    const/16 v7, 0x7b

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 133
    .local v3, next:I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_23

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .end local v3           #next:I
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 137
    .restart local v3       #next:I
    :cond_23
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v7, 0x7d

    add-int/lit8 v10, v3, 0x2

    invoke-virtual {p0, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 139
    .local v0, close:I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, varName:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .line 141
    if-eqz p1, :cond_62

    move v7, v8

    :goto_3d
    const-string v10, "no variable map supplied for parameterize path: %s"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v7, v10, v11}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 144
    .local v5, value:Ljava/lang/Object;
    if-eqz v5, :cond_64

    move v7, v8

    :goto_4d
    const-string v10, "missing required path parameter: %s"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v9

    invoke-static {v7, v10, v11}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .end local v5           #value:Ljava/lang/Object;
    :cond_62
    move v7, v9

    .line 141
    goto :goto_3d

    .restart local v5       #value:Ljava/lang/Object;
    :cond_64
    move v7, v9

    .line 144
    goto :goto_4d
.end method


# virtual methods
.method public clone()Lcom/google/api/client/googleapis/GoogleUrl;
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/GoogleUrl;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method
