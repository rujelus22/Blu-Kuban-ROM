.class public abstract Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PosOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;
    }
.end annotation


# instance fields
.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-static {p1}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mUserAgent:Ljava/lang/String;

    .line 249
    return-void
.end method

.method private getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getErrorCode()I
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    const-string v0, "Manage your +1\'s"

    return-object v0
.end method

.method public performApiaryCalls(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Lcom/google/api/client/json/JsonFactory;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 18
    .parameter "httpTransport"
    .parameter "authToken"
    .parameter "jsonFactory"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorCode:I

    .line 306
    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorMessage:Ljava/lang/String;

    .line 307
    if-eqz p2, :cond_92

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->getAuthTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 310
    .local v3, authTime:Ljava/lang/Long;
    :goto_15
    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, containerUrl:Ljava/lang/String;
    :try_start_19
    new-instance v1, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    invoke-static {p1, v1}, Lcom/google/api/services/pos/Pos;->builder(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v12

    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->POS_BACKEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpRequestInitializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;
    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/google/api/services/pos/Pos$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation$PosInitializer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/api/services/pos/Pos$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/pos/Pos$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v7

    .line 319
    .local v7, builder:Lcom/google/api/services/pos/Pos$Builder;
    sget-object v1, Lcom/google/android/apps/plus/util/Property;->POS_FRONTEND_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v10

    .line 320
    .local v10, frontendOverrideUrl:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 321
    const-string v1, "ApiaryOperation"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 322
    const-string v1, "ApiaryOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting pos frontend url "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_79
    invoke-virtual {v7}, Lcom/google/api/services/pos/Pos$Builder;->getBaseUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/api/client/http/GenericUrl;->setHost(Ljava/lang/String;)V

    .line 326
    :cond_80
    invoke-virtual {v7}, Lcom/google/api/services/pos/Pos$Builder;->build()Lcom/google/api/services/pos/Pos;

    move-result-object v11

    .line 327
    .local v11, pos:Lcom/google/api/services/pos/Pos;
    move-object/from16 v0, p4

    invoke-virtual {p0, v11, v0}, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->performApiaryCalls(Lcom/google/api/services/pos/Pos;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 328
    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorCode:I

    .line 329
    const-string v1, "OK"

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorMessage:Ljava/lang/String;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_91} :catch_94

    .line 343
    return-void

    .line 307
    .end local v3           #authTime:Ljava/lang/Long;
    .end local v4           #containerUrl:Ljava/lang/String;
    .end local v7           #builder:Lcom/google/api/services/pos/Pos$Builder;
    .end local v10           #frontendOverrideUrl:Ljava/lang/String;
    .end local v11           #pos:Lcom/google/api/services/pos/Pos;
    :cond_92
    const/4 v3, 0x0

    goto :goto_15

    .line 330
    .restart local v3       #authTime:Ljava/lang/Long;
    .restart local v4       #containerUrl:Ljava/lang/String;
    :catch_94
    move-exception v8

    .line 331
    .local v8, e:Ljava/io/IOException;
    instance-of v1, v8, Lcom/google/api/client/http/HttpResponseException;

    if-eqz v1, :cond_c8

    move-object v9, v8

    .line 332
    check-cast v9, Lcom/google/api/client/http/HttpResponseException;

    .line 333
    .local v9, ex:Lcom/google/api/client/http/HttpResponseException;
    invoke-virtual {v9}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 334
    invoke-virtual {v9}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorCode:I

    .line 335
    invoke-virtual {v9}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PosOperation;->mErrorMessage:Ljava/lang/String;

    .line 336
    invoke-virtual {v9}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_c8

    .line 337
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;

    invoke-direct {v1, v8}, Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 341
    .end local v9           #ex:Lcom/google/api/client/http/HttpResponseException;
    :cond_c8
    throw v8
.end method

.method public abstract performApiaryCalls(Lcom/google/api/services/pos/Pos;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
