.class Laj/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final j:Landroid/os/Handler;

.field private final k:Laj/q;

.field private l:Laj/p;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/MotionEvent;

.field private r:Landroid/view/MotionEvent;

.field private s:Z

.field private t:F

.field private u:F

.field private v:Z

.field private w:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 216
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Laj/n;->g:I

    .line 217
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Laj/n;->h:I

    .line 218
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Laj/n;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laj/q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laj/n;-><init>(Landroid/content/Context;Laj/q;Landroid/os/Handler;)V

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laj/q;Landroid/os/Handler;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/16 v0, 0x190

    iput v0, p0, Laj/n;->a:I

    .line 353
    if-eqz p3, :cond_1f

    .line 354
    new-instance v0, Laj/o;

    invoke-direct {v0, p0, p3}, Laj/o;-><init>(Laj/n;Landroid/os/Handler;)V

    iput-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    .line 358
    :goto_10
    iput-object p2, p0, Laj/n;->k:Laj/q;

    .line 359
    instance-of v0, p2, Laj/p;

    if-eqz v0, :cond_1b

    .line 360
    check-cast p2, Laj/p;

    invoke-virtual {p0, p2}, Laj/n;->a(Laj/p;)V

    .line 362
    :cond_1b
    invoke-direct {p0, p1}, Laj/n;->a(Landroid/content/Context;)V

    .line 363
    return-void

    .line 356
    :cond_1f
    new-instance v0, Laj/o;

    invoke-direct {v0, p0}, Laj/o;-><init>(Laj/n;)V

    iput-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    goto :goto_10
.end method

.method static synthetic a(Laj/n;)Landroid/view/MotionEvent;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Laj/n;->q:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    iget-object v0, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    .line 568
    iput-boolean v2, p0, Laj/n;->s:Z

    .line 569
    iput-boolean v2, p0, Laj/n;->m:Z

    .line 570
    iget-boolean v0, p0, Laj/n;->n:Z

    if-eqz v0, :cond_25

    .line 571
    iput-boolean v2, p0, Laj/n;->n:Z

    .line 573
    :cond_25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Laj/n;->k:Laj/q;

    if-nez v0, :cond_c

    .line 367
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Laj/n;->v:Z

    .line 374
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 376
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 377
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Laj/n;->e:I

    .line 378
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Laj/n;->f:I

    .line 380
    mul-int v0, v1, v1

    iput v0, p0, Laj/n;->b:I

    .line 381
    div-int/lit8 v0, v1, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v0, v1

    iput v0, p0, Laj/n;->c:I

    .line 382
    mul-int v0, v2, v2

    iput v0, p0, Laj/n;->d:I

    .line 383
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 577
    iget-boolean v1, p0, Laj/n;->p:Z

    if-nez v1, :cond_6

    .line 587
    :cond_5
    :goto_5
    return v0

    .line 581
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v3, Laj/n;->i:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 587
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Laj/n;->d:I

    if-ge v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic b(Laj/n;)Laj/q;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Laj/n;->k:Laj/q;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Laj/n;->n:Z

    .line 593
    iget-object v0, p0, Laj/n;->k:Laj/q;

    iget-object v1, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Laj/q;->h(Landroid/view/MotionEvent;)V

    .line 594
    return-void
.end method

