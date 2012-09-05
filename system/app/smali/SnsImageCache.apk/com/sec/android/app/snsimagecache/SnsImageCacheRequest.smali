.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
.super Ljava/lang/Object;
.source "SnsImageCacheRequest.java"


# instance fields
.field mAppID:I

.field mID:I

.field mRetryCount:I

.field mStatus:I

.field mUrl:Ljava/lang/String;

.field mbAutoPolling:Z

.field mbSerial:Z

.field mbTempRetry:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .parameter "appID"
    .parameter "photoURL"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mAppID:I

    .line 25
    iput v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mID:I

    .line 27
    iput v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mStatus:I

    .line 29
    iput v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mRetryCount:I

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mbSerial:Z

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mbAutoPolling:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mbTempRetry:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mUrl:Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mAppID:I

    .line 48
    invoke-virtual {p0, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->setUrl(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getAppID()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mAppID:I

    return v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mID:I

    return v0
.end method

.method public getReqStatus()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mStatus:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public increaseRetryCount()V
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mRetryCount:I

    .line 108
    return-void
.end method

.method public send(Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;Landroid/os/Handler;)I
    .registers 8
    .parameter "fwk"
    .parameter "hdr"

    .prologue
    .line 92
    invoke-virtual {p1, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->addToQueue(Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;)I

    move-result v2

    .line 93
    .local v2, reqID:I
    const/4 v1, 0x0

    .line 95
    .local v1, msgType:I
    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    const-string v3, "SNS_IMAGE_CACHE"

    const-string v4, "SnsImageCacheRequest : send() : sendThreadMessage[PROCESS_REQUEST]"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v2
.end method

.method public setID(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 72
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mID:I

    .line 73
    return-void
.end method

.method public setReqStatus(I)V
    .registers 2
    .parameter "reqStatus"

    .prologue
    .line 56
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mStatus:I

    .line 57
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->mUrl:Ljava/lang/String;

    .line 81
    return-void
.end method
