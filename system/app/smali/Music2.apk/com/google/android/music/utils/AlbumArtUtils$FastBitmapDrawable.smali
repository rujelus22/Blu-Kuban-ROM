.class public Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 1383
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1384
    iput-object p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 1385
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->setBounds(IIII)V

    .line 1386
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1392
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1393
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1396
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 1400
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 1403
    return-void
.end method
