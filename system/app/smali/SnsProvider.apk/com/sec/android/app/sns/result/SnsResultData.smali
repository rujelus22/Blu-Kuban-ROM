.class public final Lcom/sec/android/app/sns/result/SnsResultData;
.super Ljava/lang/Object;
.source "SnsResultData.java"


# instance fields
.field private mAppID:I

.field private mContentUri:Landroid/net/Uri;

.field private mErrCode:I

.field private mErrContext:Ljava/lang/String;

.field private mHttpStatusCode:I

.field private mID:I

.field private mInternalCode:I

.field mPartialErrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReqType:I

.field private mSpType:I

.field private mSubErrCode:I

.field private mbContinue:Z

.field private mbSuccess:Z


# direct methods
.method public constructor <init>(IIIIZIIIILjava/util/Map;Ljava/lang/String;ZLandroid/net/Uri;)V
    .registers 14
    .parameter "appID"
    .parameter "spType"
    .parameter "ID"
    .parameter "reqType"
    .parameter "bContinue"
    .parameter "internalCode"
    .parameter "httpStatusCode"
    .parameter "eErrCode"
    .parameter "subErrCode"
    .parameter
    .parameter "errContext"
    .parameter "bSuccess"
    .parameter "contentUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZIIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p10, partialErrMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mAppID:I

    .line 125
    iput p2, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSpType:I

    .line 126
    iput p3, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mID:I

    .line 127
    iput p4, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mReqType:I

    .line 128
    iput-boolean p5, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbContinue:Z

    .line 129
    iput p6, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mInternalCode:I

    .line 130
    iput p7, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mHttpStatusCode:I

    .line 131
    iput p8, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrCode:I

    .line 132
    iput p9, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSubErrCode:I

    .line 133
    iput-object p10, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mPartialErrMap:Ljava/util/Map;

    .line 134
    iput-object p11, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrContext:Ljava/lang/String;

    .line 135
    iput-boolean p12, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbSuccess:Z

    .line 136
    iput-object p13, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mContentUri:Landroid/net/Uri;

    .line 137
    return-void
.end method

.method public constructor <init>(IIIIZLandroid/net/Uri;)V
    .registers 10
    .parameter "appID"
    .parameter "spType"
    .parameter "ID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "contentUri"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mAppID:I

    .line 88
    iput p2, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSpType:I

    .line 89
    iput p3, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mID:I

    .line 90
    iput p4, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mReqType:I

    .line 91
    iput-boolean p5, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbSuccess:Z

    .line 92
    iput-object p6, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mContentUri:Landroid/net/Uri;

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbContinue:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mHttpStatusCode:I

    iput v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mInternalCode:I

    .line 97
    iput v1, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrCode:I

    .line 98
    iput v1, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSubErrCode:I

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mPartialErrMap:Ljava/util/Map;

    .line 100
    iput-object v2, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrContext:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getAppID()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mAppID:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getErrCode()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrCode:I

    return v0
.end method

.method public getErrContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mErrContext:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mHttpStatusCode:I

    return v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mID:I

    return v0
.end method

.method public getInternalCode()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mInternalCode:I

    return v0
.end method

.method public getPartialErrMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mPartialErrMap:Ljava/util/Map;

    return-object v0
.end method

.method public getReqType()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mReqType:I

    return v0
.end method

.method public getSpType()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSpType:I

    return v0
.end method

.method public getSubErrCode()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mSubErrCode:I

    return v0
.end method

.method public isContinued()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbContinue:Z

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/sec/android/app/sns/result/SnsResultData;->mbSuccess:Z

    return v0
.end method
