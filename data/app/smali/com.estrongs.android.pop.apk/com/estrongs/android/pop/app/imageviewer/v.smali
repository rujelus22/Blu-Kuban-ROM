.class Lcom/estrongs/android/pop/app/imageviewer/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

.field private final synthetic b:F

.field private final synthetic c:J

.field private final synthetic d:F

.field private final synthetic e:F

.field private final synthetic f:F

.field private final synthetic g:F


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;FJFFFF)V
    .registers 9

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iput p2, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->b:F

    iput-wide p3, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->c:J

    iput p5, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->d:F

    iput p6, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->e:F

    iput p7, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->f:F

    iput p8, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->b:F

    iget-wide v3, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->c:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->d:F

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->f:F

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->g:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FFF)V

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    return-void
.end method
