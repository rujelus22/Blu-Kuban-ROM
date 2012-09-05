.class public Lcom/cooliris/media/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    .line 32
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/cooliris/media/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    iget-object v0, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 79
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_c
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .registers 7

    .prologue
    const/high16 v5, 0x4000

    .line 57
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .local v2, matrix:Landroid/graphics/Matrix;
    iget v3, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    if-eqz v3, :cond_37

    .line 62
    iget-object v3, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 63
    .local v0, cx:I
    iget-object v3, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 64
    .local v1, cy:I
    neg-int v3, v0

    int-to-float v3, v3

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 65
    iget v3, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 66
    invoke-virtual {p0}, Lcom/cooliris/media/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/cooliris/media/RotateBitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    .end local v0           #cx:I
    .end local v1           #cy:I
    :cond_37
    return-object v2
.end method

.method public getRotation()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/cooliris/media/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    iget-object v0, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 87
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_c
.end method

.method public isOrientationChanged()Z
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cooliris/media/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method public setRotation(I)V
    .registers 2
    .parameter "rotation"

    .prologue
    .line 40
    iput p1, p0, Lcom/cooliris/media/RotateBitmap;->mRotation:I

    .line 41
    return-void
.end method
