.class public Lcom/arcsoft/widget/DeleteAnimation;
.super Ljava/lang/Object;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/DeleteAnimation$1;,
        Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;,
        Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;,
        Lcom/arcsoft/widget/DeleteAnimation$CurrBackAnimation;,
        Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$NextScaleAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;,
        Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim2;,
        Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;,
        Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    }
.end annotation


# static fields
.field private static final ALPHA_VALUE:I = 0x50

.field private static final CORNER_TURNOVER_POINT:Landroid/graphics/PointF; = null

.field public static final MINSIZE:I = 0x1

.field private static final SCALE_ANIMATION_DURATION:I = 0x190

.field private static final SCALE_VALUE:F = 0.8f


# instance fields
.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private TRANS_VALUE:F

.field private cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

.field private currView:Lcom/arcsoft/widget/BitmapView;

.field private currViewlayout:Landroid/widget/RelativeLayout;

.field private deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLayout:Landroid/view/View;

.field private nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

.field private nextView:Lcom/arcsoft/widget/BitmapView;

.field private nextViewlayout:Landroid/widget/RelativeLayout;

.field private preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

.field private preView:Lcom/arcsoft/widget/BitmapView;

.field private preViewlayout:Landroid/widget/RelativeLayout;

.field private prepareAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x42dc

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/arcsoft/widget/DeleteAnimation;->CORNER_TURNOVER_POINT:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    .line 31
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    .line 32
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    .line 33
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    .line 34
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->prepareAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 39
    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 66
    iput p1, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    .line 67
    iput p2, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    .line 68
    return-void
.end method

.method static synthetic access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F

    return v0
.end method

.method static synthetic access$1400(Lcom/arcsoft/widget/DeleteAnimation;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    return v0
.end method

.method static synthetic access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    return-object v0
.end method

.method static synthetic access$1900()Landroid/graphics/PointF;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/arcsoft/widget/DeleteAnimation;->CORNER_TURNOVER_POINT:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getDeleteCurrAnimation()Landroid/view/animation/Animation;
    .registers 14

    .prologue
    const-wide/16 v11, 0xfa

    const/high16 v1, 0x3f80

    const v2, 0x3f266666

    const/4 v10, 0x0

    .line 656
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 657
    .local v8, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v5, v3

    iget v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 659
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 660
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x40a0

    iget v2, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v7, v10, v1, v2, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 662
    .local v7, rotate:Landroid/view/animation/RotateAnimation;
    invoke-virtual {v7, v11, v12}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 663
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {v9, v10, v10, v10, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 665
    .local v9, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x2ee

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 666
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 668
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 669
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 670
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 672
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 673
    return-object v8
.end method

.method private initView()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/widget/BitmapView;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    .line 77
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/widget/BitmapView;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    .line 78
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/widget/BitmapView;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    .line 80
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    .line 84
    return-void
.end method

.method private setViewDisplayArea()V
    .registers 9

    .prologue
    .line 100
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v5, v5, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .local v2, preDst:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v5, v5, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    iget-object v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v6, v6, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v6, v6, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    .local v0, currDst:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v5, v5, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I

    iget-object v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v6, v6, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_HEIGHT:I

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v7, v7, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    .local v1, nextDst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setOriDisplayRect(Landroid/graphics/RectF;)V

    .line 113
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v3, v2}, Lcom/arcsoft/widget/BitmapView;->setOriDisplayRect(Landroid/graphics/RectF;)V

    .line 114
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v3, v1}, Lcom/arcsoft/widget/BitmapView;->setOriDisplayRect(Landroid/graphics/RectF;)V

    .line 115
    return-void
.end method

.method private startCurrViewAnimation()V
    .registers 5

    .prologue
    .line 208
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 209
    .local v2, set:Landroid/view/animation/AnimationSet;
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->getDeleteCurrAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 211
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 212
    .local v1, cornerAnim:Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 214
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 216
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    return-void
.end method

.method private startNextViewComeAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 230
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 231
    .local v3, set:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;

    invoke-direct {v1, p0, v5}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 232
    .local v1, preComeAnim:Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;
    new-instance v2, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;

    invoke-direct {v2, p0, v5}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 233
    .local v2, preComeAnim2:Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 234
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 235
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    invoke-direct {v0, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/BitmapView;)V

    .line 236
    .local v0, alpha:Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2a

    .line 238
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 240
    :cond_2a
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    return-void
.end method