.method static synthetic c(Laj/n;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Laj/n;->b()V

    return-void
.end method

.method static synthetic d(Laj/n;)Laj/p;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Laj/n;->l:Laj/p;

    return-object v0
.end method

.method static synthetic e(Laj/n;)Z
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Laj/n;->m:Z

    return v0
.end method


# virtual methods
.method public a(Laj/p;)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Laj/n;->l:Laj/p;

    .line 394
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-boolean p1, p0, Laj/n;->v:Z

    .line 407
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 429
    iget-object v5, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1c

    .line 430
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    .line 432
    :cond_1c
    iget-object v5, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 436
    and-int/lit16 v5, v2, 0xff

    packed-switch v5, :pswitch_data_1da

    .line 559
    :cond_26
    :goto_26
    :pswitch_26
    return v1

    .line 439
    :pswitch_27
    invoke-direct {p0}, Laj/n;->a()V

    goto :goto_26

    .line 444
    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v9, :cond_26

    .line 445
    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_51

    .line 447
    :goto_39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Laj/n;->u:F

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Laj/n;->t:F

    .line 449
    iget-object v0, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 450
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    goto :goto_26

    :cond_51
    move v0, v1

    .line 445
    goto :goto_39

    .line 455
    :pswitch_53
    iget-object v2, p0, Laj/n;->l:Laj/p;

    if-eqz v2, :cond_d9

    .line 456
    iget-object v2, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 457
    if-eqz v2, :cond_64

    iget-object v5, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    :cond_64
    iget-object v5, p0, Laj/n;->q:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d1

    iget-object v5, p0, Laj/n;->r:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d1

    if-eqz v2, :cond_d1

    iget-object v2, p0, Laj/n;->q:Landroid/view/MotionEvent;

    iget-object v5, p0, Laj/n;->r:Landroid/view/MotionEvent;

    invoke-direct {p0, v2, v5, p1}, Laj/n;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 461
    iput-boolean v0, p0, Laj/n;->s:Z

    .line 463
    iget-object v2, p0, Laj/n;->l:Laj/p;

    iget-object v5, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v2, v5}, Laj/p;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    .line 465
    iget-object v5, p0, Laj/n;->l:Laj/p;

    invoke-interface {v5, p1}, Laj/p;->d(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 472
    :goto_8a
    iput v4, p0, Laj/n;->u:F

    .line 473
    iput v3, p0, Laj/n;->t:F

    .line 474
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Laj/n;->q:Landroid/view/MotionEvent;

    .line 475
    iput-boolean v0, p0, Laj/n;->o:Z

    .line 476
    iput-boolean v0, p0, Laj/n;->p:Z

    .line 477
    iput-boolean v0, p0, Laj/n;->m:Z

    .line 478
    iput-boolean v1, p0, Laj/n;->n:Z

    .line 480
    iget-boolean v1, p0, Laj/n;->v:Z

    if-eqz v1, :cond_b8

    .line 481
    iget-object v1, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v1, p0, Laj/n;->j:Landroid/os/Handler;

    iget-object v3, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Laj/n;->h:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget v5, Laj/n;->g:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 485
    :cond_b8
    iget-object v1, p0, Laj/n;->j:Landroid/os/Handler;

    iget-object v3, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Laj/n;->h:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 487
    iget-object v0, p0, Laj/n;->k:Laj/q;

    invoke-interface {v0, p1}, Laj/q;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v1, v2, v0

    .line 488
    goto/16 :goto_26

    .line 468
    :cond_d1
    iget-object v2, p0, Laj/n;->j:Landroid/os/Handler;

    sget v5, Laj/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v2, v10, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d9
    move v2, v1

    goto :goto_8a

    .line 491
    :pswitch_db
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_26

    .line 494
    iget v2, p0, Laj/n;->u:F

    sub-float/2addr v2, v4

    .line 495
    iget v5, p0, Laj/n;->t:F

    sub-float/2addr v5, v3

    .line 496
    iget-boolean v6, p0, Laj/n;->s:Z

    if-eqz v6, :cond_f4

    .line 498
    iget-object v0, p0, Laj/n;->l:Laj/p;

    invoke-interface {v0, p1}, Laj/p;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    goto/16 :goto_26

    .line 499
    :cond_f4
    iget-boolean v6, p0, Laj/n;->o:Z

    if-eqz v6, :cond_13b

    .line 500
    iget-object v6, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 501
    iget-object v7, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v7, v3, v7

    float-to-int v7, v7

    .line 502
    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    .line 503
    iget v7, p0, Laj/n;->c:I

    if-le v6, v7, :cond_1d7

    .line 504
    iget-object v7, p0, Laj/n;->k:Laj/q;

    iget-object v8, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v2, v5}, Laj/q;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 505
    iput v4, p0, Laj/n;->u:F

    .line 506
    iput v3, p0, Laj/n;->t:F

    .line 508
    :goto_11d
    iget v3, p0, Laj/n;->b:I

    if-le v6, v3, :cond_132

    .line 509
    iput-boolean v1, p0, Laj/n;->o:Z

    .line 510
    iget-object v3, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v3, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    :cond_132
    iget v0, p0, Laj/n;->a:I

    if-le v6, v0, :cond_138

    .line 515
    iput-boolean v1, p0, Laj/n;->p:Z

    :cond_138
    move v1, v2

    .line 517
    goto/16 :goto_26

    :cond_13b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gez v0, :cond_14b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_26

    .line 518
    :cond_14b
    iget-object v0, p0, Laj/n;->k:Laj/q;

    iget-object v1, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1, v2, v5}, Laj/q;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 519
    iput v4, p0, Laj/n;->u:F

    .line 520
    iput v3, p0, Laj/n;->t:F

    goto/16 :goto_26

    .line 525
    :pswitch_159
    iput-boolean v1, p0, Laj/n;->m:Z

    .line 526
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 527
    iget-boolean v3, p0, Laj/n;->s:Z

    if-eqz v3, :cond_187

    .line 529
    iget-object v2, p0, Laj/n;->l:Laj/p;

    invoke-interface {v2, p1}, Laj/p;->d(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    .line 549
    :goto_16a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Laj/n;->r:Landroid/view/MotionEvent;

    .line 550
    iget-object v3, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 551
    const/4 v3, 0x0

    iput-object v3, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    .line 552
    iput-boolean v1, p0, Laj/n;->s:Z

    .line 553
    iget-object v1, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v2

    .line 555
    goto/16 :goto_26

    .line 530
    :cond_187
    iget-boolean v3, p0, Laj/n;->n:Z

    if-eqz v3, :cond_194

    .line 531
    iget-object v2, p0, Laj/n;->j:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iput-boolean v1, p0, Laj/n;->n:Z

    move v2, v1

    goto :goto_16a

    .line 533
    :cond_194
    iget-boolean v3, p0, Laj/n;->o:Z

    if-eqz v3, :cond_19f

    .line 534
    iget-object v2, p0, Laj/n;->k:Laj/q;

    invoke-interface {v2, p1}, Laj/q;->g(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_16a

    .line 538
    :cond_19f
    iget-object v3, p0, Laj/n;->w:Landroid/view/VelocityTracker;

    .line 539
    const/16 v4, 0x3e8

    iget v5, p0, Laj/n;->f:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 540
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 541
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 543
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Laj/n;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1c7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Laj/n;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d5

    .line 545
    :cond_1c7
    iget-object v5, p0, Laj/n;->k:Laj/q;

    iget-object v6, p0, Laj/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, v2, v3, v4}, Laj/q;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_16a

    .line 557
    :pswitch_1d0
    invoke-direct {p0}, Laj/n;->a()V

    goto/16 :goto_26

    :cond_1d5
    move v2, v1

    goto :goto_16a

    :cond_1d7
    move v2, v1

    goto/16 :goto_11d

    .line 436
    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_53
        :pswitch_159
        :pswitch_db
        :pswitch_1d0
        :pswitch_26
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method
