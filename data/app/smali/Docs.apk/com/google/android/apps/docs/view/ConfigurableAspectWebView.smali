.class public Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;
.super Landroid/webkit/WebView;
.source "ConfigurableAspectWebView.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v0, 0x3faa9fbe

    iput v0, p0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->a:F

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v0, 0x7fffffff

    const/high16 v6, 0x4000

    const-wide/high16 v4, 0x3fe0

    .line 42
    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_51

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 47
    int-to-float v2, v1

    iget v3, p0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->a:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50
    :goto_20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_39

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 52
    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->a:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 55
    :cond_39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v6, :cond_43

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 59
    :cond_43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v6, :cond_4d

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 63
    :cond_4d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->setMeasuredDimension(II)V

    .line 64
    return-void

    :cond_51
    move v1, v0

    goto :goto_20
.end method

.method public setAspect(F)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->a:F

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/ConfigurableAspectWebView;->requestLayout()V

    .line 38
    return-void
.end method
