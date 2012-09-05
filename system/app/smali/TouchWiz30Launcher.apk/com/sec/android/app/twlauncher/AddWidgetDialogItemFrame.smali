.class Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;
.super Landroid/view/ViewGroup;
.source "AddWidgetDialogItemFrame.java"


# instance fields
.field protected mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 10
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getWidth()I

    move-result v0

    int-to-float v7, v0

    .line 51
    .local v7, w:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getHeight()I

    move-result v0

    int-to-float v6, v0

    .line 53
    .local v6, h:F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 54
    .local v4, cw:F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 55
    .local v5, ch:F
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 56
    cmpl-float v0, v4, v7

    if-lez v0, :cond_4a

    sub-float v0, v4, v7

    sub-float v1, v5, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    .line 57
    mul-float v0, v5, v7

    div-float/2addr v0, v4

    sub-float v0, v6, v0

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 58
    div-float v0, v7, v4

    div-float v1, v7, v4

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 71
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->postUploadIfNeeded()V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 73
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 74
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_4a
    cmpl-float v0, v5, v6

    if-lez v0, :cond_5f

    .line 60
    mul-float v0, v4, v6

    div-float/2addr v0, v5

    sub-float v0, v7, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 61
    div-float v0, v6, v5

    div-float v1, v6, v5

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    goto :goto_39

    .line 64
    :cond_5f
    cmpg-float v0, v4, v7

    if-gez v0, :cond_69

    .line 65
    sub-float v0, v7, v4

    div-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 67
    :cond_69
    cmpg-float v0, v5, v6

    if-gez v0, :cond_39

    .line 68
    sub-float v0, v6, v5

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto :goto_39
.end method

.method public onFinishInflate()V
    .registers 4

    .prologue
    .line 24
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .local v0, icon:Landroid/widget/ImageView;
    new-instance v1, Lcom/sec/android/app/twlauncher/GLChildSurface;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 26
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->mSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 27
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildCount()I

    move-result v1

    .line 39
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v1, :cond_22

    .line 40
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1f

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 39
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 45
    .end local v0           #child:Landroid/view/View;
    :cond_22
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v2, 0x1e0

    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 33
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItemFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 35
    :cond_16
    return-void
.end method
