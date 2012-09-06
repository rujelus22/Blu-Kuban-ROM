.class public Lcom/google/android/music/lockscreen/DrawableTexture;
.super Ljava/lang/Object;
.source "DrawableTexture.java"


# static fields
.field private static sStringPropertyToInterger:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private mAlphaDelay:J

.field private mAlphaDuration:J

.field private mAlphaStartTime:J

.field private mAnimationDelay:J

.field private mAnimationDuration:J

.field private mAnimationStartTime:J

.field private mH:F

.field private mMMatrix:[F

.field private mOriAlpha:F

.field private mOriScaleX:F

.field private mOriScaleY:F

.field private mOriX:F

.field private mOriY:F

.field private mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

.field private mScaleX:F

.field private mScaleY:F

.field private mScene:Lcom/google/android/music/lockscreen/WaveScene;

.field public mTextureId:I

.field private mToAlpha:F

.field private mToScaleX:F

.field private mToScaleY:F

.field private mToX:F

.field private mToY:F

.field private mW:F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    const-string v1, "y"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    const-string v1, "scaleX"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    const-string v1, "scaleY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    const-string v1, "alpha"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/google/android/music/lockscreen/WaveScene;)V
    .registers 3
    .parameter "scene"

    .prologue
    const/high16 v0, 0x3f80

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleX:F

    .line 34
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleY:F

    .line 35
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    .line 40
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleX:F

    .line 41
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleY:F

    .line 42
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToAlpha:F

    .line 46
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleX:F

    .line 47
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleY:F

    .line 48
    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriAlpha:F

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mMMatrix:[F

    .line 74
    iput-object p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScene:Lcom/google/android/music/lockscreen/WaveScene;

    .line 75
    invoke-virtual {p1}, Lcom/google/android/music/lockscreen/WaveScene;->getRenderer()Lcom/google/android/music/lockscreen/WaveRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    .line 76
    return-void
.end method

.method private getPropertyIntFromString(Ljava/lang/String;)I
    .registers 3
    .parameter "property"

    .prologue
    .line 281
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 282
    sget-object v0, Lcom/google/android/music/lockscreen/DrawableTexture;->sStringPropertyToInterger:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private updateAlpha()Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v5}, Lcom/google/android/music/lockscreen/WaveRenderer;->getCurrentTime()J

    move-result-wide v0

    .line 140
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaStartTime:J

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDelay:J

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gtz v5, :cond_12

    .line 158
    :goto_11
    return v3

    .line 143
    :cond_12
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaStartTime:J

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDuration:J

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDelay:J

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-ltz v5, :cond_20

    move v3, v4

    .line 145
    goto :goto_11

    .line 147
    :cond_20
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDuration:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2f

    .line 149
    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToAlpha:F

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setAlpha(F)V

    move v3, v4

    .line 150
    goto :goto_11

    .line 153
    :cond_2f
    iget-wide v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaStartTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDelay:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDuration:J

    long-to-float v5, v5

    div-float v2, v4, v5

    .line 154
    .local v2, delta:F
    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/android/music/lockscreen/DrawableTexture;->getInterpolation(F)F

    move-result v2

    .line 156
    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriAlpha:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToAlpha:F

    iget v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriAlpha:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    goto :goto_11
.end method

.method private updateProperties()Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v5}, Lcom/google/android/music/lockscreen/WaveRenderer;->getCurrentTime()J

    move-result-wide v0

    .line 104
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationStartTime:J

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDelay:J

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-gtz v5, :cond_12

    .line 129
    :goto_11
    return v3

    .line 107
    :cond_12
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationStartTime:J

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDuration:J

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDelay:J

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-ltz v5, :cond_20

    move v3, v4

    .line 109
    goto :goto_11

    .line 111
    :cond_20
    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDuration:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3e

    .line 113
    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToX:F

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setX(F)V

    .line 114
    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToY:F

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setY(F)V

    .line 115
    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleX:F

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleX(F)V

    .line 116
    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleY:F

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/DrawableTexture;->setScaleY(F)V

    move v3, v4

    .line 117
    goto :goto_11

    .line 120
    :cond_3e
    iget-wide v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationStartTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDelay:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDuration:J

    long-to-float v5, v5

    div-float v2, v4, v5

    .line 121
    .local v2, delta:F
    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 122
    invoke-virtual {p0, v2}, Lcom/google/android/music/lockscreen/DrawableTexture;->getInterpolation(F)F

    move-result v2

    .line 124
    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriX:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToX:F

    iget v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mX:F

    .line 125
    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriY:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToY:F

    iget v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mY:F

    .line 126
    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleX:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleX:F

    iget v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleX:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleX:F

    .line 127
    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleY:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleY:F

    iget v6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleY:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleY:F

    goto :goto_11
