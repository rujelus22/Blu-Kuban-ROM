.class public LEC;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TrixNativeGridView.java"

# interfaces
.implements LFN;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;LEA;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, LEC;-><init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)V

    return-void
.end method


# virtual methods
.method public a(LFM;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public a(LFM;)Z
    .registers 3
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public b(LFM;)Z
    .registers 7
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, LFM;->a()F

    move-result v0

    iget-object v1, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 67
    invoke-virtual {p1}, LFM;->b()F

    move-result v1

    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 68
    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {p1}, LFM;->e()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;F)F

    .line 69
    invoke-virtual {p1}, LFM;->e()F

    move-result v2

    mul-float/2addr v2, v0

    .line 70
    invoke-virtual {p1}, LFM;->e()F

    move-result v3

    mul-float/2addr v3, v1

    .line 71
    iget-object v4, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    sub-float v0, v2, v0

    float-to-int v0, v0

    sub-float v1, v3, v1

    float-to-int v1, v1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->scrollBy(II)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 53
    iget-object v0, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 54
    iget-object v1, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 55
    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Landroid/widget/Scroller;

    move-result-object v2

    iget-object v3, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v3}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v3

    iget-object v4, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v4}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v4

    neg-float v5, v0

    float-to-int v5, v5

    neg-float v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 56
    invoke-super {p0, p1, p2, v0, v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 42
    iget-object v1, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 44
    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    invoke-static {v2}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 45
    iget-object v2, p0, LEC;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeGridView;->scrollTo(II)V

    .line 46
    const/4 v0, 0x1

    return v0
.end method
