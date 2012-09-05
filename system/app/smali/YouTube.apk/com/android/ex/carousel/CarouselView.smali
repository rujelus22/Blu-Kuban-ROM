.class public abstract Lcom/android/ex/carousel/CarouselView;
.super Landroid/renderscript/RSSurfaceView;
.source "SourceFile"


# instance fields
.field a:Lcom/android/ex/carousel/a;

.field private b:Lcom/android/ex/carousel/b;

.field private c:Landroid/renderscript/RenderScriptGL;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Lcom/android/ex/carousel/a;

    invoke-direct {v0}, Lcom/android/ex/carousel/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/a;)V

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/a;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselView;->d:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    .line 137
    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->e()V

    .line 141
    new-instance v0, Lcom/android/ex/carousel/e;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/e;-><init>(Lcom/android/ex/carousel/CarouselView;)V

    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    if-nez v0, :cond_16

    .line 155
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 157
    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setDepth(II)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    .line 161
    :cond_16
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    if-nez v0, :cond_34

    .line 162
    new-instance v0, Lcom/android/ex/carousel/b;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->a()Lcom/android/ex/carousel/f;

    move-result-object v3

    iget v3, v3, Lcom/android/ex/carousel/f;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/carousel/b;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    .line 164
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    invoke-virtual {v0}, Lcom/android/ex/carousel/b;->a()V

    .line 166
    :cond_34
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/carousel/a;->a(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/b;)V

    .line 167
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/ex/carousel/f;
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->a(F)V

    .line 268
    return-void
.end method

.method public final a(FFFF)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/ex/carousel/a;->a(FFFF)V

    .line 407
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->a(I)V

    .line 232
    return-void
.end method

.method public final a(IFFFFLandroid/graphics/Bitmap;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    move v1, p1

    move v3, p3

    move v4, v2

    move v5, v2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/a;->a(IFFFFLandroid/graphics/Bitmap;)V

    .line 370
    return-void
.end method

.method public final a(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/a;->a(ILandroid/graphics/Bitmap;)V

    .line 351
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->a(Landroid/graphics/Bitmap;)V

    .line 382
    return-void
.end method

.method public final a(Lcom/android/ex/carousel/d;)V
    .registers 3
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->a(Lcom/android/ex/carousel/d;)V

    .line 484
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->a(Z)V

    .line 321
    return-void
.end method

.method public final a([F)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->a([F)V

    .line 462
    return-void
.end method

.method public final a([F[F[F)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ex/carousel/a;->a([F[F[F)V

    .line 528
    return-void
.end method

.method public final b()Lcom/android/ex/carousel/a;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    return-object v0
.end method

.method public final b(F)V
    .registers 3
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->b(F)V

    .line 282
    return-void
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->b(I)V

    .line 241
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->b(Landroid/graphics/Bitmap;)V

    .line 394
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->b(Z)V

    .line 508
    return-void
.end method

.method public final c(F)V
    .registers 3
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->c(F)V

    .line 496
    return-void
.end method

.method public final c(I)V
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->d(I)V

    .line 254
    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->c(Landroid/graphics/Bitmap;)V

    .line 417
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0}, Lcom/android/ex/carousel/a;->b()I

    move-result v0

    return v0
.end method

.method public d(F)V
    .registers 3
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->e(F)V

    .line 500
    return-void
.end method

.method public d(I)V
    .registers 3
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->e(I)V

    .line 261
    return-void
.end method

.method public final e(F)V
    .registers 4
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    const v1, -0x4036f025

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->f(F)V

    .line 504
    return-void
.end method

.method public final e(I)V
    .registers 3
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->c(I)V

    .line 291
    return-void
.end method

.method public final f(F)V
    .registers 3
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->g(F)V

    .line 512
    return-void
.end method

.method public final f(I)V
    .registers 4
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->f(I)V

    .line 300
    return-void
.end method

.method public g(I)V
    .registers 3
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/a;->g(I)V

    .line 333
    return-void
.end method

.method public final h(I)V
    .registers 4
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/a;->h(I)V

    .line 524
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 568
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    .line 569
    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->e()V

    .line 570
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 558
    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    .line 559
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_f

    .line 560
    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    .line 561
    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    .line 563
    :cond_f
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->c:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/carousel/a;->a(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/b;)V

    .line 564
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 574
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 577
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->b:Lcom/android/ex/carousel/b;

    if-nez v2, :cond_e

    .line 603
    :cond_d
    :goto_d
    return v6

    .line 581
    :cond_e
    packed-switch v1, :pswitch_data_6a

    goto :goto_d

    .line 583
    :pswitch_12
    iput-boolean v6, p0, Lcom/android/ex/carousel/CarouselView;->e:Z

    .line 584
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/ex/carousel/a;->a(FFJ)V

    goto :goto_d

    .line 588
    :pswitch_26
    iget-boolean v1, p0, Lcom/android/ex/carousel/CarouselView;->e:Z

    if-eqz v1, :cond_d

    .line 589
    :goto_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 590
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/ex/carousel/a;->b(FFJ)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 593
    :cond_44
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/ex/carousel/a;->b(FFJ)V

    goto :goto_d

    .line 598
    :pswitch_56
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/ex/carousel/a;->c(FFJ)V

    .line 599
    iput-boolean v0, p0, Lcom/android/ex/carousel/CarouselView;->e:Z

    goto :goto_d

    .line 581
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_56
        :pswitch_26
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 173
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->a:Lcom/android/ex/carousel/a;

    invoke-virtual {v0}, Lcom/android/ex/carousel/a;->a()V

    .line 174
    return-void
.end method
