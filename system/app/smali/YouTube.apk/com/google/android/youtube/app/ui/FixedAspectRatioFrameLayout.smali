.class public Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->a:F

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object v0, Lcom/google/android/youtube/b;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->a:F

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_c

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 44
    :goto_b
    return-void

    .line 43
    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->a:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_b
.end method

.method public setAspectRatio(F)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/android/youtube/app/ui/FixedAspectRatioFrameLayout;->a:F

    .line 35
    return-void
.end method
