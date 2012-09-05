.class public Lcom/google/android/opengl/carousel/CarouselTexture;
.super Ljava/lang/Object;
.source "CarouselTexture.java"


# instance fields
.field public mBackgroundId0:I

.field public mBackgroundId1:I

.field public mCardSingleDetailId:I

.field public mCardSingleId:I

.field public mDefaultId:I

.field public mDefaultLineId:I

.field public mDetailLoadingId:I

.field public mEmptyId:I

.field public mGlowingId:I

.field public mIds:[I

.field public mLoadingId:I

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V
    .registers 3
    .parameter "render"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    .line 43
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 44
    return-void
.end method

.method public static setDefaultNPOTTextureState()V
    .registers 4

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 115
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 117
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 121
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 123
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 125
    return-void
.end method


# virtual methods
.method public loadTexture()V
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 51
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    invoke-static {v5, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 54
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->printIntArray([I)V

    .line 57
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    aget v1, v1, v3

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    .line 58
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    .line 59
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId0:I

    .line 60
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mBackgroundId1:I

    .line 61
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    .line 62
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    .line 63
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCardSingleId:I

    .line 64
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mCardSingleDetailId:I

    .line 65
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    .line 66
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mEmptyId:I

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_57
    if-ge v0, v5, :cond_66

    .line 70
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mIds:[I

    aget v1, v1, v0

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 71
    invoke-static {}, Lcom/google/android/opengl/carousel/CarouselTexture;->setDefaultNPOTTextureState()V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 75
    :cond_66
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_80

    .line 76
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 77
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 79
    :cond_80
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9a

    .line 80
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 84
    :cond_9a
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b0

    .line 85
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDetailLoadingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 86
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 89
    :cond_b0
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c6

    .line 90
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultLineId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 91
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 94
    :cond_c6
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_dc

    .line 95
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mGlowingId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 96
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 99
    :cond_dc
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEmptyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_f2

    .line 100
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mEmptyId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 101
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mEmptyBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    :cond_f2
    const/4 v0, 0x0

    :goto_f3
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_111

    .line 105
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/opengl/carousel/Card;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/Card;->initCardTexture()V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 108
    :cond_111
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselTexture;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/Background;->uploadBitmap()V

    .line 111
    const-string v1, "loadTexture"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 112
    return-void
.end method
