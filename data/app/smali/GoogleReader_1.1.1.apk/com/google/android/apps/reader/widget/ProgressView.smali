.class public Lcom/google/android/apps/reader/widget/ProgressView;
.super Landroid/view/View;
.source "ProgressView.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x2710

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 74
    .local v3, minWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 75
    .local v2, minHeight:I
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 76
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 77
    invoke-static {v3, p1}, Lcom/google/android/apps/reader/widget/ProgressView;->getDefaultSize(II)I

    move-result v1

    .line 78
    .local v1, measuredWidth:I
    invoke-static {v2, p2}, Lcom/google/android/apps/reader/widget/ProgressView;->getDefaultSize(II)I

    move-result v0

    .line 79
    .local v0, measuredHeight:I
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/reader/widget/ProgressView;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method public setProgress(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 57
    if-gez p1, :cond_a

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Progress value is too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_a
    const/16 v0, 0x2710

    if-le p1, v0, :cond_16

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Progress value is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_16
    iput p1, p0, Lcom/google/android/apps/reader/widget/ProgressView;->mProgress:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/ProgressView;->invalidate()V

    .line 65
    return-void
.end method
