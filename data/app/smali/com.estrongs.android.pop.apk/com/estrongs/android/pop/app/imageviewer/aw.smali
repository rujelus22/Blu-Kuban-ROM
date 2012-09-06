.class Lcom/estrongs/android/pop/app/imageviewer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

.field private final synthetic b:Landroid/view/View$OnTouchListener;

.field private final synthetic c:Landroid/view/ScaleGestureDetector;

.field private final synthetic d:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;Landroid/view/View$OnTouchListener;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Landroid/view/View$OnTouchListener;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->c:Landroid/view/ScaleGestureDetector;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->d:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_11
    return v2

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->m:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v1, :cond_53

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->m:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v1, :cond_53

    :cond_4c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_53
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aw;->d:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_11
.end method
