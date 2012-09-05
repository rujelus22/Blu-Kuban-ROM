.class public final Lcom/cooliris/media/BoundaryLayer;
.super Lcom/cooliris/media/Layer;
.source "BoundaryLayer.java"


# static fields
.field private static final CHATTERING_COUNT:Ljava/lang/Integer;

.field private static final RES_BOTTOM_EDGE:I

.field private static final RES_BOTTOM_GLOW:I

.field private static final RES_LEFT_EDGE:I

.field private static final RES_LEFT_GLOW:I

.field private static final RES_RIGHT_EDGE:I

.field private static final RES_RIGHT_GLOW:I

.field private static final RES_TOP_EDGE:I

.field private static final RES_TOP_GLOW:I


# instance fields
.field private mAccumulateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBorder:I

.field private final mBottom:Lcom/cooliris/media/BoundaryImage;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlpha:F

.field private mGLImageHeight:F

.field private mGLImageWidth:F

.field private final mLeft:Lcom/cooliris/media/BoundaryImage;

.field private final mRight:Lcom/cooliris/media/BoundaryImage;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mStartX:F

.field private mStartY:F

.field private final mTop:Lcom/cooliris/media/BoundaryImage;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/BoundaryLayer;->CHATTERING_COUNT:Ljava/lang/Integer;

    .line 38
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020063

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_LEFT_EDGE:I

    .line 40
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020067

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_LEFT_GLOW:I

    .line 42
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020065

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_TOP_EDGE:I

    .line 44
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020069

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_TOP_GLOW:I

    .line 46
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020062

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_BOTTOM_EDGE:I

    .line 48
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020066

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_BOTTOM_GLOW:I

    .line 50
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020064

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_RIGHT_EDGE:I

    .line 52
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020068

    sput v0, Lcom/cooliris/media/BoundaryLayer;->RES_RIGHT_GLOW:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mAccumulateMap:Ljava/util/HashMap;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    .line 63
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    .line 71
    iput-object p1, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    .line 74
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    .line 76
    new-instance v0, Lcom/cooliris/media/BoundaryImage;

    invoke-direct {v0, p1}, Lcom/cooliris/media/BoundaryImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    .line 77
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    sget v1, Lcom/cooliris/media/BoundaryLayer;->RES_LEFT_EDGE:I

    sget v2, Lcom/cooliris/media/BoundaryLayer;->RES_LEFT_GLOW:I

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImages(II)V

    .line 78
    new-instance v0, Lcom/cooliris/media/BoundaryImage;

    invoke-direct {v0, p1}, Lcom/cooliris/media/BoundaryImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    .line 79
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    sget v1, Lcom/cooliris/media/BoundaryLayer;->RES_TOP_EDGE:I

    sget v2, Lcom/cooliris/media/BoundaryLayer;->RES_TOP_GLOW:I

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImages(II)V

    .line 80
    new-instance v0, Lcom/cooliris/media/BoundaryImage;

    invoke-direct {v0, p1}, Lcom/cooliris/media/BoundaryImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    .line 81
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    sget v1, Lcom/cooliris/media/BoundaryLayer;->RES_BOTTOM_EDGE:I

    sget v2, Lcom/cooliris/media/BoundaryLayer;->RES_BOTTOM_GLOW:I

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImages(II)V

    .line 82
    new-instance v0, Lcom/cooliris/media/BoundaryImage;

    invoke-direct {v0, p1}, Lcom/cooliris/media/BoundaryImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    .line 83
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    sget v1, Lcom/cooliris/media/BoundaryLayer;->RES_RIGHT_EDGE:I

    sget v2, Lcom/cooliris/media/BoundaryLayer;->RES_RIGHT_GLOW:I

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImages(II)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/BoundaryLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->setImageSize()V

    return-void
.end method

