.class public Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;
.super Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;
.source "PlatformHttpRequestConfiguration.java"


# instance fields
.field private final mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "scope"
    .parameter "backendOverrideUrl"
    .parameter "apiInfo"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p5, p0, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;->addHeaders(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 42
    const-string v0, "X-Container-Url"

    iget-object v1, p0, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v1}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getContainerUrl(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected getUserAgentHeader(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/apps/plus/network/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "; G+ SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    const-string v1, "1.0.0"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/plus/network/PlatformHttpRequestConfiguration;->mApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method
