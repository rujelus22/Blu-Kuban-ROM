.class public Lcom/estrongs/android/pop/app/imageviewer/ax;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field a:F

.field final synthetic b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    const/4 v5, 0x1

    const/high16 v4, 0x4040

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    :goto_12
    return v5

    :cond_13
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2d

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    :cond_2d
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_36

    iput v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    :cond_36
    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    goto :goto_12
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->b:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ax;->a:F

    const/4 v0, 0x1

    return v0
.end method
