.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "SnsImageCacheHttpGetRequest.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# instance fields
.field private final HTTP_METHOD:Ljava/lang/String;

.field mFwkReqID:I

.field mbOnSending:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 6
    .parameter "reqID"
    .parameter "reqUri"

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 48
    const-string v1, "GET"

    iput-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->HTTP_METHOD:Ljava/lang/String;

    .line 59
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->mFwkReqID:I

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->mbOnSending:Z

    .line 63
    :try_start_c
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->setURI(Ljava/net/URI;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_14} :catch_15

    .line 69
    :goto_14
    return-void

    .line 65
    :catch_15
    move-exception v0

    .line 66
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 67
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "SnsImageCacheHttpGetRequest : CONSTRUCTOR : URISyntaxException occur"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "reqID"
    .parameter "reqUri"
    .parameter "userAgent"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;-><init>(ILjava/lang/String;)V

    .line 77
    if-eqz p3, :cond_10

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 78
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_10
    return-void
.end method


# virtual methods
.method public getFwkReqID()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->mFwkReqID:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "GET"

    return-object v0
.end method

.method public getSendingFlag()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->mbOnSending:Z

    return v0
.end method

.method public setSendingFlag(Z)V
    .registers 2
    .parameter "bSend"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpGetRequest;->mbOnSending:Z

    .line 93
    return-void
.end method
