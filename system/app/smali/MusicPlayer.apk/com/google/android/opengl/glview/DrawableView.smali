.class public Lcom/google/android/opengl/glview/DrawableView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "DrawableView.java"


# static fields
.field private static final sStateSet:[[I


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextureHeight:[I

.field private mTextureId:[I

.field private mTextureWidth:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/opengl/glview/DrawableView;->sStateSet:[[I

    return-void

    nop

    :array_28
    .array-data 0x4
        0x9ct 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "id"
    .parameter "drawable"

    .prologue
    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V
    .registers 8
    .parameter "id"
    .parameter "drawable"
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    const/4 v1, 0x4

    .line 46
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 13
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    .line 14
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    .line 15
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    .line 47
    iput-object p2, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p5, p0, Lcom/google/android/opengl/glview/DrawableView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 49
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V
    .registers 10
    .parameter "id"
    .parameter "drawable"
    .parameter "config"

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V

    .line 42
    return-void
.end method

.method private clearTextureIds()V
    .registers 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 102
    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_e
    return-void
.end method


# virtual methods
.method public freeOpenGlResources()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/opengl/glview/DrawableView;->clearTextureIds()V

    .line 98
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTextureId()I
    .registers 13

    .prologue
    const/16 v11, 0xde1

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 57
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/DrawableView;->testAndFlags(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    const/4 v7, 0x2

    :goto_d
    invoke-virtual {p0, v10}, Lcom/google/android/opengl/glview/DrawableView;->testAndFlags(I)Z

    move-result v9

    if-eqz v9, :cond_3d

    move v9, v10

    :goto_14
    add-int v5, v7, v9

    .line 59
    .local v5, textureIndex:I
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    aget v4, v7, v5

    .line 60
    .local v4, textureId:I
    if-nez v4, :cond_2b

    .line 61
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    invoke-static {v10, v7, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 62
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureId:[I

    aget v4, v7, v5

    .line 63
    invoke-static {v11, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 67
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/DrawableView;->width()F

    move-result v7

    float-to-int v6, v7

    .line 68
    .local v6, width:I
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/DrawableView;->height()F

    move-result v7

    float-to-int v3, v7

    .line 70
    .local v3, height:I
    if-lez v6, :cond_39

    if-gtz v3, :cond_3f

    :cond_39
    move v4, v8

    .line 86
    .end local v4           #textureId:I
    :cond_3a
    :goto_3a
    return v4

    .end local v3           #height:I
    .end local v5           #textureIndex:I
    .end local v6           #width:I
    :cond_3b
    move v7, v8

    .line 57
    goto :goto_d

    :cond_3d
    move v9, v8

    goto :goto_14

    .line 73
    .restart local v3       #height:I
    .restart local v4       #textureId:I
    .restart local v5       #textureIndex:I
    .restart local v6       #width:I
    :cond_3f
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    aget v7, v7, v5

    if-ne v7, v6, :cond_4b

    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    aget v7, v7, v5

    if-eq v7, v3, :cond_3a

    .line 75
    :cond_4b
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureWidth:[I

    aput v6, v7, v5

    .line 76
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mTextureHeight:[I

    aput v3, v7, v5

    .line 77
    iget-object v2, p0, Lcom/google/android/opengl/glview/DrawableView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 78
    .local v2, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v6, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v8, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v9, Lcom/google/android/opengl/glview/DrawableView;->sStateSet:[[I

    aget-object v9, v9, v5

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 82
    iget-object v7, p0, Lcom/google/android/opengl/glview/DrawableView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-static {v11, v8, v0, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3a
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 2
    .parameter "glCanvas"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/opengl/glview/DrawableView;->clearTextureIds()V

    .line 92
    return-void
.end method
