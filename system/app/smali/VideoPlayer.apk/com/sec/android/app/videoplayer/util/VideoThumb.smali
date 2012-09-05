.class public Lcom/sec/android/app/videoplayer/util/VideoThumb;
.super Ljava/lang/Object;
.source "VideoThumb.java"


# instance fields
.field private bchecRretriever:Z

.field private mFilePath:Ljava/lang/String;

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "b"
    .parameter "check"

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->mFilePath:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 12
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 13
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .registers 5
    .parameter "b"
    .parameter "check"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->mFilePath:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 18
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 19
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->mFilePath:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRretrieverChecked()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setRretrieverChecked(Z)V
    .registers 2
    .parameter "check"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 28
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 24
    return-void
.end method
