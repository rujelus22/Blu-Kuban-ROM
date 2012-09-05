.class public final Lcom/google/api/client/a/a;
.super Lcom/google/api/client/http/f;
.source "SourceFile"


# instance fields
.field public alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field public fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field public key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field public prettyprint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field public userip:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/api/client/http/f;-><init>()V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/api/client/http/f;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/a;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v1, Lcom/google/api/client/a/a;

    invoke-direct {v1, p0}, Lcom/google/api/client/a/a;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-static {p2}, Lcom/google/api/client/util/j;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 103
    if-eqz v4, :cond_16

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 107
    :cond_30
    invoke-static {p1, v2}, Lcom/google/api/client/a/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4e

    invoke-static {v0}, Lcom/google/api/client/http/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    if-eqz v0, :cond_4c

    iget-object v0, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_4c
    iput-object v3, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    .line 109
    :cond_4e
    :goto_4e
    invoke-virtual {v1, v2}, Lcom/google/api/client/a/a;->putAll(Ljava/util/Map;)V

    .line 110
    return-object v1

    .line 107
    :cond_52
    iget-object v0, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/api/client/http/f;->d:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4e
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v2

    .line 131
    :goto_c
    if-ge v0, v5, :cond_1e

    .line 132
    const/16 v3, 0x7b

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 133
    const/4 v6, -0x1

    if-ne v3, v6, :cond_23

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_23
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v0, 0x7d

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 139
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 140
    add-int/lit8 v3, v0, 0x1

    .line 141
    if-eqz p1, :cond_63

    move v0, v1

    :goto_3d
    const-string v7, "no variable map supplied for parameterize path: %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 144
    if-eqz v7, :cond_65

    move v0, v1

    :goto_4d
    const-string v8, "missing required path parameter: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v2

    invoke-static {v0, v8, v9}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 146
    goto :goto_c

    :cond_63
    move v0, v2

    .line 141
    goto :goto_3d

    :cond_65
    move v0, v2

    .line 144
    goto :goto_4d
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/api/client/http/f;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/api/client/http/f;->a()Lcom/google/api/client/http/f;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/a/a;

    return-object v0
.end method

.method public final synthetic b()Lcom/google/api/client/util/p;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/api/client/http/f;->a()Lcom/google/api/client/http/f;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/a/a;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/google/api/client/http/f;->a()Lcom/google/api/client/http/f;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/a/a;

    return-object v0
.end method
