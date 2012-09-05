.class public Lcom/google/android/finsky/layout/EditorialBucketEntry;
.super Landroid/widget/FrameLayout;
.source "EditorialBucketEntry.java"


# instance fields
.field private final mLeftSeparatorPaint:Landroid/graphics/Paint;

.field private mShowLeft:Z

.field private final mTopSeparatorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0a0013

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    .line 37
    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f80

    invoke-static {v3, v0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getPixelsFromDips(FLandroid/content/res/Resources;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mTopSeparatorPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mTopSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    const v2, 0x7f0b0036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 43
    .local v1, thickness:F
    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mTopSeparatorPaint:Landroid/graphics/Paint;

    invoke-static {v1, v0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getPixelsFromDips(FLandroid/content/res/Resources;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    return-void
.end method

.method private static getPixelsFromDips(FLandroid/content/res/Resources;)F
    .registers 6
    .parameter "dips"
    .parameter "res"

    .prologue
    .line 65
    const v2, 0x7f0b0036

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 66
    .local v1, thickness:F
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 67
    .local v0, scale:F
    mul-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getHeight()I

    move-result v6

    .line 55
    .local v6, height:I
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mShowLeft:Z

    if-eqz v0, :cond_12

    .line 56
    int-to-float v4, v6

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mLeftSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mTopSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    return-void
.end method

.method public setLeftSeparatorVisibility(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/EditorialBucketEntry;->mShowLeft:Z

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->invalidate()V

    .line 49
    return-void
.end method
