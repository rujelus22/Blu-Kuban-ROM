.class public Lcom/sec/android/glview/TwGLSlider;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLSlider.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;
    }
.end annotation


# static fields
.field private static final ORDER_ASCENDING:I = 0xa

.field private static final ORDER_DESCENDING:I = 0xb

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final ORIENTATION_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwGLSlider"


# instance fields
.field private mCurrentStep:I

.field private mGauge:Lcom/sec/android/glview/TwGLImage;

.field private mGaugePos:Landroid/graphics/PointF;

.field private mIndicatorResId:I

.field private mIndicatorVisibility:Z

.field private mNumOfStep:I

.field protected mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field private mOrder:I

.field private mOrientation:I

.field private mSliderBar:Lcom/sec/android/glview/TwGLImage;

.field private mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .registers 11
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "numOfStep"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 42
    iput v3, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 45
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 73
    if-lez p6, :cond_24

    .line 74
    iput p6, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 75
    :cond_24
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_32

    .line 76
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    .line 83
    :goto_2e
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 84
    return-void

    .line 79
    :cond_32
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 80
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    goto :goto_2e
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .registers 8
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "numOfStep"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    iput v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 66
    if-lez p4, :cond_24

    .line 67
    iput p4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 68
    :cond_24
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLSlider;FF)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLSlider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/glview/TwGLSlider;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method private findNearestStepId(FF)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4000

    const/4 v4, 0x0

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, interval:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v2, v3, v5

    .line 288
    .local v2, slideBarHeight:F
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_82

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v1, v3, v5

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5f

    .line 291
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_5c

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5c

    .line 292
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_59

    .line 321
    .end local v0           #i:I
    :cond_58
    :goto_58
    return v0

    .line 295
    .restart local v0       #i:I
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 290
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 299
    :cond_5f
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6f

    move v0, v4

    .line 300
    goto :goto_58

    .line 301
    :cond_6f
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_ef

    .line 302
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_58

    .line 304
    .end local v0           #i:I
    :cond_82
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_ef

    .line 305
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 306
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8f
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_ca

    .line 307
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_c7

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_c7

    .line 308
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-lez v3, :cond_58

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 306
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 315
    :cond_ca
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_db

    move v0, v4

    .line 316
    goto/16 :goto_58

    .line 317
    :cond_db
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_ef

    .line 318
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto/16 :goto_58

    .line 321
    .end local v0           #i:I
    :cond_ef
    const/4 v0, -0x1

    goto/16 :goto_58
.end method

.method private setStepIndicatorPosition()V
    .registers 8

    .prologue
    const/high16 v6, 0x4000

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 198
    .local v1, slideBarHeight:I
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_64

    .line 199
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_b0

    .line 201
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 204
    .end local v0           #i:I
    :cond_40
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_41
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_b0

    .line 205
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 208
    .end local v0           #i:I
    :cond_64
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b0

    .line 209
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 210
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_72
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_b0

    .line 211
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v1, v5

    mul-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 214
    .end local v0           #i:I
    :cond_90
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_91
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_b0

    .line 215
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v1, v4

    mul-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 219
    .end local v0           #i:I
    :cond_b0
    return-void
.end method

.method private translateStepByOrdering(I)I
    .registers 4
    .parameter "step"

    .prologue
    .line 166
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 169
    .end local p1
    :goto_6
    return p1

    .restart local p1
    :cond_7
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    goto :goto_6
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_c

    .line 226
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 227
    iput-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 231
    iput-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    .line 233
    :cond_17
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 234
    return-void
.end method

.method public getCurrentStep()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 4
    .parameter "gl"

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 250
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_e

    .line 251
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 252
    const/4 v0, 0x0

    .line 255
    :cond_e
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1b

    .line 256
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 257
    const/4 v0, 0x0

    .line 259
    :cond_1b
    return v0
.end method

.method public getNumOfStep()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    return v0
.end method

.method public initSize()V
    .registers 1

    .prologue
    .line 222
    return-void
.end method

