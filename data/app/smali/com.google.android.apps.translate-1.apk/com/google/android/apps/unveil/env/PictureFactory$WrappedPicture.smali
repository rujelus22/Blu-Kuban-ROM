.class Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;
.super Lcom/google/android/apps/unveil/env/Picture;
.source "PictureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/PictureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPicture"
.end annotation


# instance fields
.field private final picture:Lcom/google/android/apps/unveil/env/Picture;

.field private final tracker:Lcom/google/android/apps/unveil/env/PictureTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 4
    .parameter "picture"

    .prologue
    .line 206
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->getSource()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/Picture;-><init>(II)V

    .line 203
    invoke-static {}, Lcom/google/android/apps/unveil/env/PictureTracker;->getInstance()Lcom/google/android/apps/unveil/env/PictureTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->tracker:Lcom/google/android/apps/unveil/env/PictureTracker;

    .line 207
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->tracker:Lcom/google/android/apps/unveil/env/PictureTracker;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/apps/unveil/env/PictureTracker;->track(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/env/Picture;)V

    .line 209
    return-void
.end method


# virtual methods
.method public getByteSize()I
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getByteSize()I

    move-result v0

    return v0
.end method

.method public getCropArea()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getCropArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;
    .registers 4

    .prologue
    .line 252
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Picture;->getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    .line 253
    .local v0, cropped:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    if-ne v0, v2, :cond_b

    .line 258
    .end local p0
    :goto_a
    return-object p0

    .line 256
    .restart local p0
    :cond_b
    new-instance v1, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    .line 257
    .local v1, wrapped:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->tracker:Lcom/google/android/apps/unveil/env/PictureTracker;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/unveil/env/PictureTracker;->track(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/env/Picture;)V

    move-object p0, v1

    .line 258
    goto :goto_a
.end method

.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getJpegData()[B
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getJpegData()[B

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    return-object v0
.end method

.method public getYuvData()[B
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getYuvData()[B

    move-result-object v0

    return-object v0
.end method

.method public peekBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 267
    return-void
.end method

.method public setCropArea(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "cropArea"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/env/Picture;->setCropArea(Landroid/graphics/Rect;)V

    .line 217
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/env/Picture;->setOrientation(I)V

    .line 225
    return-void
.end method
