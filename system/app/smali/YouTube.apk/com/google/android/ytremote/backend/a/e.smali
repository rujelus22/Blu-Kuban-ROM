.class final Lcom/google/android/ytremote/backend/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/a/d;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/backend/a/d;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/ytremote/backend/a/e;->a:Lcom/google/android/ytremote/backend/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/android/ytremote/backend/a/e;->b:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/a/e;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, "screens"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 89
    :cond_14
    :goto_14
    return-object v0

    .line 64
    :cond_15
    const-string v2, "screens"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 65
    if-nez v3, :cond_22

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    .line 68
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    .line 70
    :goto_28
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2b} :catch_7e

    move-result v1

    if-ge v2, v1, :cond_14

    .line 72
    :try_start_2e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 73
    const-string v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 75
    if-eqz v5, :cond_4c

    const-string v6, "online"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 79
    :cond_4c
    const-string v5, "loungeToken"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 80
    new-instance v5, Lcom/google/android/ytremote/model/LoungeToken;

    const-string v6, "loungeToken"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/google/android/ytremote/model/LoungeToken;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_62} :catch_66

    .line 70
    :cond_62
    :goto_62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_28

    .line 82
    :catch_66
    move-exception v1

    .line 83
    :try_start_67
    invoke-static {}, Lcom/google/android/ytremote/backend/a/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing screen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_7d} :catch_7e

    goto :goto_62

    .line 87
    :catch_7e
    move-exception v0

    .line 88
    invoke-static {}, Lcom/google/android/ytremote/backend/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error parsing screen status "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_14
.end method
