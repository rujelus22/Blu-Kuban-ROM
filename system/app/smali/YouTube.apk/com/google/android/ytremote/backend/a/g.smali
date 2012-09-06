.class final Lcom/google/android/ytremote/backend/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/backend/a/f;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/ytremote/backend/a/f;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/ytremote/backend/a/g;->a:Lcom/google/android/ytremote/backend/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/google/android/ytremote/backend/a/g;->b:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/ytremote/model/CloudScreen;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 60
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/a/g;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, "screen"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    if-nez v1, :cond_11

    .line 104
    :cond_10
    :goto_10
    return-object v0

    .line 66
    :cond_11
    const-string v2, "accessType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_51

    move-result-object v2

    .line 67
    if-eqz v2, :cond_10

    .line 71
    :try_start_1a
    invoke-static {v2}, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->fromString(Ljava/lang/String;)Lcom/google/android/ytremote/model/CloudScreen$AccessType;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1d} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1d} :catch_51

    move-result-object v2

    .line 79
    :try_start_1e
    const-string v3, "name"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    const-string v4, "loungeToken"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    sget-object v5, Lcom/google/android/ytremote/model/CloudScreen$AccessType;->PERMANENT:Lcom/google/android/ytremote/model/CloudScreen$AccessType;

    if-ne v2, v5, :cond_95

    .line 84
    const-string v2, "screenId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 85
    invoke-static {}, Lcom/google/android/ytremote/backend/a/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "We got a permanent screen without a screen id. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_50} :catch_51

    goto :goto_10

    .line 102
    :catch_51
    move-exception v1

    .line 103
    invoke-static {}, Lcom/google/android/ytremote/backend/a/f;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error parsing screen "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 74
    :catch_5c
    move-exception v1

    .line 75
    :try_start_5d
    invoke-static {}, Lcom/google/android/ytremote/backend/a/f;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown access type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 88
    :cond_74
    new-instance v5, Lcom/google/android/ytremote/model/ScreenId;

    const-string v2, "screenId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/android/ytremote/model/ScreenId;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v2, "loungeToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 91
    new-instance v1, Lcom/google/android/ytremote/model/LoungeToken;

    invoke-direct {v1, v4}, Lcom/google/android/ytremote/model/LoungeToken;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 93
    :goto_8d
    new-instance v1, Lcom/google/android/ytremote/model/CloudScreen;

    invoke-direct {v1, v5, v3, v2}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/ScreenId;Ljava/lang/String;Lcom/google/android/ytremote/model/LoungeToken;)V

    move-object v0, v1

    goto/16 :goto_10

    .line 95
    :cond_95
    const-string v2, "loungeToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 96
    invoke-static {}, Lcom/google/android/ytremote/backend/a/f;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "We got a temporary screen without a loungeToken. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 99
    :cond_b5
    new-instance v2, Lcom/google/android/ytremote/model/TemporaryAccessToken;

    invoke-direct {v2, v4}, Lcom/google/android/ytremote/model/TemporaryAccessToken;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/google/android/ytremote/model/CloudScreen;

    invoke-direct {v1, v2, v3}, Lcom/google/android/ytremote/model/CloudScreen;-><init>(Lcom/google/android/ytremote/model/TemporaryAccessToken;Ljava/lang/String;)V
    :try_end_bf
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_bf} :catch_51

    move-object v0, v1

    goto/16 :goto_10

    :cond_c2
    move-object v2, v0

    goto :goto_8d
.end method
