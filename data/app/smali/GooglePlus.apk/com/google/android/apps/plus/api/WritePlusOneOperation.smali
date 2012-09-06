.class public Lcom/google/android/apps/plus/api/WritePlusOneOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation;
.source "WritePlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/network/ApiaryOperation",
        "<",
        "Lcom/google/api/services/pos/model/Plusones;",
        "Lcom/google/api/services/pos/model/Plusones;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAbtk:Ljava/lang/String;

.field private final mAdd:Z

.field private mPlusones:Lcom/google/api/services/pos/model/Plusones;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "apiInfo"
    .parameter "uri"
    .parameter "add"
    .parameter "abtk"

    .prologue
    .line 35
    invoke-static/range {p6 .. p6}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->makePosUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v11

    const-string v7, "Manage your +1\'s"

    invoke-static {}, Lcom/google/api/services/pos/model/PlusonesJson;->getInstance()Lcom/google/api/services/pos/model/PlusonesJson;

    move-result-object v8

    invoke-static {}, Lcom/google/api/services/pos/model/PlusonesJson;->getInstance()Lcom/google/api/services/pos/model/PlusonesJson;

    move-result-object v9

    new-instance v1, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;

    const-string v4, "Manage your +1\'s"

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    if-eqz p7, :cond_41

    const-string v13, "POST"

    :goto_2a
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v1

    invoke-direct/range {v2 .. v13}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Ljava/lang/String;)V

    .line 40
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAdd:Z

    .line 41
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAbtk:Ljava/lang/String;

    .line 42
    return-void

    .line 35
    :cond_41
    const-string v13, "DELETE"

    goto :goto_2a
.end method

.method private static makePosUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 45
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

    const-string v1, "source"

    const-string v2, "native:android_app"

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
    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAdd:Z

    if-nez v0, :cond_6

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_5
    return-object v0

    :cond_6
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->createPostData()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_5
.end method

.method public getPlusones()Lcom/google/api/services/pos/model/Plusones;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/google/api/services/pos/model/Plusones;

    invoke-direct {v0}, Lcom/google/api/services/pos/model/Plusones;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    return-object v0
.end method

.method protected bridge synthetic handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/api/services/pos/model/Plusones;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->handleResponse(Lcom/google/api/services/pos/model/Plusones;)V

    return-void
.end method

.method protected handleResponse(Lcom/google/api/services/pos/model/Plusones;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mPlusones:Lcom/google/api/services/pos/model/Plusones;

    .line 89
    return-void
.end method

.method protected bridge synthetic populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    check-cast p1, Lcom/google/api/services/pos/model/Plusones;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->populateRequest(Lcom/google/api/services/pos/model/Plusones;)V

    return-void
.end method

.method protected populateRequest(Lcom/google/api/services/pos/model/Plusones;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAbtk:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/api/services/pos/model/Plusones;->abtk:Ljava/lang/String;

    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/plus/api/WritePlusOneOperation;->mAdd:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/google/api/services/pos/model/Plusones;->isSetByViewer:Ljava/lang/Boolean;

    .line 70
    return-void
.end method
