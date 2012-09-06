.class final Lcom/google/android/ytremote/backend/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/a/a;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/backend/a/a;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/ytremote/backend/a/b;->a:Lcom/google/android/ytremote/backend/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/google/android/ytremote/backend/a/b;->b:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 8

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/a/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "screens"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 84
    :cond_13
    :goto_13
    return-object v0

    .line 61
    :cond_14
    const-string v1, "screens"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 62
    if-nez v2, :cond_21

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_13

    .line 65
    :cond_21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2a} :catch_76

    move-result v3

    if-ge v1, v3, :cond_13

    .line 69
    :try_start_2d
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    const-string v4, "screenId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string v4, "loungeToken"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 67
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 74
    :cond_44
    new-instance v4, Lcom/google/android/ytremote/model/ScreenId;

    const-string v5, "screenId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/ytremote/model/ScreenId;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v5, Lcom/google/android/ytremote/model/LoungeToken;

    const-string v6, "loungeToken"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/google/android/ytremote/model/LoungeToken;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_5d} :catch_5e

    goto :goto_41

    .line 77
    :catch_5e
    move-exception v3

    .line 78
    :try_start_5f
    invoke-static {}, Lcom/google/android/ytremote/backend/a/a;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing screen "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_75} :catch_76

    goto :goto_41

    .line 82
    :catch_76
    move-exception v0

    .line 83
    invoke-static {}, Lcom/google/android/ytremote/backend/a/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error parsing screen status "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_13
.end method
