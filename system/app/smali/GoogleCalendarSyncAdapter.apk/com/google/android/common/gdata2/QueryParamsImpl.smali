.class public Lcom/google/android/common/gdata2/QueryParamsImpl;
.super Lcom/google/wireless/gdata2/client/QueryParams;
.source "QueryParamsImpl.java"


# instance fields
.field private final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/wireless/gdata2/client/QueryParams;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "feedUrl"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/common/gdata2/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 83
    .end local p1
    :goto_12
    return-object p1

    .line 43
    .restart local p1
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/common/gdata2/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_49

    .line 44
    iget-object v8, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 45
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cannot set both an entry ID and other query paramters."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 48
    :cond_2d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/common/gdata2/QueryParamsImpl;->getEntryId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    .line 52
    :cond_49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v8, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 55
    .local v4, params:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 56
    .local v1, first:Z
    const-string v8, "?"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 57
    const/4 v1, 0x0

    .line 61
    :goto_61
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, param:Ljava/lang/String;
    if-eqz v1, :cond_95

    .line 63
    const/4 v1, 0x0

    .line 67
    :goto_74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const/16 v8, 0x3d

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    iget-object v8, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 70
    .local v7, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, encodedValue:Ljava/lang/String;
    :try_start_85
    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_85 .. :try_end_8a} :catch_9b

    move-result-object v0

    .line 81
    :goto_8b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 59
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #param:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_8f
    const/16 v8, 0x3f

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 65
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #param:Ljava/lang/String;
    :cond_95
    const/16 v8, 0x26

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 74
    .restart local v0       #encodedValue:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    :catch_9b
    move-exception v6

    .line 76
    .local v6, uee:Ljava/io/UnsupportedEncodingException;
    const-string v8, "QueryParamsImpl"

    const-string v9, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v8, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8b

    .line 83
    .end local v0           #encodedValue:Ljava/lang/String;
    .end local v3           #param:Ljava/lang/String;
    .end local v6           #uee:Ljava/io/UnsupportedEncodingException;
    .end local v7           #value:Ljava/lang/String;
    :cond_a8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_12
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "param"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/common/gdata2/QueryParamsImpl;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
