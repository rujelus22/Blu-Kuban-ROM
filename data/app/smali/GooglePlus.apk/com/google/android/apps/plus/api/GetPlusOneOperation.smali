.class public Lcom/google/android/apps/plus/api/GetPlusOneOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation;
.source "GetPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/ApiaryOperation",
        "<",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        "Lcom/google/api/services/pos/model/Plusones;",
        ">;"
    }
.end annotation


# instance fields
.field private mPlusones:Lcom/google/api/services/pos/model/Plusones;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "apiInfo"
    .parameter "uri"

    .prologue
    .line 36
    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->makePosUrl(Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v12

    const-string v8, "Manage your +1\'s"

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/api/services/pos/model/PlusonesJson;->getInstance()Lcom/google/api/services/pos/model/PlusonesJson;

    move-result-object v10

    new-instance v2, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;

    const-string v5, "Manage your +1\'s"

    sget-object v3, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    const-string v14, "GET"

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object v13, v2

    invoke-direct/range {v3 .. v14}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private static makePosUrl(Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .parameter "info"

    .prologue
    .line 43
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_PATH:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "plusones"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "nolog"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "max_people"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "source"

    const-string v2, "native:android_app"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "container"

    invoke-static {p1}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlusones()Lcom/google/api/services/pos/model/Plusones;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    return-object v0
.end method

.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/google/api/services/pos/model/Plusones;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->handleResponse(Lcom/google/api/services/pos/model/Plusones;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/pos/model/Plusones;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/apps/plus/api/GetPlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    .line 83
    return-void
.end method

.method protected populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
