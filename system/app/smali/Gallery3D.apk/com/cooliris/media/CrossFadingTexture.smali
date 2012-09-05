.class public Lcom/cooliris/media/CrossFadingTexture;
.super Ljava/lang/Object;
.source "CrossFadingTexture.java"


# instance fields
.field private mAnimatedMixRatio:F

.field private mBind:Z

.field private mBindUsingMixed:Z

.field private mFadeNecessary:Z

.field private mFadingTexture:Lcom/cooliris/media/Texture;

.field private mMixRatio:F

.field private mTexture:Lcom/cooliris/media/Texture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    .line 32
    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 34
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 36
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    .line 38
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/cooliris/media/Texture;)V
    .registers 5
    .parameter "initialTexture"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    .line 32
    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 34
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 36
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    .line 38
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 45
    iput v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    .line 46
    iput v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 47
    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 48
    iput-object p1, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    .line 49
    iput-object p1, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    .line 50
    return-void
.end method


# virtual methods
.method public bind(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 11
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x4

    const/high16 v6, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    iget-boolean v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    if-eqz v4, :cond_b

    .line 153
    :goto_a
    return v2

    .line 115
    :cond_b
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    iget v4, v4, Lcom/cooliris/media/Texture;->mState:I

    if-ne v4, v5, :cond_17

    .line 116
    iput-object v7, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    .line 118
    :cond_17
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    if-eqz v4, :cond_23

    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    iget v4, v4, Lcom/cooliris/media/Texture;->mState:I

    if-ne v4, v5, :cond_23

    .line 119
    iput-object v7, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    .line 121
    :cond_23
    iput-boolean v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, fadingTextureLoaded:Z
    const/4 v1, 0x0

    .line 124
    .local v1, textureLoaded:Z
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    if-eqz v4, :cond_31

    .line 125
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    .line 127
    :cond_31
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    if-eqz v4, :cond_40

    .line 128
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 129
    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v1

    .line 131
    :cond_40
    iget-boolean v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    if-eqz v4, :cond_5b

    .line 132
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getAlpha()F

    move-result v4

    iget v5, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_53

    .line 133
    iget v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    invoke-virtual {p1, v4}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 135
    :cond_53
    iget v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_5b

    .line 136
    iput-boolean v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 139
    :cond_5b
    if-nez v1, :cond_61

    if-nez v0, :cond_61

    move v2, v3

    .line 140
    goto :goto_a

    .line 142
    :cond_61
    iput-boolean v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    .line 143
    iget v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_72

    if-eqz v0, :cond_72

    .line 144
    iget-object v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v3}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    goto :goto_a

    .line 145
    :cond_72
    iget v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v3, v3, v6

    if-gez v3, :cond_92

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getAlpha()F

    move-result v3

    iget v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_92

    iget-object v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 148
    :cond_92
    iget-object v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v3}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    goto/16 :goto_a

    .line 150
    :cond_99
    iput-boolean v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 151
    iget-object v3, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    iget-object v4, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    iget v5, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    invoke-virtual {p1, v3, v4, v5}, Lcom/cooliris/media/RenderView;->bindMixed(Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;F)Z

    goto/16 :goto_a
.end method

.method public getTexture()Lcom/cooliris/media/Texture;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    return-object v0
.end method

.method public setTexture(Lcom/cooliris/media/Texture;)V
    .registers 4
    .parameter "texture"

    .prologue
    const/high16 v1, 0x3f80

    .line 71
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 86
    :cond_12
    :goto_12
    return-void

    .line 74
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 75
    iget-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    if-nez v0, :cond_1d

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadeNecessary:Z

    .line 78
    :cond_1d
    iget-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    iput-object v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    .line 83
    :goto_25
    iput-object p1, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 85
    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    goto :goto_12

    .line 81
    :cond_2d
    iput-object p1, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    goto :goto_25
.end method

.method public unbind(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 5
    .parameter "view"
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    if-eqz v0, :cond_e

    .line 158
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->unbindMixed()V

    .line 159
    iput-boolean v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mBindUsingMixed:Z

    .line 161
    :cond_e
    iput-boolean v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mBind:Z

    .line 162
    return-void
.end method

.method public update(F)Z
    .registers 6
    .parameter "timeElapsed"

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v1}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mFadingTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v1}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 102
    iget v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    iget v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    const/high16 v3, 0x3f00

    mul-float/2addr v3, p1

    invoke-static {v1, v2, v3}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v1

    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    .line 104
    iget v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mMixRatio:F

    iget v2, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    .line 107
    :cond_2f
    :goto_2f
    return v0

    .line 106
    :cond_30
    const/4 v1, 0x0

    iput v1, p0, Lcom/cooliris/media/CrossFadingTexture;->mAnimatedMixRatio:F

    goto :goto_2f
.end method
