.class public Lcom/anddoes/launcher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/anddoes/launcher/bm;

.field private b:[I

.field private c:I

.field private d:I

.field private e:Lcom/anddoes/launcher/Launcher;

.field private final f:Ljava/util/ArrayList;

.field private g:Lcom/anddoes/launcher/v;

.field private h:Landroid/animation/ValueAnimator;

.field private i:Landroid/animation/ValueAnimator;

.field private j:Landroid/animation/TimeInterpolator;

.field private k:Landroid/view/View;

.field private l:[I

.field private m:F

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/Rect;

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    .line 61
    iput-object v2, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    .line 62
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->j:Landroid/animation/TimeInterpolator;

    .line 63
    iput-object v2, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    .line 65
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->l:[I

    .line 68
    iput-boolean v4, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->p:Landroid/graphics/Rect;

    .line 70
    iput v3, p0, Lcom/anddoes/launcher/DragLayer;->q:I

    .line 71
    iput v3, p0, Lcom/anddoes/launcher/DragLayer;->r:I

    .line 83
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 85
    return-void
.end method

.method private a(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    new-instance v4, Landroid/graphics/Rect;

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    .line 491
    move/from16 v0, p3

    invoke-direct {v4, p2, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 493
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 494
    const/high16 v6, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move-object v3, p1

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    .line 495
    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/DragLayer;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/anddoes/launcher/DragLayer;->m:F

    return-void
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 200
    if-eqz p1, :cond_31

    const v0, 0x7f060296

    .line 202
    :goto_11
    const/16 v1, 0x8

    .line 201
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/DragLayer;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 204
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/anddoes/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 207
    :cond_30
    return-void

    .line 200
    :cond_31
    const v0, 0x7f060295

    goto :goto_11
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 118
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    .line 131
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v4

    .line 132
    if-eqz v4, :cond_92

    if-eqz p2, :cond_92

    .line 133
    invoke-virtual {v4}, Lcom/anddoes/launcher/Folder;->a()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 134
    invoke-virtual {v4}, Lcom/anddoes/launcher/Folder;->d()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/anddoes/launcher/DragLayer;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->p:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_80

    move v0, v1

    :goto_4d
    if-nez v0, :cond_82

    .line 135
    invoke-virtual {v4}, Lcom/anddoes/launcher/Folder;->b()V

    move v0, v1

    .line 146
    :goto_53
    return v0

    .line 118
    :cond_54
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/v;

    .line 119
    invoke-virtual {v0, v3}, Lcom/anddoes/launcher/v;->getHitRect(Landroid/graphics/Rect;)V

    .line 120
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 121
    invoke-virtual {v0}, Lcom/anddoes/launcher/v;->getLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/anddoes/launcher/v;->getTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0, v7, v8}, Lcom/anddoes/launcher/v;->a(II)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 122
    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->g:Lcom/anddoes/launcher/v;

    .line 123
    iput v4, p0, Lcom/anddoes/launcher/DragLayer;->c:I

    .line 124
    iput v5, p0, Lcom/anddoes/launcher/DragLayer;->d:I

    .line 125
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 126
    goto :goto_53

    :cond_80
    move v0, v2

    .line 134
    goto :goto_4d

    .line 140
    :cond_82
    invoke-virtual {p0, v4, v3}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 141
    invoke-direct {p0, v4, p1}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 142
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->z()V

    move v0, v1

    .line 143
    goto :goto_53

    :cond_92
    move v0, v2

    .line 146
    goto :goto_53
.end method

.method private a(Lcom/anddoes/launcher/Folder;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->p:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 107
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->p:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic a(Lcom/anddoes/launcher/DragLayer;)[I
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->l:[I

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    if-eqz v0, :cond_1c

    .line 625
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/DragLayer;->q:I

    .line 626
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->B()Lcom/anddoes/launcher/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/DragLayer;->r:I

    .line 628
    :cond_1c
    return-void
.end method

.method static synthetic b(Lcom/anddoes/launcher/DragLayer;)V
    .registers 4
    .parameter

    .prologue
    .line 588
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_38

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/bt;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/bt;-><init>(Lcom/anddoes/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/bu;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/bu;-><init>(Lcom/anddoes/launcher/DragLayer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic b(Lcom/anddoes/launcher/DragLayer;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/anddoes/launcher/DragLayer;->n:F

    return-void
.end method

.method static synthetic c(Lcom/anddoes/launcher/DragLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    return-void
.end method

.method static synthetic d(Lcom/anddoes/launcher/DragLayer;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/graphics/Rect;)F
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aput v4, v0, v4

    .line 257
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aput v4, v0, v5

    .line 258
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;[I)F

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aget v2, v2, v5

    .line 260
    iget-object v3, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aget v3, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/anddoes/launcher/DragLayer;->b:[I

    aget v4, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 259
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    return v0
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 380
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 383
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    :cond_19
    return-void

    .line 380
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/v;

    .line 381
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_e
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 521
    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 520
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 522
    invoke-virtual {p0}, Lcom/anddoes/launcher/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 523
    const v4, 0x7f0b001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    .line 526
    if-gez p6, :cond_49

    .line 527
    const v5, 0x7f0b001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    .line 528
    cmpg-float v3, v2, v4

    if-gez v3, :cond_49

    .line 529
    move/from16 v0, p6

    int-to-float v3, v0

    iget-object v5, p0, Lcom/anddoes/launcher/DragLayer;->j:Landroid/animation/TimeInterpolator;

    div-float/2addr v2, v4

    invoke-interface {v5, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 p6, v0

    .line 533
    :cond_49
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_52

    .line 534
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 537
    :cond_52
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_5b

    .line 538
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 541
    :cond_5b
    iput-object p1, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 543
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    .line 544
    if-eqz p8, :cond_6c

    if-nez p7, :cond_73

    .line 545
    :cond_6c
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/anddoes/launcher/DragLayer;->j:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    :cond_73
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    move/from16 v0, p6

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 549
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_b6

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 550
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 551
    iget-object v12, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/anddoes/launcher/br;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p8

    move-object/from16 v6, p7

    move-object v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/anddoes/launcher/br;-><init>(Lcom/anddoes/launcher/DragLayer;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/graphics/Rect;Landroid/graphics/Rect;FFF)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 573
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/anddoes/launcher/bs;

    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {v3, p0, v0, v1}, Lcom/anddoes/launcher/bs;-><init>(Lcom/anddoes/launcher/DragLayer;Ljava/lang/Runnable;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 585
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 586
    return-void

    .line 549
    :array_b6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public final a(Landroid/view/View;[I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 265
    aput v1, p2, v1

    .line 266
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;[I)F

    .line 268
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/bm;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    .line 89
    iput-object p2, p0, Lcom/anddoes/launcher/DragLayer;->a:Lcom/anddoes/launcher/bm;

    .line 90
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bx;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bx;Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 430
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ba;

    invoke-virtual {v0, p2}, Lcom/anddoes/launcher/ba;->a(Landroid/view/View;)V

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;

    .line 433
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 434
    invoke-virtual {p0, p1, v1}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 436
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 437
    iget v3, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->f:I

    aput v3, v2, v4

    .line 438
    iget v0, v0, Lcom/anddoes/launcher/CellLayout$LayoutParams;->g:I

    aput v0, v2, v5

    .line 441
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;[I)F

    move-result v6

    .line 442
    aget v3, v2, v4

    .line 443
    aget v2, v2, v5

    .line 444
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_88

    move-object v0, p2

    .line 445
    check-cast v0, Landroid/widget/TextView;

    .line 446
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v4, v4, v5

    .line 449
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    .line 450
    invoke-virtual {p1}, Lcom/anddoes/launcher/bx;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    .line 452
    invoke-virtual {p1}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v4, v3, v0

    .line 464
    :goto_70
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 465
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 466
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 468
    new-instance v7, Lcom/anddoes/launcher/bp;

    invoke-direct {v7, p0, p2, p4}, Lcom/anddoes/launcher/bp;-><init>(Lcom/anddoes/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    .line 484
    invoke-direct/range {v0 .. v8}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V

    .line 486
    return-void

    .line 453
    :cond_88
    instance-of v0, p2, Lcom/anddoes/launcher/FolderIcon;

    if-eqz v0, :cond_a6

    .line 455
    sget v0, Lcom/anddoes/launcher/do;->a:I

    div-int/lit8 v0, v0, 0x2

    sub-int v5, v2, v0

    .line 457
    invoke-virtual {p1}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v4, v3, v0

    goto :goto_70

    .line 459
    :cond_a6
    invoke-virtual {p1}, Lcom/anddoes/launcher/bx;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v5, v2, v0

    .line 460
    invoke-virtual {p1}, Lcom/anddoes/launcher/bx;->getMeasuredWidth()I

    move-result v0

    .line 461
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 460
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 461
    div-int/lit8 v0, v0, 0x2

    sub-int v4, v3, v0

    goto :goto_70
.end method

.method public final a(Lcom/anddoes/launcher/bx;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/bx;Landroid/view/View;ILjava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/bx;[IFLjava/lang/Runnable;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 415
    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/DragLayer;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 416
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 417
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 419
    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x1

    aget v5, p2, v0

    .line 420
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v7, p4

    .line 419
    invoke-direct/range {v0 .. v8}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/View;IIIIFLjava/lang/Runnable;I)V

    .line 421
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/ec;Landroid/view/View;Lcom/anddoes/launcher/CellLayout;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 396
    new-instance v0, Lcom/anddoes/launcher/v;

    invoke-virtual {p0}, Lcom/anddoes/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/v;-><init>(Landroid/content/Context;Lcom/anddoes/launcher/ec;Landroid/view/View;Lcom/anddoes/launcher/CellLayout;Lcom/anddoes/launcher/DragLayer;)V

    .line 399
    new-instance v1, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    invoke-direct {v1, v6, v6}, Lcom/anddoes/launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 400
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/anddoes/launcher/DragLayer$LayoutParams;->c:Z

    .line 402
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/v;->a(Z)V

    .line 406
    return-void
.end method

.method public final b(Landroid/view/View;[I)F
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 279
    const/4 v0, 0x2

    new-array v2, v0, [F

    aget v0, p2, v6

    int-to-float v0, v0

    aput v0, v2, v6

    aget v0, p2, v7

    int-to-float v0, v0

    aput v0, v2, v7

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 282
    const/high16 v0, 0x3f80

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    .line 283
    aget v1, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v2, v6

    .line 284
    aget v1, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    aput v1, v2, v7

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 286
    :goto_38
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_3e

    if-ne v0, p0, :cond_4f

    .line 294
    :cond_3e
    aget v0, v2, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v6

    .line 295
    aget v0, v2, v7

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v7

    .line 296
    return v1

    .line 287
    :cond_4f
    check-cast v0, Landroid/view/View;

    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v1, v3

    .line 290
    aget v3, v2, v6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 291
    aget v3, v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v7

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_38
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 301
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/DragLayer;->getLocationInWindow([I)V

    .line 302
    aget v1, v0, v3

    .line 303
    aget v2, v0, v4

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 306
    aget v3, v0, v3

    .line 307
    aget v0, v0, v4

    .line 309
    sub-int v1, v3, v1

    .line 310
    sub-int/2addr v0, v2

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 659
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    if-eqz v0, :cond_5e

    .line 662
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 663
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->l:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 664
    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->l:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 665
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 666
    iget-object v3, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 667
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 668
    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->m:F

    sub-float v0, v4, v0

    int-to-float v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    iget v1, p0, Lcom/anddoes/launcher/DragLayer;->m:F

    sub-float v1, v4, v1

    int-to-float v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 669
    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->m:F

    iget v1, p0, Lcom/anddoes/launcher/DragLayer;->m:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 670
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    iget v1, p0, Lcom/anddoes/launcher/DragLayer;->n:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 671
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 672
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 674
    :cond_5e
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->a:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0}, Lcom/anddoes/launcher/bm;->c()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->a:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, p1, p2}, Lcom/anddoes/launcher/bm;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 634
    invoke-virtual {p0}, Lcom/anddoes/launcher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/LauncherApplication;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 635
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getChildDrawingOrder(II)I

    move-result p2

    .line 652
    :cond_f
    :goto_f
    return p2

    .line 638
    :cond_10
    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->q:I

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->r:I

    if-eq v0, v1, :cond_f

    .line 639
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->L()Z

    move-result v0

    if-nez v0, :cond_f

    .line 640
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    iget-boolean v0, v0, Lcom/anddoes/launcher/Launcher;->i:Z

    if-nez v0, :cond_f

    .line 647
    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->r:I

    if-ne p2, v0, :cond_31

    .line 648
    iget p2, p0, Lcom/anddoes/launcher/DragLayer;->q:I

    goto :goto_f

    .line 649
    :cond_31
    iget v0, p0, Lcom/anddoes/launcher/DragLayer;->q:I

    if-ne p2, v0, :cond_f

    .line 650
    iget p2, p0, Lcom/anddoes/launcher/DragLayer;->r:I

    goto :goto_f
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 162
    iget-object v2, p0, Lcom/anddoes/launcher/DragLayer;->e:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v2}, Lcom/anddoes/launcher/Launcher;->C()Lcom/anddoes/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anddoes/launcher/Workspace;->k()Lcom/anddoes/launcher/Folder;

    move-result-object v2

    .line 163
    if-nez v2, :cond_f

    .line 195
    :cond_e
    :goto_e
    return v0

    .line 166
    :cond_f
    iget-object v3, p0, Lcom/anddoes/launcher/DragLayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 169
    packed-switch v3, :pswitch_data_58

    :pswitch_22
    goto :goto_e

    .line 182
    :goto_23
    :pswitch_23
    invoke-direct {p0, v2, p1}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 183
    if-nez v3, :cond_50

    iget-boolean v4, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    if-nez v4, :cond_50

    .line 184
    invoke-virtual {v2}, Lcom/anddoes/launcher/Folder;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/DragLayer;->a(Z)V

    .line 185
    iput-boolean v1, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    move v0, v1

    .line 186
    goto :goto_e

    .line 171
    :pswitch_38
    invoke-direct {p0, v2, p1}, Lcom/anddoes/launcher/DragLayer;->a(Lcom/anddoes/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 172
    if-nez v3, :cond_49

    .line 173
    invoke-virtual {v2}, Lcom/anddoes/launcher/Folder;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/anddoes/launcher/DragLayer;->a(Z)V

    .line 174
    iput-boolean v1, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    move v0, v1

    .line 175
    goto :goto_e

    .line 176
    :cond_49
    if-eqz v3, :cond_4e

    .line 177
    iput-boolean v0, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    goto :goto_23

    :cond_4e
    move v0, v1

    .line 179
    goto :goto_e

    .line 187
    :cond_50
    if-eqz v3, :cond_55

    .line 188
    iput-boolean v0, p0, Lcom/anddoes/launcher/DragLayer;->o:Z

    goto :goto_e

    :cond_55
    move v0, v1

    .line 190
    goto :goto_e

    .line 169
    nop

    :pswitch_data_58
    .packed-switch 0x7
        :pswitch_23
        :pswitch_22
        :pswitch_38
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 157
    :goto_d
    return v0

    .line 156
    :cond_e
    invoke-virtual {p0}, Lcom/anddoes/launcher/DragLayer;->a()V

    .line 157
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->a:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/bm;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 365
    invoke-virtual {p0}, Lcom/anddoes/launcher/DragLayer;->getChildCount()I

    move-result v2

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-lt v1, v2, :cond_c

    .line 376
    return-void

    .line 367
    :cond_c
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    instance-of v4, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    if-eqz v4, :cond_31

    .line 370
    check-cast v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;

    .line 371
    iget-boolean v4, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->c:Z

    if-eqz v4, :cond_31

    .line 372
    iget v4, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    iget v5, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    iget v6, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    iget v7, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    iget v0, v0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 366
    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    .line 226
    invoke-direct {p0, p1, v1}, Lcom/anddoes/launcher/DragLayer;->a(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 245
    :cond_22
    :goto_22
    return v0

    .line 232
    :cond_23
    iget-object v5, p0, Lcom/anddoes/launcher/DragLayer;->g:Lcom/anddoes/launcher/v;

    if-eqz v5, :cond_2b

    .line 234
    packed-switch v2, :pswitch_data_54

    :goto_2a
    move v1, v0

    .line 244
    :cond_2b
    :goto_2b
    if-nez v1, :cond_22

    .line 245
    iget-object v0, p0, Lcom/anddoes/launcher/DragLayer;->a:Lcom/anddoes/launcher/bm;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/bm;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_22

    .line 236
    :pswitch_34
    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->g:Lcom/anddoes/launcher/v;

    iget v2, p0, Lcom/anddoes/launcher/DragLayer;->c:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/anddoes/launcher/DragLayer;->d:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/v;->b(II)V

    move v1, v0

    .line 237
    goto :goto_2b

    .line 240
    :pswitch_43
    iget-object v1, p0, Lcom/anddoes/launcher/DragLayer;->g:Lcom/anddoes/launcher/v;

    iget v2, p0, Lcom/anddoes/launcher/DragLayer;->c:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/anddoes/launcher/DragLayer;->d:I

    sub-int v3, v4, v3

    invoke-virtual {v1, v2, v3}, Lcom/anddoes/launcher/v;->c(II)V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anddoes/launcher/DragLayer;->g:Lcom/anddoes/launcher/v;

    goto :goto_2a

    .line 234
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_34
        :pswitch_43
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 614
    invoke-direct {p0}, Lcom/anddoes/launcher/DragLayer;->b()V

    .line 615
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 620
    invoke-direct {p0}, Lcom/anddoes/launcher/DragLayer;->b()V

    .line 621
    return-void
.end method