.method public moveStep(I)Z
    .registers 14
    .parameter "to"

    .prologue
    const-wide/16 v10, 0x96

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 120
    if-ltz p1, :cond_ff

    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge p1, v3, :cond_ff

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v1

    .line 122
    .local v1, newStep:I
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-ne v3, v1, :cond_15

    move v3, v4

    .line 152
    .end local v1           #newStep:I
    :goto_14
    return v3

    .line 125
    .restart local v1       #newStep:I
    :cond_15
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 126
    .local v2, oldPos:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v6, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 128
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 129
    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 130
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_a9

    .line 132
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    if-ne v3, v4, :cond_ac

    .line 133
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v6, v9, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 134
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v3, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 135
    .local v0, moveAnim:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 136
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 137
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 138
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .end local v0           #moveAnim:Landroid/view/animation/Animation;
    :cond_a9
    :goto_a9
    move v3, v4

    .line 150
    goto/16 :goto_14

    .line 140
    :cond_ac
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_a9

    .line 141
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v9, v6, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 142
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {v0, v9, v9, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 143
    .restart local v0       #moveAnim:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 144
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 145
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 146
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_a9

    .end local v0           #moveAnim:Landroid/view/animation/Animation;
    .end local v1           #newStep:I
    .end local v2           #oldPos:Landroid/graphics/PointF;
    :cond_ff
    move v3, v5

    .line 152
    goto/16 :goto_14
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    if-eqz v0, :cond_15

    .line 264
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_15

    .line 265
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 269
    :cond_15
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_26

    .line 270
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 272
    :cond_26
    return-void
.end method

.method protected onLayoutUpdate()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_9

    .line 277
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onLayoutUpdate()V

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_12

    .line 280
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onLayoutUpdate()V

    .line 282
    :cond_12
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 3
    .parameter "gl"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 241
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_12

    .line 242
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 244
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_9

    .line 459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 462
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_12

    .line 463
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 465
    :cond_12
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 325
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLSlider;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    .line 329
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 330
    .local v0, et:Landroid/view/MotionEvent;
    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/glview/TwGLSlider;->mapPointReverse([FFF)V

    .line 331
    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 332
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-nez v8, :cond_24

    .line 333
    const/4 v8, 0x1

    .line 453
    :goto_23
    return v8

    .line 334
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v5, v8, v9

    .line 335
    .local v5, slideBarTop:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 337
    .local v4, slideBarHeight:F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_b5

    .line 338
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_87

    .line 339
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_6c

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6e

    .line 340
    :cond_6c
    const/4 v8, 0x0

    goto :goto_23

    .line 342
    :cond_6e
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 343
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 354
    :cond_85
    :goto_85
    const/4 v8, 0x1

    goto :goto_23

    .line 345
    :cond_87
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_85

    .line 346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_9f

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v4

    if-lez v8, :cond_a1

    .line 347
    :cond_9f
    const/4 v8, 0x0

    goto :goto_23

    .line 349
    :cond_a1
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/PointF;->y:F

    .line 351
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_85

    .line 355
    :cond_b5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a6

    .line 357
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_132

    .line 358
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_10a

    .line 359
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 365
    :goto_d4
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 366
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_107

    .line 367
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v7

    .line 368
    .local v7, tempStep:I
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v7, v8, :cond_107

    .line 369
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 370
    iput v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 391
    .end local v7           #tempStep:I
    :cond_107
    :goto_107
    const/4 v8, 0x1

    goto/16 :goto_23

    .line 360
    :cond_10a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_124

    .line 361
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    iput v9, v8, Landroid/graphics/PointF;->x:F

    goto :goto_d4

    .line 363
    :cond_124
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/PointF;->x:F

    goto :goto_d4

    .line 373
    :cond_132
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_107

    .line 374
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_180

    .line 375
    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v9, Landroid/graphics/PointF;->y:F

    .line 382
    :goto_150
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 383
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_107

    .line 384
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v7

    .line 385
    .restart local v7       #tempStep:I
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v7, v8, :cond_107

    .line 386
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 387
    iput v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    goto :goto_107

    .line 376
    .end local v7           #tempStep:I
    :cond_180
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v4

    if-lez v8, :cond_19c

    .line 377
    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v9, Landroid/graphics/PointF;->y:F

    goto :goto_150

    .line 379
    :cond_19c
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/PointF;->y:F

    goto :goto_150

    .line 392
    :cond_1a6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1b4

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_204

    .line 394
    :cond_1b4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 395
    .local v2, posX:F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 396
    .local v3, posY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v8

    sub-float v8, v2, v8

    sub-float v9, v3, v5

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v1

    .line 399
    .local v1, nearestId:I
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_1d9

    .line 400
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v1, v8, :cond_1d9

    .line 401
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 404
    :cond_1d9
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 407
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_207

    .line 408
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/sec/android/glview/TwGLSlider$1;

    invoke-direct {v8, p0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider$1;-><init>(Lcom/sec/android/glview/TwGLSlider;IFF)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 424
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 445
    .end local v6           #t:Ljava/lang/Thread;
    :cond_1ed
    :goto_1ed
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_1fe

    .line 446
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v1, v8, :cond_1fe

    .line 447
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 450
    :cond_1fe
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 451
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 453
    .end local v1           #nearestId:I
    .end local v2           #posX:F
    .end local v3           #posY:F
    :cond_204
    const/4 v8, 0x1

    goto/16 :goto_23

    .line 425
    .restart local v1       #nearestId:I
    .restart local v2       #posX:F
    .restart local v3       #posY:F
    :cond_207
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1ed

    .line 426
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/sec/android/glview/TwGLSlider$2;

    invoke-direct {v8, p0, v1}, Lcom/sec/android/glview/TwGLSlider$2;-><init>(Lcom/sec/android/glview/TwGLSlider;I)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    .restart local v6       #t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_1ed
.end method

.method public setCurrentStep(I)Z
    .registers 9
    .parameter "step"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 97
    if-ltz p1, :cond_77

    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_77

    .line 98
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    .line 99
    .local v0, newStep:I
    const-string v1, "TwGLSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_36

    move v1, v2

    .line 114
    .end local v0           #newStep:I
    :goto_35
    return v1

    .line 103
    .restart local v0       #newStep:I
    :cond_36
    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 104
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_66

    .line 106
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    if-ne v1, v2, :cond_68

    .line 107
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    :cond_66
    :goto_66
    move v1, v2

    .line 112
    goto :goto_35

    .line 108
    :cond_68
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_66

    .line 109
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_66

    .line 114
    .end local v0           #newStep:I
    :cond_77
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public setGauge(IFF)V
    .registers 12
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    move v4, p2

    move v5, p3

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    .line 175
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 177
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLSlider;->setStepIndicatorPosition()V

    .line 179
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 180
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 181
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 182
    return-void
.end method

.method public setIndicatorVisibility(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 193
    return-void
.end method

.method public setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 61
    return-void
.end method

.method public setOrder(I)Z
    .registers 3
    .parameter "option"

    .prologue
    .line 157
    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    .line 158
    :cond_8
    iput p1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setSliderBar(IFF)V
    .registers 7
    .parameter "resId"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 185
    iput p1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorResId:I

    .line 187
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorResId:I

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    .line 188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 189
    return-void
.end method
