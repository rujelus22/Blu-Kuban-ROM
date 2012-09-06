.class public Lcom/android/browser/view/StopProgressView;
.super Landroid/widget/ProgressBar;
.source "StopProgressView.java"


# instance fields
.field mHeight:I

.field mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/view/StopProgressView;->init(Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/android/browser/view/StopProgressView;->init(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p2}, Lcom/android/browser/view/StopProgressView;->init(Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-direct {p0, p2}, Lcom/android/browser/view/StopProgressView;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "attrs"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/browser/view/StopProgressView;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/StopProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v0, p0, Lcom/android/browser/view/StopProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/StopProgressView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/view/StopProgressView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hideProgress()V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/StopProgressView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v2, p0, Lcom/android/browser/view/StopProgressView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_29

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/view/StopProgressView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/StopProgressView;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 84
    .local v0, l:I
    invoke-virtual {p0}, Lcom/android/browser/view/StopProgressView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/StopProgressView;->mHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 85
    .local v1, t:I
    iget-object v2, p0, Lcom/android/browser/view/StopProgressView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/browser/view/StopProgressView;->mWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/browser/view/StopProgressView;->mHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v2, p0, Lcom/android/browser/view/StopProgressView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    .end local v0           #l:I
    .end local v1           #t:I
    :cond_29
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 74
    invoke-super/range {p0 .. p5}, Landroid/widget/ProgressBar;->onLayout(ZIIII)V

    .line 75
    sub-int v0, p4, p2

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/browser/view/StopProgressView;->mWidth:I

    .line 76
    sub-int v0, p5, p3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/browser/view/StopProgressView;->mHeight:I

    .line 77
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/browser/view/StopProgressView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    return-void
.end method

.method public showProgress()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/browser/view/StopProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/browser/view/StopProgressView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method
