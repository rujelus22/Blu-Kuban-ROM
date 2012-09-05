.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
.super Ljava/lang/Object;
.source "SnsImageCacheResponse.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mFwkID:I

.field private mHttpStatusCode:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .parameter "fwkID"
    .parameter "statusCode"
    .parameter "content"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mFwkID:I

    .line 44
    iput p2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mHttpStatusCode:I

    .line 45
    iput-object p3, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mContent:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFwkID()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mFwkID:I

    return v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;->mHttpStatusCode:I

    return v0
.end method
