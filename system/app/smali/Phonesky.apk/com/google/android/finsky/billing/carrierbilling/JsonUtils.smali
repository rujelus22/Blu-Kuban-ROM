.class public Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .parameter "jsonResult"
    .parameter "key"

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 111
    :goto_8
    return-object v1

    .line 110
    :catch_9
    move-exception v0

    .line 111
    .local v0, jsone:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .parameter "jsonResult"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_10

    move-result-object v2

    .line 61
    :goto_d
    return-object v2

    .line 58
    :catch_e
    move-exception v1

    .line 59
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_d

    .line 60
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :catch_10
    move-exception v0

    .line 61
    .local v0, je:Lorg/json/JSONException;
    goto :goto_d
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .registers 7
    .parameter "jsonResult"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 73
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_10

    move-result-object v2

    .line 77
    :goto_d
    return-object v2

    .line 74
    :catch_e
    move-exception v1

    .line 75
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_d

    .line 76
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :catch_10
    move-exception v0

    .line 77
    .local v0, jsone:Lorg/json/JSONException;
    goto :goto_d
.end method

.method public static getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .parameter "jsonResult"
    .parameter "key"

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 45
    :goto_4
    return-object v1

    .line 44
    :catch_5
    move-exception v0

    .line 45
    .local v0, je:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "jsonResult"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 90
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, value:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v3

    if-eqz v3, :cond_e

    move-object v1, v2

    .line 97
    .end local v1           #value:Ljava/lang/String;
    :cond_e
    :goto_e
    return-object v1

    .line 96
    :catch_f
    move-exception v0

    .local v0, jsone:Lorg/json/JSONException;
    move-object v1, v2

    .line 97
    goto :goto_e
.end method

.method public static toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    .local v0, inputIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v3, resultObj:Lorg/json/JSONObject;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_23

    .line 29
    check-cast v2, Lorg/json/JSONObject;

    .end local v2           #o:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/JsonUtils;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 33
    .end local v1           #key:Ljava/lang/String;
    :cond_2b
    return-object v3
.end method
