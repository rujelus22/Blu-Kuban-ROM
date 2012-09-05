.class public abstract Lcom/cooliris/media/Texture;
.super Ljava/lang/Object;
.source "Texture.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mHeight:I

.field mId:I

.field public mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

.field mNormalizedHeight:F

.field mNormalizedWidth:F

.field mState:I

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/Texture;->mLargeThumnailInfo:Lcom/quramsoft/xiv/XIVLargeThumnailInfo;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/Texture;->mState:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/cooliris/media/Texture;->mHeight:I

    return v0
.end method

.method public final getNormalizedHeight()F
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/cooliris/media/Texture;->mNormalizedHeight:F

    return v0
.end method

.method public final getNormalizedWidth()F
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/cooliris/media/Texture;->mNormalizedWidth:F

    return v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/cooliris/media/Texture;->mState:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/cooliris/media/Texture;->mWidth:I

    return v0
.end method

.method public isCached()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoaded()Z
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Lcom/cooliris/media/Texture;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isUncachedVideo()Z
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
.end method

.method protected shouldQueue()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
