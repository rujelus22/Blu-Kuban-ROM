.class public Lcom/sec/android/app/sns/request/data/SnsRequest;
.super Ljava/lang/Object;
.source "SnsRequest.java"


# static fields
.field private static base_id:I


# instance fields
.field mAppID:I

.field mCanceled:Z

.field mHttpHeaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end field

.field mHttpMethod:Ljava/lang/String;

.field mID:I

.field mPending:Z

.field mPollingID:I

.field mReqType:I

.field mRetryCount:I

.field mSpType:I

.field mState:I

.field mTimer:Ljava/util/Timer;

.field mUrl:Ljava/lang/String;

.field mbSerial:Z

.field mbTempRetry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    return-void
.end method

.method constructor <init>(III)V
    .registers 7
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mAppID:I

    .line 60
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mID:I

    .line 62
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mSpType:I

    .line 64
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mReqType:I

    .line 66
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    .line 68
    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPollingID:I

    .line 70
    iput v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    .line 72
    iput-boolean v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mbSerial:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mbTempRetry:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mCanceled:Z

    .line 78
    iput-boolean v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPending:Z

    .line 80
    const-string v0, "POST"

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpMethod:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mUrl:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mTimer:Ljava/util/Timer;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpHeaderList:Ljava/util/ArrayList;

    .line 98
    iput p1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mAppID:I

    .line 99
    iput p2, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mSpType:I

    .line 100
    iput p3, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mReqType:I

    .line 101
    const-string v0, "POST"

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpMethod:Ljava/lang/String;

    .line 103
    if-ltz p3, :cond_46

    const/4 v0, 0x3

    if-gt p3, v0, :cond_46

    .line 104
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSSLServerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mUrl:Ljava/lang/String;

    .line 109
    :goto_3d
    invoke-static {}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getNextReqID()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mID:I

    .line 110
    iput v1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    .line 111
    return-void

    .line 106
    :cond_46
    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getHttpServerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mUrl:Ljava/lang/String;

    goto :goto_3d
.end method

.method constructor <init>(IIILjava/util/ArrayList;)V
    .registers 5
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p4, httpHeaderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicHeader;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 136
    iput-object p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpHeaderList:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method constructor <init>(IIIZ)V
    .registers 5
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "bSerial"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(III)V

    .line 123
    iput-boolean p4, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mbSerial:Z

    .line 124
    return-void
.end method

.method constructor <init>(IIIZI)V
    .registers 6
    .parameter "appID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "bSerial"
    .parameter "pollingID"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sns/request/data/SnsRequest;-><init>(IIIZ)V

    .line 152
    iput p5, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPollingID:I

    .line 153
    return-void
.end method

.method public static getNextReqID()I
    .registers 1

    .prologue
    .line 310
    sget v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    .line 312
    sget v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    if-gez v0, :cond_d

    .line 313
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    .line 316
    :cond_d
    sget v0, Lcom/sec/android/app/sns/request/data/SnsRequest;->base_id:I

    return v0
.end method


# virtual methods
.method public decreaseRetryCount()V
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    .line 285
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    if-gez v0, :cond_d

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    .line 287
    :cond_d
    return-void
.end method

.method public getAppID()I
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mAppID:I

    return v0
.end method

.method public getCancel()Z
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mCanceled:Z

    return v0
.end method

.method public getHttpHeaderList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpHeaderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mHttpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mID:I

    return v0
.end method

.method public getPending()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPending:Z

    return v0
.end method

.method public getPollingID()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPollingID:I

    return v0
.end method

.method public getReqStatus()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    return v0
.end method

.method public getReqType()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mReqType:I

    return v0
.end method

.method public getRequestTimer()Ljava/util/Timer;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mSpType:I

    return v0
.end method

.method public getTempRetry()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mbTempRetry:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public increaseRetryCount()V
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    .line 281
    return-void
.end method

.method public isMaxRetry()Z
    .registers 3

    .prologue
    .line 290
    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setCancel()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mCanceled:Z

    .line 211
    return-void
.end method

.method public setPending()V
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mPending:Z

    .line 219
    return-void
.end method

.method public setReqStatus(I)V
    .registers 6
    .parameter "reqStatus"

    .prologue
    const/4 v2, 0x4

    const/4 v1, -0x1

    .line 184
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 185
    if-le p1, v1, :cond_4e

    if-ge p1, v2, :cond_4e

    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    if-le v0, v1, :cond_4e

    iget v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    if-ge v0, v2, :cond_4e

    .line 187
    const-string v0, "SNS_FRAMEWORK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsRequest : req[ reqID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsReqState;->NAME:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsReqState;->NAME:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4e
    iput p1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mState:I

    .line 191
    return-void
.end method

.method public setReqType(I)V
    .registers 2
    .parameter "reqType"

    .prologue
    .line 168
    iput p1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mReqType:I

    .line 169
    return-void
.end method

.method public setRequestTimer(Ljava/util/Timer;)V
    .registers 2
    .parameter "timer"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mTimer:Ljava/util/Timer;

    .line 235
    return-void
.end method

.method public setString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "inString"

    .prologue
    .line 272
    return-object p1
.end method

.method public setTempRetry()V
    .registers 2

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mbTempRetry:Z

    .line 298
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sns/request/data/SnsRequest;->mUrl:Ljava/lang/String;

    .line 231
    return-void
.end method
