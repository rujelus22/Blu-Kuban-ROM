.class public final Ldq;
.super Ldr;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr",
        "<",
        "Lcz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcz;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 16
    :try_start_0
    const-string v0, "hash"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v2, "settings"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 20
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 22
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_15

    .line 25
    :catch_29
    move-exception v0

    .line 26
    new-instance v1, Leq;

    invoke-direct {v1, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 24
    :cond_30
    :try_start_30
    new-instance v2, Lcz;

    invoke-direct {v2, v0, v1}, Lcz;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_35} :catch_29

    return-object v2
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p1}, Ldq;->b(Lorg/json/JSONObject;)Lcz;

    move-result-object v0

    return-object v0
.end method
