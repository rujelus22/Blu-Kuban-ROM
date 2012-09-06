.class Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;
.super Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;


# instance fields
.field private final a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private b:Z

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->k:F

    return v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b:Z

    return-void
.end method

.method protected b(FF)V
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FF)V

    invoke-virtual {p0, v0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v3, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v2, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b:Z

    if-nez v0, :cond_1b

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1b

    const/16 v0, 0x16

    if-gt p1, v0, :cond_1b

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    sparse-switch p1, :sswitch_data_126

    :cond_22
    :goto_22
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    :sswitch_27
    :try_start_27
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V
    :try_end_53
    .catchall {:try_start_27 .. :try_end_53} :catchall_54

    goto :goto_22

    :catchall_54
    move-exception v0

    move v2, v3

    :goto_56
    if-ltz v2, :cond_11f

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v4}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v4

    if-ge v2, v4, :cond_11f

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    monitor-enter v1

    :try_start_65
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_11c

    :cond_72
    :goto_72
    throw v0

    :sswitch_73
    :try_start_73
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v2

    const/high16 v4, 0x3f80

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_b1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:J
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_54

    cmp-long v2, v4, v6

    if-ltz v2, :cond_b1

    add-int/lit8 v2, v0, -0x1

    :try_start_89
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:J
    :try_end_92
    .catchall {:try_start_89 .. :try_end_92} :catchall_e7

    :goto_92
    if-ltz v2, :cond_c1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-ge v2, v0, :cond_c1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    monitor-enter v3

    :try_start_a1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_a1 .. :try_end_ae} :catchall_be

    :cond_ae
    :goto_ae
    move v0, v1

    goto/16 :goto_9

    :cond_b1
    const/high16 v0, 0x41a0

    const/4 v2, 0x0

    :try_start_b4
    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_54

    move v2, v3

    goto :goto_92

    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v0

    :cond_c1
    if-eq v2, v3, :cond_ae

    invoke-virtual {p0, v1, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    goto :goto_ae

    :sswitch_c7
    :try_start_c7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c()F

    move-result v2

    const/high16 v4, 0x3f80

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_ea

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:J
    :try_end_d7
    .catchall {:try_start_c7 .. :try_end_d7} :catchall_54

    cmp-long v2, v4, v6

    if-ltz v2, :cond_ea

    add-int/lit8 v2, v0, 0x1

    :try_start_dd
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:J
    :try_end_e6
    .catchall {:try_start_dd .. :try_end_e6} :catchall_e7

    goto :goto_92

    :catchall_e7
    move-exception v0

    goto/16 :goto_56

    :cond_ea
    const/high16 v0, -0x3e60

    const/4 v2, 0x0

    :try_start_ed
    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    move v2, v3

    goto :goto_92

    :sswitch_f7
    const/4 v0, 0x0

    const/high16 v2, 0x41a0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    move v2, v3

    goto :goto_92

    :sswitch_104
    const/4 v0, 0x0

    const/high16 v2, -0x3e60

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    move v2, v3

    goto :goto_92

    :sswitch_111
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_11a
    .catchall {:try_start_ed .. :try_end_11a} :catchall_54

    goto/16 :goto_22

    :catchall_11c
    move-exception v0

    :try_start_11d
    monitor-exit v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v0

    :cond_11f
    if-eq v2, v3, :cond_72

    invoke-virtual {p0, v1, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    goto/16 :goto_72

    :sswitch_data_126
    .sparse-switch
        0x13 -> :sswitch_f7
        0x14 -> :sswitch_104
        0x15 -> :sswitch_73
        0x16 -> :sswitch_c7
        0x17 -> :sswitch_27
        0x43 -> :sswitch_111
    .end sparse-switch
.end method
