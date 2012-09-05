.class public Lcom/google/googlenav/ui/Workspace;
.super Landroid/view/ViewGroup;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Landroid/view/VelocityTracker;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/google/googlenav/ui/TabRow;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/googlenav/ui/bM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/Workspace;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    new-instance v0, Lcom/google/googlenav/ui/bL;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/bL;-><init>(Lcom/google/googlenav/ui/Workspace;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->d()V

    return-void
.end method

.method private a(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_b

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_e

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_4
.end method

.method private a(Landroid/graphics/Canvas;IJ)V
    .registers 8

    if-ltz p2, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_13

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_13
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    if-ne v1, v2, :cond_32

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_32
    return-void

    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private d()V
    .registers 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->c:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    return-void
.end method

.method private e()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_f
.end method

.method private f()V
    .registers 4

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 6

    const/4 v1, -0x1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_14

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_11

    :goto_10
    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    move v0, v1

    goto :goto_10
.end method

.method public a(I)Landroid/view/View;
    .registers 3

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    if-lt p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9

    :cond_13
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_9
.end method

.method public a()V
    .registers 6

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/TabRow;->a()V

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_29

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/google/googlenav/ui/TabRow;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_29
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_35

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_37

    :cond_35
    iput v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_47

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_47
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->requestLayout()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bM;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bM;

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v0, 0x11

    if-ne p2, v0, :cond_25

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_5

    :cond_25
    const/16 v0, 0x42

    if-ne p2, v0, :cond_5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_5
.end method

.method public addView(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_8
    :goto_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_10
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt p2, v0, :cond_8

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_8
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    return v0
.end method

.method public b(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    return-void
.end method

.method public c()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    :cond_c
    return v0
.end method

.method c(I)V
    .registers 11

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v6, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_32
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->e()I

    move-result v1

    mul-int v3, v6, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v1

    sub-int/2addr v3, v1

    mul-int/lit16 v5, v0, 0x12c

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars(I)Z

    if-nez v5, :cond_48

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :cond_48
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v4, :cond_5b

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->a:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v7, v4

    invoke-virtual {p0, v0, v7, v8}, Lcom/google/googlenav/ui/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_68
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_78
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bM;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->u:Lcom/google/googlenav/ui/bM;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-interface {v0, v6, v1}, Lcom/google/googlenav/ui/bM;->a(II)V

    :cond_83
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->invalidate()V

    goto :goto_6
.end method

.method public computeScroll()V
    .registers 5

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->postInvalidate()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v3, :cond_1b

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iput v3, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_1c
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->d:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getDrawingTime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/graphics/Canvas;IJ)V

    goto :goto_b
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    if-lez v1, :cond_2f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    :goto_14
    return v0

    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    goto :goto_14

    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_c
    move-object v0, p1

    :goto_d
    if-ne v0, v1, :cond_16

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_12
    return-void

    :cond_13
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_c

    :cond_16
    if-eq v0, p0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_f

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-eqz v3, :cond_f

    :cond_e
    :goto_e
    return v2

    :cond_f
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_9e

    :cond_14
    :goto_14
    :pswitch_14
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-nez v0, :cond_e

    move v2, v1

    goto :goto_e

    :pswitch_1a
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v6, p0, Lcom/google/googlenav/ui/Workspace;->o:I

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->p:I

    if-le v3, v4, :cond_66

    move v4, v2

    :goto_40
    if-le v3, v6, :cond_68

    move v3, v2

    :goto_43
    if-le v0, v6, :cond_6a

    move v0, v2

    :goto_46
    if-nez v3, :cond_4a

    if-eqz v0, :cond_14

    :cond_4a
    if-eqz v4, :cond_50

    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v5, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    :cond_50
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v7, :cond_14

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_14

    :cond_66
    move v4, v1

    goto :goto_40

    :cond_68
    move v3, v1

    goto :goto_43

    :cond_6a
    move v0, v1

    goto :goto_46

    :pswitch_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    iput v3, p0, Lcom/google/googlenav/ui/Workspace;->l:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    iput-boolean v2, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    :goto_8b
    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    goto :goto_14

    :cond_8e
    move v0, v2

    goto :goto_8b

    :pswitch_90
    iput v1, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->n:Z

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_14

    :pswitch_98
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_90
        :pswitch_1a
        :pswitch_90
        :pswitch_14
        :pswitch_14
        :pswitch_98
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_7
    if-ge v1, v3, :cond_26

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_32

    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_24

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_24

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->a(II)I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    goto :goto_21

    :cond_32
    iget-boolean v0, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/googlenav/ui/Workspace;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    :cond_4d
    iget v2, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/Workspace;->scrollTo(II)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/Workspace;->setHorizontalScrollBarEnabled(Z)V

    iput-boolean v1, p0, Lcom/google/googlenav/ui/Workspace;->e:Z

    :cond_58
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_6
    return v2

    :cond_7
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->g:I

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    goto :goto_6

    :cond_17
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    goto :goto_d
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    check-cast p1, Lcom/google/googlenav/ui/bN;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bN;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/googlenav/ui/bN;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1c

    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    :cond_28
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lcom/google/googlenav/ui/bN;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bN;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    iput v1, v0, Lcom/google/googlenav/ui/bN;->a:I

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->s:Lcom/google/googlenav/ui/TabRow;

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/TabRow;->a(IZ)V

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_110

    :cond_1b
    :goto_1b
    :pswitch_1b
    return v1

    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto :goto_1b

    :pswitch_38
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v3, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->k:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v0

    if-gez v3, :cond_5d

    if-lez v0, :cond_1b

    neg-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_1b

    :cond_5d
    if-lez v3, :cond_7e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    if-lez v0, :cond_1b

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/ui/Workspace;->scrollBy(II)V

    goto :goto_1b

    :cond_7e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->awakenScrollBars()Z

    goto :goto_1b

    :pswitch_82
    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    if-ne v0, v1, :cond_dc

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v3, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/google/googlenav/ui/Workspace;->q:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/google/googlenav/ui/Workspace;->j:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x42c8

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e2

    move v0, v1

    :goto_ae
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getScrollX()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    div-int v4, v5, v4

    if-eqz v0, :cond_e4

    const/16 v5, 0x258

    if-le v3, v5, :cond_e4

    iget v5, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-lez v5, :cond_e4

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    :goto_d0
    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/Workspace;->i:Landroid/view/VelocityTracker;

    :cond_dc
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_1b

    :cond_e2
    move v0, v2

    goto :goto_ae

    :cond_e4
    if-eqz v0, :cond_100

    const/16 v0, -0x258

    if-ge v3, v0, :cond_100

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_100

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    goto :goto_d0

    :cond_100
    invoke-direct {p0}, Lcom/google/googlenav/ui/Workspace;->f()V

    goto :goto_d0

    :pswitch_104
    iput v2, p0, Lcom/google/googlenav/ui/Workspace;->m:I

    iput v7, p0, Lcom/google/googlenav/ui/Workspace;->r:I

    goto/16 :goto_1b

    :pswitch_10a
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_82
        :pswitch_38
        :pswitch_104
        :pswitch_1b
        :pswitch_1b
        :pswitch_10a
    .end packed-switch
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5

    const/4 v2, -0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->a(Landroid/view/View;)I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eq v0, v2, :cond_3

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-gt v0, v1, :cond_17

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->a()V

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    goto :goto_3
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    :cond_12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/Workspace;->f:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/googlenav/ui/Workspace;->h:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->c(I)V

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/Workspace;->c()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/Workspace;->a(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method
