.class public Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;
.super Lcom/google/android/apps/plus/network/PlusiOperation;
.source "ApiaryPreviewOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/PlusiOperation",
        "<",
        "Lcom/google/api/services/plusi/model/LinkPreviewRequest;",
        "Lcom/google/api/services/plusi/model/LinkPreviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

.field private final mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "sourceUrl"
    .parameter "apiInfo"

    .prologue
    .line 38
    const-string v7, "linkpreview"

    invoke-static {}, Lcom/google/api/services/plusi/model/LinkPreviewRequestJson;->getInstance()Lcom/google/api/services/plusi/model/LinkPreviewRequestJson;

    move-result-object v8

    invoke-static {}, Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;->getInstance()Lcom/google/api/services/plusi/model/LinkPreviewResponseJson;

    move-result-object v6

    new-instance v0, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;

    const-string v3, "oauth2:https://www.googleapis.com/auth/plus.me"

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->PLUS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v8

    move-object v7, p3

    move-object v8, p4

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/network/PlusiOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V

    .line 42
    iput-object p5, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mSourceUrl:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/LinkPreviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->handleResponse(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)V
    .registers 4
    .parameter "responseParams"

    .prologue
    .line 50
    if-eqz p1, :cond_8

    .line 52
    :try_start_2
    invoke-static {p1}, Lcom/google/android/apps/plus/network/ApiaryActivityFactory;->getApiaryActivity(Lcom/google/api/services/plusi/model/LinkPreviewResponse;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_9

    .line 57
    :cond_8
    :goto_8
    return-void

    .line 53
    :catch_9
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    goto :goto_8
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/api/services/plusi/model/LinkPreviewRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->populateRequest(Lcom/google/api/services/plusi/model/LinkPreviewRequest;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/plusi/model/LinkPreviewRequest;)V
    .registers 4
    .parameter "previewParams"

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryPreviewOperation;->mSourceUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/plusi/model/LinkPreviewRequest;->content:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/LinkPreviewRequest;->useBlackboxPreviewData:Ljava/lang/Boolean;

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/plusi/model/LinkPreviewRequest;->fallbackToUrl:Ljava/lang/Boolean;

    .line 66
    return-void
.end method
