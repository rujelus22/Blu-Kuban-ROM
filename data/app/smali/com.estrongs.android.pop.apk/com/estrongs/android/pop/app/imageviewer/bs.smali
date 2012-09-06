.class public Lcom/estrongs/android/pop/app/imageviewer/bs;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field a:F

.field b:I

.field c:I

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const v0, 0x3f99999a

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->a:F

    const/16 v0, 0x78

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->b:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->c:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v3, 0x3f80

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    :goto_2a
    move v0, v1

    goto :goto_a

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    const/high16 v2, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b(FFF)V

    goto :goto_2a
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b(FF)V

    :cond_1d
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    :goto_15
    const/4 v0, 0x1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d()V

    :goto_25
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    goto :goto_15

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    goto :goto_25
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bs;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method
