.class public abstract Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;
.super Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlusOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;-><init>(Landroid/content/Context;)V

    .line 176
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getErrorCode()I
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performApiaryCalls(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Lcom/google/api/client/json/JsonFactory;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 16
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
    const/4 v2, 0x0

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorCode:I

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorMessage:Ljava/lang/String;

    .line 203
    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;->getAuthTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 207
    .local v2, authTime:Ljava/lang/Long;
    :cond_16
    :try_start_16
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    invoke-static {p1, v0}, Lcom/google/api/services/plus/Plus;->builder(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/services/plus/Plus$Builder;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/google/android/apps/plus/network/ApiaryOperation;->getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p2

    #calls: Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpRequestInitializer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/network/ApiaryOperation;->access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/api/services/plus/Plus$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/plus/Plus$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;

    invoke-virtual {p4}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation$PlusInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/services/plus/Plus$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/plus/Plus$Builder;

    move-result-object v6

    .line 214
    .local v6, builder:Lcom/google/api/services/plus/Plus$Builder;
    invoke-virtual {v6}, Lcom/google/api/services/plus/Plus$Builder;->build()Lcom/google/api/services/plus/Plus;

    move-result-object v9

    .line 216
    .local v9, plus:Lcom/google/api/services/plus/Plus;
    invoke-virtual {p0, v9, p4}, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->performApiaryCalls(Lcom/google/api/services/plus/Plus;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 217
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorCode:I

    .line 218
    const-string v0, "OK"

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorMessage:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4f} :catch_50

    .line 232
    return-void

    .line 219
    .end local v6           #builder:Lcom/google/api/services/plus/Plus$Builder;
    .end local v9           #plus:Lcom/google/api/services/plus/Plus;
    :catch_50
    move-exception v7

    .line 220
    .local v7, e:Ljava/io/IOException;
    instance-of v0, v7, Lcom/google/api/client/http/HttpResponseException;

    if-eqz v0, :cond_84

    move-object v8, v7

    .line 221
    check-cast v8, Lcom/google/api/client/http/HttpResponseException;

    .line 222
    .local v8, ex:Lcom/google/api/client/http/HttpResponseException;
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 223
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorCode:I

    .line 224
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$PlusOperation;->mErrorMessage:Ljava/lang/String;

    .line 225
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_84

    .line 226
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;

    invoke-direct {v0, v7}, Lcom/google/android/apps/plus/network/ApiaryOperation$AuthException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 230
    .end local v8           #ex:Lcom/google/api/client/http/HttpResponseException;
    :cond_84
    throw v7
.end method

.method public abstract performApiaryCalls(Lcom/google/api/services/plus/Plus;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
