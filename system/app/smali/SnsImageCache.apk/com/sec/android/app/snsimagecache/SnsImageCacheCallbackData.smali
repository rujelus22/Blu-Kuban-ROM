.class public final Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;
.super Ljava/lang/Object;
.source "SnsImageCacheCallbackData.java"


# instance fields
.field private mAppID:I

.field private mContentUri:Landroid/net/Uri;

.field private mDescription:Ljava/lang/String;

.field private mReqID:I

.field private mStatusCode:I

.field private mbSuccess:Z


# direct methods
.method public constructor <init>(IIZLandroid/net/Uri;I)V
    .registers 7
    .parameter "appID"
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "contentUri"
    .parameter "statusCode"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mAppID:I

    .line 60
    iput p2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mReqID:I

    .line 61
    iput-boolean p3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mbSuccess:Z

    .line 62
    iput-object p4, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mContentUri:Landroid/net/Uri;

    .line 63
    iput p5, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mStatusCode:I

    .line 64
    const-string v0, "OK"

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mDescription:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(IIZLandroid/net/Uri;ILjava/lang/String;)V
    .registers 7
    .parameter "appID"
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "contentUri"
    .parameter "statusCode"
    .parameter "description"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;-><init>(IIZLandroid/net/Uri;I)V

    .line 73
    iput-object p6, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mDescription:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getAppID()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mAppID:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getReqID()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mReqID:I

    return v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mStatusCode:I

    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->mbSuccess:Z

    return v0
.end method
