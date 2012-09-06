.class Lcom/estrongs/android/pop/app/imageviewer/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private final synthetic b:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/view/View$OnTouchListener;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->b:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v1, :cond_46

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->e()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v1, :cond_46

    :cond_3f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_46
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bm;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
