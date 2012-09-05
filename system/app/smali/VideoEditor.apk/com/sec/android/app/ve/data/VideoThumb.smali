.class public Lcom/sec/android/app/ve/data/VideoThumb;
.super Ljava/lang/Object;
.source "VideoThumb.java"


# instance fields
.field private bchecRretriever:Z

.field private mDuration:J

.field private mId:J

.field private mIsSupportedbyEngine:Z

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZZ)V
    .registers 6
    .parameter "b"
    .parameter "check"
    .parameter "supported"

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 7
    iput-boolean v1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->bchecRretriever:Z

    .line 9
    iput-boolean v1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mIsSupportedbyEngine:Z

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 18
    iput-boolean p2, p0, Lcom/sec/android/app/ve/data/VideoThumb;->bchecRretriever:Z

    .line 19
    iput-boolean p3, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mIsSupportedbyEngine:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mDuration:J

    return-wide v0
.end method

.method public getEngineSupported()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mIsSupportedbyEngine:Z

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mId:J

    return-wide v0
.end method

.method public getRretrieverChecked()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->bchecRretriever:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setDuration(J)V
    .registers 3
    .parameter "aDuration"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mDuration:J

    .line 54
    return-void
.end method

.method public setEngineSupported(Z)V
    .registers 2
    .parameter "aSupported"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mIsSupportedbyEngine:Z

    .line 44
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "aId"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->mId:J

    .line 62
    return-void
.end method

.method public setRretrieverChecked(Z)V
    .registers 2
    .parameter "check"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->bchecRretriever:Z

    .line 30
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 25
    return-void
.end method
