.class final Lcom/google/android/a/a/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/a/a/d/e;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/a/a/d/e;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/a/a/d/f;->a:Lcom/google/android/a/a/d/e;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/android/a/a/d/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/a/e/c;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 60
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/a/a/d/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v1, "screen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    if-nez v0, :cond_12

    move-object v0, v6

    .line 104
    :goto_11
    return-object v0

    .line 66
    :cond_12
    const-string v1, "accessType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_88

    move-result-object v1

    .line 67
    if-nez v1, :cond_1d

    move-object v0, v6

    .line 68
    goto :goto_11

    .line 71
    :cond_1d
    :try_start_1d
    invoke-static {v1}, Lcom/google/android/a/e/d;->a(Ljava/lang/String;)Lcom/google/android/a/e/d;
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_20} :catch_50
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_20} :catch_88

    move-result-object v1

    .line 79
    :try_start_21
    const-string v2, "name"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 82
    sget-object v2, Lcom/google/android/a/e/d;->a:Lcom/google/android/a/e/d;

    if-ne v1, v2, :cond_95

    .line 83
    const-string v1, "screenId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 84
    invoke-static {}, Lcom/google/android/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "We got a permanent screen without a screen id. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 85
    goto :goto_11

    .line 74
    :catch_50
    move-exception v0

    .line 75
    invoke-static {}, Lcom/google/android/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown access type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 76
    goto :goto_11

    .line 87
    :cond_69
    new-instance v1, Lcom/google/android/a/e/b;

    const-string v2, "screenId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/a/e/b;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v2, "loungeToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 90
    const-string v2, "loungeToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_82
    new-instance v0, Lcom/google/android/a/e/c;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/a/e/c;-><init>(Lcom/google/android/a/e/b;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_87} :catch_88

    goto :goto_11

    .line 102
    :catch_88
    move-exception v0

    .line 103
    invoke-static {}, Lcom/google/android/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error parsing screen "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 104
    goto/16 :goto_11

    .line 94
    :cond_95
    :try_start_95
    const-string v1, "loungeToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 95
    invoke-static {}, Lcom/google/android/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "We got a temporary screen without a loungeToken. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 96
    goto/16 :goto_11

    .line 99
    :cond_b6
    const-string v1, "loungeToken"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/google/android/a/e/c;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/a/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_c1} :catch_88

    goto/16 :goto_11

    :cond_c3
    move-object v2, v6

    goto :goto_82
.end method