.method static synthetic access$100(Lcom/cooliris/media/BoundaryLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->setPosition()V

    return-void
.end method

.method private clearBorder(I)V
    .registers 4
    .parameter "border_type"

    .prologue
    .line 295
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBorder:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBorder:I

    .line 296
    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    .line 323
    return-void
.end method

.method private getCurrentImageHeight()F
    .registers 4

    .prologue
    .line 223
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageWidth:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageHeight:F

    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 224
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    mul-float/2addr v0, v1

    .line 226
    :goto_19
    return v0

    :cond_1a
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    mul-float/2addr v0, v1

    goto :goto_19
.end method

.method private getCurrentImagePosX()F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v0

    .line 200
    .local v0, displayRegionWidth:F
    iget v3, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 201
    .local v1, imagePosX:F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_11

    .line 203
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 201
    goto :goto_10
.end method

.method private getCurrentImagePosY()F
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v0

    .line 208
    .local v0, displayRegionHeight:F
    iget v3, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 209
    .local v1, imagePosY:F
    cmpl-float v3, v1, v2

    if-lez v3, :cond_11

    .line 211
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 209
    goto :goto_10
.end method

.method private getCurrentImageWidth()F
    .registers 4

    .prologue
    .line 215
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageWidth:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageHeight:F

    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 216
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    mul-float/2addr v0, v1

    .line 218
    :goto_13
    return v0

    :cond_14
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    mul-float/2addr v0, v1

    goto :goto_13
.end method

.method private handleTouchMoved(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x437f

    .line 143
    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mStartX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 144
    .local v0, dx:F
    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mStartY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v1, v2

    .line 146
    .local v1, dy:F
    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    div-float v2, v0, v2

    iget v3, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    const/high16 v3, 0x427c

    add-float/2addr v2, v3

    iput v2, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    .line 148
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 149
    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    .line 151
    :cond_38
    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_40

    .line 152
    iput v4, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    .line 155
    :cond_40
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->setPositionAndSize()V

    .line 156
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->setHidden()V

    .line 157
    return-void
.end method

.method private isAnyEdgesInScreen(I)Z
    .registers 5
    .parameter "border"

    .prologue
    const/4 v2, 0x0

    .line 285
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    .line 286
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_19

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1f

    :cond_19
    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_1f

    .line 288
    const/4 v0, 0x1

    .line 291
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isSet(I)Z
    .registers 4
    .parameter "border"

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-direct {p0, p1}, Lcom/cooliris/media/BoundaryLayer;->isAnyEdgesInScreen(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mBorder:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private removeChattering(II)V
    .registers 8
    .parameter "currBorder"
    .parameter "border_type"

    .prologue
    const/4 v4, 0x0

    .line 183
    and-int v1, p1, p2

    if-nez v1, :cond_47

    .line 184
    iget-object v1, p0, Lcom/cooliris/media/BoundaryLayer;->mAccumulateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_18

    .line 186
    new-instance v0, Ljava/lang/Integer;

    .end local v0           #count:Ljava/lang/Integer;
    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 187
    .restart local v0       #count:Ljava/lang/Integer;
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/cooliris/media/BoundaryLayer;->CHATTERING_COUNT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_30

    if-nez p1, :cond_48

    .line 189
    :cond_30
    iget-object v1, p0, Lcom/cooliris/media/BoundaryLayer;->mAccumulateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-direct {p0, p2}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 191
    invoke-direct {p0, p2}, Lcom/cooliris/media/BoundaryLayer;->clearBorder(I)V

    .line 196
    .end local v0           #count:Ljava/lang/Integer;
    :cond_47
    :goto_47
    return-void

    .line 193
    .restart local v0       #count:Ljava/lang/Integer;
    :cond_48
    iget-object v1, p0, Lcom/cooliris/media/BoundaryLayer;->mAccumulateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47
.end method

.method private setHidden()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 161
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    .line 165
    :goto_e
    invoke-direct {p0, v1}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 166
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    .line 170
    :goto_19
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 171
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    .line 175
    :goto_26
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/cooliris/media/BoundaryLayer;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 176
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    .line 180
    :goto_32
    return-void

    .line 163
    :cond_33
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    goto :goto_e

    .line 168
    :cond_39
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    goto :goto_19

    .line 173
    :cond_3f
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    goto :goto_26

    .line 178
    :cond_45
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setHidden(Z)V

    goto :goto_32
.end method

.method private setImageSize()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 242
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4c

    .line 243
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 244
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 250
    :goto_1f
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5d

    .line 251
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 252
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 257
    :goto_3d
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setEdgeOffset(F)V

    .line 258
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryImage;->setEdgeOffset(F)V

    .line 259
    return-void

    .line 246
    :cond_4c
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 247
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    goto :goto_1f

    .line 254
    :cond_5d
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    .line 255
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setImageSize(II)V

    goto :goto_3d
.end method

.method private setPosition()V
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v1

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    .line 263
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v1

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    .line 264
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_63

    .line 265
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v1

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v2

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageHeight()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v3}, Lcom/cooliris/media/BoundaryImage;->getGlowHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    .line 269
    :goto_3e
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_77

    .line 270
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v1

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImageWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v2}, Lcom/cooliris/media/BoundaryImage;->getGlowWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    .line 274
    :goto_62
    return-void

    .line 267
    :cond_63
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosX()F

    move-result v1

    iget v2, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    iget-object v3, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v3}, Lcom/cooliris/media/BoundaryImage;->getGlowHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    goto :goto_3e

    .line 272
    :cond_77
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    iget v1, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    iget-object v2, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v2}, Lcom/cooliris/media/BoundaryImage;->getGlowWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->getCurrentImagePosY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryImage;->setPosition(FF)V

    goto :goto_62
