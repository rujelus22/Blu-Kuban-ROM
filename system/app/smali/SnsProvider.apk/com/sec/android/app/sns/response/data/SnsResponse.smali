.class public Lcom/sec/android/app/sns/response/data/SnsResponse;
.super Ljava/lang/Object;
.source "SnsResponse.java"


# instance fields
.field private mHttpStatusCode:I

.field private mID:I

.field private mInternalCode:I

.field protected mObject:Ljava/lang/Object;

.field private mRedirectURL:Ljava/lang/String;

.field private mReqType:I

.field private mRespType:I

.field private mbSuccess:Z


# direct methods
.method public constructor <init>(IIIIILjava/lang/Object;)V
    .registers 8
    .parameter "respType"
    .parameter "ID"
    .parameter "requestType"
    .parameter "internalCode"
    .parameter "httpStatusCode"
    .parameter "object"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mRespType:I

    .line 76
    iput p2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mID:I

    .line 77
    iput p3, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mReqType:I

    .line 78
    iput p4, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mInternalCode:I

    .line 79
    iput p5, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mHttpStatusCode:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mRedirectURL:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mbSuccess:Z

    .line 83
    iput-object p6, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .parameter "respType"
    .parameter "ID"
    .parameter "requestType"
    .parameter "internalCode"
    .parameter "httpStatusCode"
    .parameter "object"
    .parameter "redirectURL"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;)V

    .line 89
    iput-object p7, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mRedirectURL:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static getErrSpList(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)Ljava/util/ArrayList;
    .registers 3
    .parameter "serverErrSpType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, errSpTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    if-eqz p0, :cond_17

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p0, p0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    goto :goto_5

    .line 215
    :cond_17
    return-object v0
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 4
    .parameter "context"
    .parameter "prevReq"

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .registers 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    return-object v0
.end method

.method public getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;
    .registers 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mHttpStatusCode:I

    return v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mID:I

    return v0
.end method

.method public getInternalCode()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mInternalCode:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public getReqType()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mReqType:I

    return v0
.end method

.method public getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v0

    return-object v0
.end method

.method public getRespType()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mRespType:I

    return v0
.end method

.method public getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/SnsSvc;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    return-object v0
.end method

.method public getSnsSvc()Lcom/sec/android/app/sns/SnsSvc;
    .registers 2

    .prologue
    .line 187
    invoke-static {}, Lcom/sec/android/app/sns/SnsSvc;->getInstance()Lcom/sec/android/app/sns/SnsSvc;

    move-result-object v0

    return-object v0
.end method

.method public setInternalCode(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 132
    iget v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mInternalCode:I

    if-eqz v0, :cond_22

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnsResponse : setInternalCode() : internal code is invalid. (mInternalCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mInternalCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sns/util/SnsUtil;->invokeAssertion(Ljava/lang/String;)V

    .line 137
    :cond_22
    iput p1, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mInternalCode:I

    .line 138
    return-void
.end method
