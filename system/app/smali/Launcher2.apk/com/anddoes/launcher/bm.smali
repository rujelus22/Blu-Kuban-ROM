.class public final Lcom/anddoes/launcher/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private A:F

.field private c:Lcom/anddoes/launcher/Launcher;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/Rect;

.field private final f:[I

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/anddoes/launcher/cc;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Landroid/os/IBinder;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/anddoes/launcher/bv;

.field private r:I

.field private s:Lcom/anddoes/launcher/bo;

.field private t:Lcom/anddoes/launcher/cb;

.field private u:Landroid/view/inputmethod/InputMethodManager;

.field private v:[I

.field private w:I

.field private x:[I

.field private y:Landroid/graphics/Rect;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/anddoes/launcher/bm;->a:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/anddoes/launcher/bm;->b:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->e:Landroid/graphics/Rect;

    .line 63
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->f:[I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->l:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->m:Ljava/util/ArrayList;

    .line 95
    iput v2, p0, Lcom/anddoes/launcher/bm;->r:I

    .line 96
    new-instance v0, Lcom/anddoes/launcher/bo;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/bo;-><init>(Lcom/anddoes/launcher/bm;)V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    .line 102
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->v:[I

    .line 103
    iput v2, p0, Lcom/anddoes/launcher/bm;->w:I

    .line 105
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->x:[I

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    .line 137
    iput-object p1, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    .line 139
    invoke-virtual {p1}, Lcom/anddoes/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/bm;->j:I

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/bm;)Lcom/anddoes/launcher/bv;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->q:Lcom/anddoes/launcher/bv;

    return-object v0
.end method

.method private a(II[I)Lcom/anddoes/launcher/cb;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 601
    iget-object v2, p0, Lcom/anddoes/launcher/bm;->e:Landroid/graphics/Rect;

    .line 603
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->l:Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 605
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-gez v1, :cond_11

    .line 632
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 606
    :cond_11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/cb;

    .line 607
    invoke-interface {v0}, Lcom/anddoes/launcher/cb;->s()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 608
    invoke-interface {v0, v2}, Lcom/anddoes/launcher/cb;->getHitRect(Landroid/graphics/Rect;)V

    .line 613
    invoke-interface {v0, p3}, Lcom/anddoes/launcher/cb;->a([I)V

    .line 614
    aget v4, p3, v7

    invoke-interface {v0}, Lcom/anddoes/launcher/cb;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, p3, v8

    invoke-interface {v0}, Lcom/anddoes/launcher/cb;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 616
    iget-object v4, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput p1, v4, Lcom/anddoes/launcher/cc;->a:I

    .line 617
    iget-object v4, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput p2, v4, Lcom/anddoes/launcher/cc;->b:I

    .line 618
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 619
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    .line 620
    aget v1, p3, v7

    sub-int v1, p1, v1

    aput v1, p3, v7

    .line 627
    aget v1, p3, v8

    sub-int v1, p2, v1

    aput v1, p3, v8

    goto :goto_10

    .line 605
    :cond_51
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d
.end method

.method private a(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x258

    const-wide/high16 v9, 0x4000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 464
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/bx;->b(II)V

    .line 467
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->f:[I

    .line 468
    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/bm;->a(II[I)Lcom/anddoes/launcher/cb;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    aget v3, v0, v8

    iput v3, v2, Lcom/anddoes/launcher/cc;->a:I

    .line 470
    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    aget v0, v0, v7

    iput v0, v2, Lcom/anddoes/launcher/cc;->b:I

    .line 471
    if-eqz v1, :cond_93

    .line 472
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    .line 473
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    if-eq v0, v1, :cond_37

    .line 478
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_32

    .line 479
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v2}, Lcom/anddoes/launcher/cb;->d(Lcom/anddoes/launcher/cc;)V

    .line 481
    :cond_32
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v1, v0}, Lcom/anddoes/launcher/cb;->b(Lcom/anddoes/launcher/cc;)V

    .line 483
    :cond_37
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v1, v0}, Lcom/anddoes/launcher/cb;->c(Lcom/anddoes/launcher/cc;)V

    .line 489
    :cond_3c
    :goto_3c
    iput-object v1, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    .line 493
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 494
    iget v1, p0, Lcom/anddoes/launcher/bm;->w:I

    int-to-double v1, v1

    .line 495
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->v:[I

    aget v3, v3, v8

    sub-int/2addr v3, p1

    int-to-double v3, v3

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object v5, p0, Lcom/anddoes/launcher/bm;->v:[I

    aget v5, v5, v7

    sub-int/2addr v5, p2

    int-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/anddoes/launcher/bm;->w:I

    .line 496
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->v:[I

    aput p1, v1, v8

    .line 497
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->v:[I

    aput p2, v1, v7

    .line 499
    iget v1, p0, Lcom/anddoes/launcher/bm;->j:I

    if-ge p1, v1, :cond_9f

    .line 500
    iget v1, p0, Lcom/anddoes/launcher/bm;->r:I

    if-nez v1, :cond_92

    iget v1, p0, Lcom/anddoes/launcher/bm;->w:I

    if-le v1, v0, :cond_92

    .line 501
    iput v7, p0, Lcom/anddoes/launcher/bm;->r:I

    .line 502
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->q:Lcom/anddoes/launcher/bv;

    invoke-interface {v0, p1, p2, v8}, Lcom/anddoes/launcher/bv;->a(III)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 503
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v8}, Lcom/anddoes/launcher/bo;->a(I)V

    .line 504
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    :cond_92
    :goto_92
    return-void

    .line 485
    :cond_93
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_3c

    .line 486
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v2}, Lcom/anddoes/launcher/cb;->d(Lcom/anddoes/launcher/cc;)V

    goto :goto_3c

    .line 507
    :cond_9f
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/bm;->j:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_c9

    .line 508
    iget v1, p0, Lcom/anddoes/launcher/bm;->r:I

    if-nez v1, :cond_92

    iget v1, p0, Lcom/anddoes/launcher/bm;->w:I

    if-le v1, v0, :cond_92

    .line 509
    iput v7, p0, Lcom/anddoes/launcher/bm;->r:I

    .line 510
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->q:Lcom/anddoes/launcher/bv;

    invoke-interface {v0, p1, p2, v7}, Lcom/anddoes/launcher/bv;->a(III)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 511
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/bo;->a(I)V

    .line 512
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_92

    .line 516
    :cond_c9
    iget v0, p0, Lcom/anddoes/launcher/bm;->r:I

    if-ne v0, v7, :cond_92

    .line 517
    iput v8, p0, Lcom/anddoes/launcher/bm;->r:I

    .line 518
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v7}, Lcom/anddoes/launcher/bo;->a(I)V

    .line 519
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->q:Lcom/anddoes/launcher/bv;

    invoke-interface {v0}, Lcom/anddoes/launcher/bv;->d()Z

    goto :goto_92
.end method

.method private a(FF)[I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 411
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->x:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 412
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->x:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/bm;->y:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 413
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->x:[I

    return-object v0
.end method

.method private b(FF)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 583
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->f:[I

    .line 584
    float-to-int v0, p1

    float-to-int v4, p2

    invoke-direct {p0, v0, v4, v3}, Lcom/anddoes/launcher/bm;->a(II[I)Lcom/anddoes/launcher/cb;

    move-result-object v0

    .line 586
    iget-object v4, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    aget v5, v3, v2

    iput v5, v4, Lcom/anddoes/launcher/cc;->a:I

    .line 587
    iget-object v4, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    aget v3, v3, v1

    iput v3, v4, Lcom/anddoes/launcher/cc;->b:I

    .line 589
    if-eqz v0, :cond_3a

    .line 590
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-boolean v1, v3, Lcom/anddoes/launcher/cc;->e:Z

    .line 591
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v3}, Lcom/anddoes/launcher/cb;->d(Lcom/anddoes/launcher/cc;)V

    .line 592
    iget-object v3, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v3}, Lcom/anddoes/launcher/cb;->e(Lcom/anddoes/launcher/cc;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 593
    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v2}, Lcom/anddoes/launcher/cb;->a(Lcom/anddoes/launcher/cc;)V

    .line 597
    :goto_2e
    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v2, v2, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v2, v0, v3, v1}, Lcom/anddoes/launcher/bw;->a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V

    .line 598
    return-void

    :cond_3a
    move v1, v2

    goto :goto_2e
.end method

.method static synthetic b(Lcom/anddoes/launcher/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/bm;->r:I

    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/bm;->w:I

    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    if-eqz v0, :cond_25

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    .line 396
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    .line 399
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    if-eqz v0, :cond_25

    .line 400
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bx;->d()V

    .line 401
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    .line 404
    :cond_25
    return-void

    .line 396
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/bn;

    .line 397
    invoke-interface {v0}, Lcom/anddoes/launcher/bn;->d_()V

    goto :goto_d
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 232
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/anddoes/launcher/bm;->a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 233
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->u:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_11

    .line 258
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/anddoes/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->u:Landroid/view/inputmethod/InputMethodManager;

    .line 260
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->u:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->n:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 262
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 266
    iget v0, p0, Lcom/anddoes/launcher/bm;->h:I

    sub-int v3, v0, p2

    .line 267
    iget v0, p0, Lcom/anddoes/launcher/bm;->i:I

    sub-int v4, v0, p3

    .line 269
    if-nez p7, :cond_ab

    move v2, v1

    .line 270
    :goto_2f
    if-nez p7, :cond_af

    move v0, v1

    .line 272
    :goto_32
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/anddoes/launcher/bm;->g:Z

    .line 274
    new-instance v5, Lcom/anddoes/launcher/cc;

    invoke-direct {v5}, Lcom/anddoes/launcher/cc;-><init>()V

    iput-object v5, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    .line 275
    iget-object v5, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-boolean v1, v5, Lcom/anddoes/launcher/cc;->e:Z

    .line 276
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget v5, p0, Lcom/anddoes/launcher/bm;->h:I

    add-int/2addr v2, p2

    sub-int v2, v5, v2

    iput v2, v1, Lcom/anddoes/launcher/cc;->c:I

    .line 277
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget v2, p0, Lcom/anddoes/launcher/bm;->i:I

    add-int/2addr v0, p3

    sub-int v0, v2, v0

    iput v0, v1, Lcom/anddoes/launcher/cc;->d:I

    .line 278
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-object p4, v0, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    .line 279
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-object p5, v0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget-boolean v0, v0, Lcom/anddoes/launcher/preference/f;->at:Z

    if-eqz v0, :cond_69

    .line 282
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->c(I)V

    .line 285
    :cond_69
    iget-object v7, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    new-instance v0, Lcom/anddoes/launcher/bx;

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/bx;-><init>(Lcom/anddoes/launcher/Launcher;Landroid/graphics/Bitmap;IIII)V

    .line 285
    iput-object v0, v7, Lcom/anddoes/launcher/cc;->f:Lcom/anddoes/launcher/bx;

    .line 288
    if-eqz p6, :cond_87

    .line 289
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p6}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bx;->a(Landroid/graphics/Point;)V

    .line 291
    :cond_87
    if-eqz p7, :cond_91

    .line 292
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/bx;->a(Landroid/graphics/Rect;)V

    .line 295
    :cond_91
    iget v1, p0, Lcom/anddoes/launcher/bm;->h:I

    iget v2, p0, Lcom/anddoes/launcher/bm;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/bx;->a(II)V

    .line 296
    iget v0, p0, Lcom/anddoes/launcher/bm;->h:I

    iget v1, p0, Lcom/anddoes/launcher/bm;->i:I

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/bm;->a(II)V

    .line 297
    return-void

    .line 262
    :cond_a0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/bn;

    .line 263
    invoke-interface {v0, p4, p5}, Lcom/anddoes/launcher/bn;->a(Lcom/anddoes/launcher/bw;Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 269
    :cond_ab
    iget v0, p7, Landroid/graphics/Rect;->left:I

    move v2, v0

    goto :goto_2f

    .line 270
    :cond_af
    iget v0, p7, Landroid/graphics/Rect;->top:I

    goto :goto_32
.end method

.method public final a(Landroid/os/IBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/anddoes/launcher/bm;->n:Landroid/os/IBinder;

    .line 641
    return-void
.end method

.method final a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/anddoes/launcher/bm;->p:Landroid/view/View;

    .line 457
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/anddoes/launcher/bw;Ljava/lang/Object;I)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 206
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->f:[I

    .line 207
    iget-object v1, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1}, Lcom/anddoes/launcher/Launcher;->r()Lcom/anddoes/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;[I)V

    .line 208
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 209
    const/4 v1, 0x1

    aget v3, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    .line 211
    invoke-virtual/range {v0 .. v7}, Lcom/anddoes/launcher/bm;->a(Landroid/graphics/Bitmap;IILcom/anddoes/launcher/bw;Ljava/lang/Object;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 213
    sget v0, Lcom/anddoes/launcher/bm;->a:I

    if-ne p5, v0, :cond_23

    .line 214
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_23
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bn;)V
    .registers 3
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bv;)V
    .registers 2
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/anddoes/launcher/bm;->q:Lcom/anddoes/launcher/bv;

    .line 637
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/cb;)V
    .registers 3
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .registers 6
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    if-eqz v0, :cond_24

    .line 377
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->g:Ljava/lang/Object;

    .line 378
    instance-of v1, v0, Lcom/anddoes/launcher/kj;

    if-eqz v1, :cond_24

    .line 379
    check-cast v0, Lcom/anddoes/launcher/kj;

    .line 380
    iget-object v1, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 381
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    .line 391
    :cond_24
    :goto_24
    return-void

    .line 381
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/y;

    .line 382
    iget-object v3, v1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 383
    iget-object v3, v0, Lcom/anddoes/launcher/kj;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v1, v1, Lcom/anddoes/launcher/y;->c:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 384
    invoke-virtual {p0}, Lcom/anddoes/launcher/bm;->e()V

    goto :goto_24
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 423
    invoke-direct {p0, v1, v2}, Lcom/anddoes/launcher/bm;->a(FF)[I

    move-result-object v3

    .line 424
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 425
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 427
    packed-switch v0, :pswitch_data_3a

    .line 449
    :goto_19
    :pswitch_19
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    return v0

    .line 432
    :pswitch_1c
    iput v1, p0, Lcom/anddoes/launcher/bm;->z:F

    .line 433
    iput v2, p0, Lcom/anddoes/launcher/bm;->A:F

    .line 434
    iput v4, p0, Lcom/anddoes/launcher/bm;->h:I

    .line 435
    iput v3, p0, Lcom/anddoes/launcher/bm;->i:I

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    goto :goto_19

    .line 439
    :pswitch_28
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    if-eqz v0, :cond_31

    .line 440
    int-to-float v0, v4

    int-to-float v1, v3

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/bm;->b(FF)V

    .line 442
    :cond_31
    invoke-direct {p0}, Lcom/anddoes/launcher/bm;->f()V

    goto :goto_19

    .line 445
    :pswitch_35
    invoke-virtual {p0}, Lcom/anddoes/launcher/bm;->e()V

    goto :goto_19

    .line 427
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_28
        :pswitch_19
        :pswitch_35
    .end packed-switch
.end method

.method public final a(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->p:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/anddoes/launcher/bm;->p:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/anddoes/launcher/bm;->i:I

    return v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/anddoes/launcher/bm;->o:Landroid/view/View;

    .line 676
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/cb;)V
    .registers 3
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 529
    iget-boolean v2, p0, Lcom/anddoes/launcher/bm;->g:Z

    if-nez v2, :cond_7

    .line 579
    :goto_6
    return v0

    .line 533
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 536
    invoke-direct {p0, v3, v4}, Lcom/anddoes/launcher/bm;->a(FF)[I

    move-result-object v5

    .line 537
    aget v6, v5, v0

    .line 538
    aget v5, v5, v1

    .line 540
    packed-switch v2, :pswitch_data_94

    :goto_1e
    move v0, v1

    .line 579
    goto :goto_6

    .line 543
    :pswitch_20
    iput v3, p0, Lcom/anddoes/launcher/bm;->z:F

    .line 544
    iput v4, p0, Lcom/anddoes/launcher/bm;->A:F

    .line 545
    iput v6, p0, Lcom/anddoes/launcher/bm;->h:I

    .line 546
    iput v5, p0, Lcom/anddoes/launcher/bm;->i:I

    .line 548
    iget v2, p0, Lcom/anddoes/launcher/bm;->j:I

    if-lt v6, v2, :cond_37

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/bm;->j:I

    sub-int/2addr v2, v3

    if-le v6, v2, :cond_43

    .line 549
    :cond_37
    iput v1, p0, Lcom/anddoes/launcher/bm;->r:I

    .line 550
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e

    .line 552
    :cond_43
    iput v0, p0, Lcom/anddoes/launcher/bm;->r:I

    goto :goto_1e

    .line 556
    :pswitch_46
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    if-eqz v0, :cond_74

    .line 557
    iget v0, p0, Lcom/anddoes/launcher/bm;->z:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/anddoes/launcher/bm;->j:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_68

    iget v0, p0, Lcom/anddoes/launcher/bm;->A:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/anddoes/launcher/bm;->j:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_74

    .line 558
    :cond_68
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 559
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->c:Lcom/anddoes/launcher/Launcher;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anddoes/launcher/Launcher;->h:Lcom/anddoes/launcher/ui/f;

    .line 562
    :cond_74
    invoke-direct {p0, v6, v5}, Lcom/anddoes/launcher/bm;->a(II)V

    goto :goto_1e

    .line 566
    :pswitch_78
    invoke-direct {p0, v6, v5}, Lcom/anddoes/launcher/bm;->a(II)V

    .line 568
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->s:Lcom/anddoes/launcher/bo;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    if-eqz v0, :cond_8b

    .line 570
    int-to-float v0, v6

    int-to-float v2, v5

    invoke-direct {p0, v0, v2}, Lcom/anddoes/launcher/bm;->b(FF)V

    .line 572
    :cond_8b
    invoke-direct {p0}, Lcom/anddoes/launcher/bm;->f()V

    goto :goto_1e

    .line 575
    :pswitch_8f
    invoke-virtual {p0}, Lcom/anddoes/launcher/bm;->e()V

    goto :goto_1e

    .line 540
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_20
        :pswitch_78
        :pswitch_46
        :pswitch_8f
    .end packed-switch
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    return v0
.end method

.method public final e()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 363
    iget-boolean v0, p0, Lcom/anddoes/launcher/bm;->g:Z

    if-eqz v0, :cond_23

    .line 364
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    if-eqz v0, :cond_10

    .line 365
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->t:Lcom/anddoes/launcher/cb;

    iget-object v1, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    invoke-interface {v0, v1}, Lcom/anddoes/launcher/cb;->d(Lcom/anddoes/launcher/cc;)V

    .line 367
    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-boolean v2, v0, Lcom/anddoes/launcher/cc;->j:Z

    .line 368
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iput-boolean v2, v0, Lcom/anddoes/launcher/cc;->e:Z

    .line 369
    iget-object v0, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    iget-object v0, v0, Lcom/anddoes/launcher/cc;->h:Lcom/anddoes/launcher/bw;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anddoes/launcher/bm;->k:Lcom/anddoes/launcher/cc;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/anddoes/launcher/bw;->a(Landroid/view/View;Lcom/anddoes/launcher/cc;Z)V

    .line 371
    :cond_23
    invoke-direct {p0}, Lcom/anddoes/launcher/bm;->f()V

    .line 372
    return-void
.end method
