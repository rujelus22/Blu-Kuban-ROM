.class public Lcom/google/android/apps/plus/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/widget/SlidingTab$Slider;,
        Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

.field private density:F

.field private leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

.field private mVibrator:Landroid/os/Vibrator;

.field private onTriggerListener:Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;

.field private rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

.field private targetZone:F

.field private tracking:Z

.field private triggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->density:F

    .line 262
    new-instance v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    const v2, 0x7f02017e

    const v3, 0x7f02021b

    const v4, 0x7f02020b

    const v5, 0x7f020213

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    .line 265
    new-instance v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    const v2, 0x7f02017f

    const v3, 0x7f02021c

    const v4, 0x7f02020f

    const v5, 0x7f020217

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    .line 268
    const v0, 0x7f0803b5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/widget/SlidingTab;->setRightHintText(I)V

    .line 269
    const v0, 0x7f0803b6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/widget/SlidingTab;->setLeftHintText(I)V

    .line 270
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 5
    .parameter "whichHandle"

    .prologue
    .line 475
    const-wide/16 v1, 0x28

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/widget/SlidingTab;->vibrate(J)V

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, slideAnimation:Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_36

    .line 507
    :cond_9
    :goto_9
    return-void

    .line 479
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 487
    :goto_15
    new-instance v1, Lcom/google/android/apps/plus/widget/SlidingTab$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/widget/SlidingTab$1;-><init>(Lcom/google/android/apps/plus/widget/SlidingTab;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/widget/SlidingTab;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->onTriggerListener:Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;

    if-eqz v1, :cond_9

    .line 505
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->onTriggerListener:Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    goto :goto_9

    .line 482
    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 483
    goto :goto_15

    .line 477
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2a
    .end packed-switch
.end method

.method private moveHandle(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 392
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    #getter for: Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->access$000(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 393
    .local v2, handle:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    #getter for: Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->access$100(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 394
    .local v0, content:Landroid/view/View;
    float-to-int v3, p1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 395
    .local v1, deltaX:I
    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->invalidate()V

    .line 398
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 455
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 457
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 458
    monitor-exit p0

    return-void

    .line 454
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 292
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 293
    .local v7, y:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    #getter for: Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->access$000(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 296
    .local v2, leftHandle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 297
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 298
    .local v3, leftHit:Z
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    #getter for: Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->access$000(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 299
    .local v4, rightHandle:Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 300
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 302
    .local v5, rightHit:Z
    iget-boolean v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    if-nez v10, :cond_3a

    if-nez v3, :cond_3a

    if-nez v5, :cond_3a

    .line 325
    :goto_39
    return v8

    .line 306
    :cond_3a
    packed-switch v0, :pswitch_data_72

    :goto_3d
    move v8, v9

    .line 325
    goto :goto_39

    .line 308
    :pswitch_3f
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    .line 309
    iput-boolean v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    .line 310
    const-wide/16 v10, 0x1e

    invoke-direct {p0, v10, v11}, Lcom/google/android/apps/plus/widget/SlidingTab;->vibrate(J)V

    .line 311
    if-eqz v3, :cond_63

    .line 312
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    iput-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    .line 313
    const v8, 0x3f2aaaab

    iput v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->targetZone:F

    .line 314
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->hide()V

    .line 320
    :goto_58
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setState(I)V

    .line 321
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->showTarget()V

    goto :goto_3d

    .line 316
    :cond_63
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    iput-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    .line 317
    const v8, 0x3eaaaaaa

    iput v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->targetZone:F

    .line 318
    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->hide()V

    goto :goto_58

    .line 306
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_3f
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 382
    if-nez p1, :cond_3

    .line 389
    :goto_2
    return-void

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 387
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    const/4 v5, 0x1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->layout(IIIII)V

    .line 388
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->invalidate()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x3f00

    .line 274
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 276
    .local v6, widthSpecSize:I
    iget v7, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->density:F

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v2, v7

    .line 277
    .local v2, leftTabWidth:I
    iget v7, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->density:F

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v1, v7

    .line 279
    .local v1, leftTabHeight:I
    iget v7, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->density:F

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v4, v7

    .line 280
    .local v4, rightTabWidth:I
    iget v7, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->density:F

    iget-object v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v3, v7

    .line 282
    .local v3, rightTabHeight:I
    add-int v7, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 283
    .local v5, width:I
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 285
    .local v0, height:I
    invoke-virtual {p0, v5, v0}, Lcom/google/android/apps/plus/widget/SlidingTab;->setMeasuredDimension(II)V

    .line 286
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 330
    iget-boolean v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    if-eqz v10, :cond_1b

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 332
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 333
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 334
    .local v7, y:F
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    #getter for: Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->access$000(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 335
    .local v1, handle:Landroid/view/View;
    packed-switch v0, :pswitch_data_88

    .line 371
    .end local v0           #action:I
    .end local v1           #handle:Landroid/view/View;
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_1b
    :goto_1b
    iget-boolean v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    if-nez v10, :cond_25

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_25
    move v9, v8

    :cond_26
    return v9

    .line 337
    .restart local v0       #action:I
    .restart local v1       #handle:Landroid/view/View;
    .restart local v6       #x:F
    .restart local v7       #y:F
    :pswitch_27
    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/plus/widget/SlidingTab;->moveHandle(FF)V

    .line 338
    move v2, v6

    .line 339
    .local v2, position:F
    iget v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->targetZone:F

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v4, v10, v11

    .line 340
    .local v4, target:F
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    iget-object v11, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    if-ne v10, v11, :cond_75

    cmpl-float v10, v2, v4

    if-lez v10, :cond_73

    move v5, v8

    .line 343
    .local v5, targetZoneReached:Z
    :goto_3f
    iget-boolean v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    if-nez v10, :cond_59

    if-eqz v5, :cond_59

    .line 344
    iput-boolean v8, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    .line 345
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    .line 346
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setState(I)V

    .line 348
    iget-object v10, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->currentSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    iget-object v11, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    if-ne v10, v11, :cond_7d

    .line 349
    const/4 v3, 0x0

    .line 353
    .local v3, tabHandle:I
    :goto_56
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/widget/SlidingTab;->dispatchTriggerEvent(I)V

    .line 355
    .end local v3           #tabHandle:I
    :cond_59
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_6b

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-gez v10, :cond_1b

    .line 359
    :cond_6b
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    .line 360
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->resetView()V

    goto :goto_1b

    .end local v5           #targetZoneReached:Z
    :cond_73
    move v5, v9

    .line 340
    goto :goto_3f

    :cond_75
    cmpg-float v10, v2, v4

    if-gez v10, :cond_7b

    move v5, v8

    goto :goto_3f

    :cond_7b
    move v5, v9

    goto :goto_3f

    .line 351
    .restart local v5       #targetZoneReached:Z
    :cond_7d
    const/4 v3, 0x1

    .restart local v3       #tabHandle:I
    goto :goto_56

    .line 365
    .end local v2           #position:F
    .end local v3           #tabHandle:I
    .end local v4           #target:F
    .end local v5           #targetZoneReached:Z
    :pswitch_7f
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->tracking:Z

    .line 366
    iput-boolean v9, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->triggered:Z

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->resetView()V

    goto :goto_1b

    .line 335
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_27
        :pswitch_7f
    .end packed-switch
.end method

.method public resetView()V
    .registers 7

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->reset()V

    .line 376
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->reset()V

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/widget/SlidingTab;->getHeight()I

    move-result v5

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/widget/SlidingTab;->onLayout(ZIIII)V

    .line 378
    return-void
.end method

.method public setLeftHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setHintText(I)V

    .line 422
    return-void
.end method

.method public setLeftTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "iconD"
    .parameter "targetD"
    .parameter "barD"
    .parameter "tabD"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .registers 6
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->leftSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setResources(IIII)V

    .line 411
    return-void
.end method

.method public setOnTriggerListener(Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->onTriggerListener:Lcom/google/android/apps/plus/widget/SlidingTab$OnTriggerListener;

    .line 467
    return-void
.end method

.method public setRightHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setHintText(I)V

    .line 448
    return-void
.end method

.method public setRightTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "iconD"
    .parameter "targetD"
    .parameter "barD"
    .parameter "tabD"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 439
    return-void
.end method

.method public setRightTabResources(IIII)V
    .registers 6
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab;->rightSlider:Lcom/google/android/apps/plus/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setResources(IIII)V

    .line 435
    return-void
.end method