.end method

.method private setPositionAndSize()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/cooliris/media/BoundaryLayer$1;

    invoke-direct {v1, p0}, Lcom/cooliris/media/BoundaryLayer$1;-><init>(Lcom/cooliris/media/BoundaryLayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method


# virtual methods
.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 300
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BoundaryImage;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 304
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BoundaryImage;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 305
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BoundaryImage;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 306
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BoundaryImage;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 307
    return-void
.end method

.method onConfigurationChanged()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenWidth:F

    .line 137
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mScreenHeight:F

    .line 139
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/cooliris/media/BoundaryLayer;->clearBorder(I)V

    .line 140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v2, p0, Lcom/cooliris/media/BoundaryLayer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 112
    :goto_10
    return v4

    .line 92
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 93
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 95
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    goto :goto_10

    .line 97
    :pswitch_21
    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mStartX:F

    .line 98
    iput v1, p0, Lcom/cooliris/media/BoundaryLayer;->mStartY:F

    .line 100
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->setHidden()V

    goto :goto_10

    .line 104
    :pswitch_29
    invoke-direct {p0, v0, v1}, Lcom/cooliris/media/BoundaryLayer;->handleTouchMoved(FF)V

    goto :goto_10

    .line 108
    :pswitch_2d
    invoke-direct {p0}, Lcom/cooliris/media/BoundaryLayer;->close()V

    goto :goto_10

    .line 95
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 5
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 311
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mCurrentAlpha:F

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 312
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mLeft:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryImage;->reset()V

    .line 316
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mTop:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryImage;->reset()V

    .line 317
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBottom:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryImage;->reset()V

    .line 318
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer;->mRight:Lcom/cooliris/media/BoundaryImage;

    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryImage;->reset()V

    .line 319
    return-void
.end method

.method setBorder(I)V
    .registers 3
    .parameter "border"

    .prologue
    .line 117
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/BoundaryLayer;->removeChattering(II)V

    .line 118
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/BoundaryLayer;->removeChattering(II)V

    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/BoundaryLayer;->removeChattering(II)V

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/BoundaryLayer;->removeChattering(II)V

    .line 122
    iget v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBorder:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/BoundaryLayer;->mBorder:I

    .line 123
    return-void
.end method

.method setImageSize(FF)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 126
    iput p1, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageWidth:F

    .line 127
    iput p2, p0, Lcom/cooliris/media/BoundaryLayer;->mGLImageHeight:F

    .line 128
    return-void
.end method

.method setZoomValue(F)V
    .registers 3
    .parameter "zoomValue"

    .prologue
    .line 131
    iput p1, p0, Lcom/cooliris/media/BoundaryLayer;->mZoomValue:F

    .line 132
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/cooliris/media/BoundaryLayer;->clearBorder(I)V

    .line 133
    return-void
.end method