.end method


# virtual methods
.method public addAnimTo(JJLjava/lang/String;FZ)V
    .registers 12
    .parameter "duration"
    .parameter "delay"
    .parameter "property"
    .parameter "toValue"
    .parameter "replace"

    .prologue
    .line 237
    invoke-direct {p0, p5}, Lcom/google/android/music/lockscreen/DrawableTexture;->getPropertyIntFromString(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, p:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    .line 240
    iget-object v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v1}, Lcom/google/android/music/lockscreen/WaveRenderer;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationStartTime:J

    .line 241
    iput-wide p3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDelay:J

    .line 242
    iput-wide p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAnimationDuration:J

    .line 248
    :goto_13
    packed-switch v0, :pswitch_data_60

    .line 270
    const-string v1, "DrawableTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow animation property!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_2e
    return-void

    .line 244
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    invoke-virtual {v1}, Lcom/google/android/music/lockscreen/WaveRenderer;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaStartTime:J

    .line 245
    iput-wide p3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDelay:J

    .line 246
    iput-wide p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlphaDuration:J

    goto :goto_13

    .line 250
    :pswitch_3c
    iput p6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToX:F

    .line 251
    iget v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mX:F

    iput v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriX:F

    goto :goto_2e

    .line 254
    :pswitch_43
    iput p6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToY:F

    .line 255
    iget v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mY:F

    iput v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriY:F

    goto :goto_2e

    .line 258
    :pswitch_4a
    iput p6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleX:F

    .line 259
    iget v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleX:F

    iput v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleX:F

    goto :goto_2e

    .line 262
    :pswitch_51
    iput p6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleY:F

    .line 263
    iget v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleY:F

    iput v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleY:F

    goto :goto_2e

    .line 266
    :pswitch_58
    iput p6, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToAlpha:F

    .line 267
    iget v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    iput v1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriAlpha:F

    goto :goto_2e

    .line 248
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_43
        :pswitch_4a
        :pswitch_51
        :pswitch_58
    .end packed-switch
.end method

.method public getInterpolation(F)F
    .registers 6
    .parameter "input"

    .prologue
    const/high16 v3, 0x3f80

    .line 134
    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 135
    .local v0, result:F
    return v0
.end method

.method public onDrawFrame()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/DrawableTexture;->updateProperties()Z

    move-result v0

    .line 82
    .local v0, stillAnimating:Z
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/DrawableTexture;->updateAlpha()Z

    move-result v2

    or-int/2addr v0, v2

    .line 83
    iget v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_18

    move v0, v1

    .line 95
    .end local v0           #stillAnimating:Z
    :goto_17
    return v0

    .line 86
    .restart local v0       #stillAnimating:Z
    :cond_18
    const/16 v2, 0xde1

    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 88
    iget-object v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mMMatrix:[F

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 89
    iget-object v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mMMatrix:[F

    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mX:F

    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mY:F

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 90
    iget-object v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mMMatrix:[F

    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mW:F

    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleX:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mH:F

    iget v5, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleY:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-static {v2, v1, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 91
    iget-object v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget-object v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mMMatrix:[F

    invoke-virtual {v2, v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->useModelMatrix([F)V

    .line 92
    iget-object v2, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mRenderer:Lcom/google/android/music/lockscreen/WaveRenderer;

    iget v3, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    invoke-virtual {v2, v3}, Lcom/google/android/music/lockscreen/WaveRenderer;->setAlpha(F)V

    .line 94
    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_17
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "a"

    .prologue
    .line 222
    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriAlpha:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToAlpha:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mAlpha:F

    .line 223
    return-void
.end method

.method public setRadius(F)V
    .registers 4
    .parameter "r"

    .prologue
    const/high16 v1, 0x4000

    .line 209
    mul-float v0, p1, v1

    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mW:F

    .line 210
    mul-float v0, p1, v1

    iput v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mH:F

    .line 211
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .parameter "scaleX"

    .prologue
    .line 214
    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleX:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleX:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleX:F

    .line 215
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .parameter "scaleY"

    .prologue
    .line 218
    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriScaleY:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToScaleY:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mScaleY:F

    .line 219
    return-void
.end method

.method public setX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 192
    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriX:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToX:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mX:F

    .line 193
    return-void
.end method

.method public setY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 196
    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mOriY:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mToY:F

    iput p1, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mY:F

    .line 197
    return-void
.end method

.method public final width()F
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mW:F

    return v0
.end method

.method public final x()F
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mX:F

    return v0
.end method

.method public final y()F
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/music/lockscreen/DrawableTexture;->mY:F

    return v0
.end method