.method private startNextViewGoAnimation()V
    .registers 6

    .prologue
    .line 220
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 221
    .local v2, set:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 222
    .local v1, anim:Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->setStartOffset(J)V

    .line 223
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    invoke-direct {v0, p0, v3}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/BitmapView;)V

    .line 224
    .local v0, alpha:Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    return-void
.end method

.method private startPreViewComeAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 184
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 185
    .local v3, set:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;

    invoke-direct {v1, p0, v5}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 186
    .local v1, preComeAnim:Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;
    new-instance v2, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim2;

    invoke-direct {v2, p0, v5}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim2;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 187
    .local v2, preComeAnim2:Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim2;
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 188
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    invoke-direct {v0, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/BitmapView;)V

    .line 190
    .local v0, alpha:Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v4, :cond_2a

    .line 192
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    :cond_2a
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    return-void
.end method

.method private startPreViewGoAnimation()V
    .registers 6

    .prologue
    .line 198
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 199
    .local v2, set:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 200
    .local v1, anim:Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->setStartOffset(J)V

    .line 201
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    invoke-direct {v0, p0, v3}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/BitmapView;)V

    .line 202
    .local v0, alpha:Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    return-void
.end method


# virtual methods
.method public cancelDeleteAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$CurrBackAnimation;

    invoke-direct {v0, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$CurrBackAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 158
    .local v0, currAnim:Lcom/arcsoft/widget/DeleteAnimation$CurrBackAnimation;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v3, :cond_f

    .line 159
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/arcsoft/widget/DeleteAnimation$CurrBackAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 160
    :cond_f
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    new-instance v2, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;

    invoke-direct {v2, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 162
    .local v2, preAnim:Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;

    invoke-direct {v1, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 164
    .local v1, nextAnim:Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    return-void
.end method

.method public clearDeleteAnimation()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_12

    .line 140
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 143
    :cond_12
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1b

    .line 144
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 146
    :cond_1b
    return-void
.end method

.method public prepareDeleteAnimation()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 123
    new-instance v2, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;

    invoke-direct {v2, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 124
    .local v2, preScaleAnim:Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->preViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    new-instance v1, Lcom/arcsoft/widget/DeleteAnimation$NextScaleAnim;

    invoke-direct {v1, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$NextScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 126
    .local v1, nextScaleAnim:Lcom/arcsoft/widget/DeleteAnimation$NextScaleAnim;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;

    invoke-direct {v0, p0, v4}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V

    .line 128
    .local v0, currScaleAnim:Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->prepareAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v3, :cond_23

    .line 129
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->prepareAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    :cond_23
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation;->currViewlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    return-void
.end method

.method public resetCorner()V
    .registers 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BitmapView;->getCornerPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 119
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v1, v0}, Lcom/arcsoft/widget/BitmapView;->setCornerTurnoverPoint(Landroid/graphics/PointF;)V

    .line 120
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "preBitmap"
    .parameter "currBitmap"
    .parameter "nextBitmap"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v0, p1}, Lcom/arcsoft/widget/BitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v0, p2}, Lcom/arcsoft/widget/BitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v0, p3}, Lcom/arcsoft/widget/BitmapView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;-><init>(Lcom/arcsoft/widget/DeleteAnimation;II)V

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    .line 92
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;-><init>(Lcom/arcsoft/widget/DeleteAnimation;II)V

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    .line 93
    new-instance v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;-><init>(Lcom/arcsoft/widget/DeleteAnimation;II)V

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    .line 95
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->setViewDisplayArea()V

    .line 96
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v0, v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v0, v0

    const v1, 0x3da3d70a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F

    .line 97
    return-void
.end method

.method public setCancelAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation;->cancelAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 154
    return-void
.end method

.method public setDeleteAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation;->deleteAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 181
    return-void
.end method

.method public setPrepareAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation;->prepareAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 150
    return-void
.end method

.method public setViewLayout(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation;->mLayout:Landroid/view/View;

    .line 72
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->initView()V

    .line 73
    return-void
.end method

.method public startDeleteAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->startCurrViewAnimation()V

    .line 170
    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v0, v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    if-le v0, v1, :cond_17

    iget-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    iget v0, v0, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    if-le v0, v1, :cond_17

    .line 172
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->startPreViewGoAnimation()V

    .line 173
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->startNextViewComeAnimation()V

    .line 177
    :goto_16
    return-void

    .line 175
    :cond_17
    invoke-direct {p0}, Lcom/arcsoft/widget/DeleteAnimation;->startPreViewComeAnimation()V

    goto :goto_16
.end method
