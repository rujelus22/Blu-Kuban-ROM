.class public Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "XIVBitmapRegionDecoder.java"


# instance fields
.field public mBrd:Landroid/graphics/BitmapRegionDecoder;

.field public mHeight:I

.field public mIsShareable:Z

.field public mPathName:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    .line 22
    iput-object v1, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mPathName:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mWidth:I

    .line 24
    iput v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mHeight:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mIsShareable:Z

    .line 16
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    .registers 5
    .parameter "pathName"
    .parameter "isShareable"

    .prologue
    .line 29
    new-instance v0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;-><init>()V

    .line 31
    .local v0, brdXIV:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :try_start_5
    invoke-static {p0, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    iput-object v2, v0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    .line 37
    .end local v0           #brdXIV:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :goto_b
    return-object v0

    .line 32
    .restart local v0       #brdXIV:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :catch_c
    move-exception v1

    .line 33
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "rect"
    .parameter "options"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isRecycled()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    :cond_10
    const/4 v0, 0x1

    .line 98
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->mBrd:Landroid/graphics/BitmapRegionDecoder;

    .line 91
    :cond_c
    return-void
.end method
