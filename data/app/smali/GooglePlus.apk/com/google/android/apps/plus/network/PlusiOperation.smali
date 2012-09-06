.class public abstract Lcom/google/android/apps/plus/network/PlusiOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation;
.source "PlusiOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        "Response:",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        ">",
        "Lcom/google/android/apps/plus/network/ApiaryOperation",
        "<TRequest;TResponse;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "path"
    .parameter
    .parameter
    .parameter "intent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/apps/plus/network/PlusiOperation;,"Lcom/google/android/apps/plus/network/PlusiOperation<TRequest;TResponse;>;"
    .local p4, requestJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p5, responseJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TResponse;>;"
    invoke-static {p3}, Lcom/google/android/apps/plus/network/PlusiOperation;->createPlusiRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oauth2:https://www.googleapis.com/auth/plus.me"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 38
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "path"
    .parameter
    .parameter
    .parameter "intent"
    .parameter "listener"
    .parameter "requestConfiguration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            "Lcom/google/android/apps/plus/network/HttpRequestConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/apps/plus/network/PlusiOperation;,"Lcom/google/android/apps/plus/network/PlusiOperation<TRequest;TResponse;>;"
    .local p4, requestJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p5, responseJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TResponse;>;"
    invoke-static {p3}, Lcom/google/android/apps/plus/network/PlusiOperation;->createPlusiRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oauth2:https://www.googleapis.com/auth/plus.me"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V

    .line 49
    return-void
.end method

.method protected static createPlusiRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "requestPath"

    .prologue
    .line 55
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 56
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    :cond_d
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v4

    if-eqz v4, :cond_7d

    sget-object v4, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 65
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 72
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_31
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->TRACING_TOKEN:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, tracingToken:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 78
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->TRACING_PATH:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, tracingPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_74

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, tracingValue:Ljava/lang/String;
    const-string v4, "trace"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    .end local v1           #tracingPath:Ljava/lang/String;
    .end local v3           #tracingValue:Ljava/lang/String;
    :cond_74
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 67
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #tracingToken:Ljava/lang/String;
    :cond_7d
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 68
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v4, "https"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/plus/util/Property;->PLUS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_31
.end method
