.class public Lcom/estrongs/android/pop/app/imageviewer/ViewImage;
.super Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .registers 6

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bs;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/ax;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/ax;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V

    invoke-direct {v1, p0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/av;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/av;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/aw;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/aw;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;Landroid/view/View$OnTouchListener;Landroid/view/ScaleGestureDetector;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
