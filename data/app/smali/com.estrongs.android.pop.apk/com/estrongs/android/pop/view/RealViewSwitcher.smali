.class public Lcom/estrongs/android/pop/view/RealViewSwitcher;
.super Landroid/widget/ViewAnimator;


# instance fields
.field public a:I

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:Z

.field private i:[Z

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/estrongs/android/pop/view/ld;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->m:I

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->n:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->o:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->n:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->m:I

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->n:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->o:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->n:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c()V

    return-void
.end method

.method private c(I)I
    .registers 5

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-lt p1, v1, :cond_e

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    mul-int/2addr v0, v1

    goto :goto_3

    :cond_e
    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v2, :cond_17

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    :cond_17
    add-int/2addr v0, v1

    goto :goto_3
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    return-void
.end method

.method private d(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-lt v0, v1, :cond_7

    const/4 v0, -0x1

    :cond_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    return-void
.end method

.method private e()V
    .registers 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    aget v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    return-void
.end method

.method private f()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    return-void
.end method

.method private g()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    return-void
.end method

.method private h()V
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, -0x1

    :cond_13
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(I)V

    return-void
.end method

.method private i()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_18

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2d

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    aput v0, v2, v3

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->o:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    goto :goto_17
.end method


# virtual methods
.method public a()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    aget v0, v0, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(I)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->invalidate()V

    goto :goto_9
.end method

.method public a(Lcom/estrongs/android/pop/view/ld;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->o:Z

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    return-void
.end method

.method public a([Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a([ZZ)V

    return-void
.end method

.method public a([ZZ)V
    .registers 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    if-eqz v1, :cond_8

    if-eqz p2, :cond_1d

    :cond_8
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    :goto_d
    array-length v1, p1

    if-lt v0, v1, :cond_14

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1d
    array-length v1, p1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    array-length v2, v2

    if-ne v1, v2, :cond_46

    move v1, v0

    move v2, v0

    :goto_25
    array-length v4, p1

    if-lt v1, v4, :cond_34

    :goto_28
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i()V

    if-eqz v2, :cond_13

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->requestLayout()V

    goto :goto_13

    :cond_34
    aget-boolean v4, p1, v1

    iget-object v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v5, v5, v1

    if-eq v4, v5, :cond_43

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v4, p1, v1

    aput-boolean v4, v2, v1

    move v2, v3

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_46
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    move v1, v0

    :goto_4c
    array-length v2, p1

    if-lt v1, v2, :cond_51

    move v2, v3

    goto :goto_28

    :cond_51
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v4, p1, v1

    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c
.end method

.method public b()I
    .registers 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_f
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    if-eq v1, v0, :cond_16

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->invalidate()V

    goto :goto_16
.end method

.method public computeScroll()V
    .registers 7

    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->postInvalidate()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    if-eq v0, v5, :cond_1d

    const/4 v0, -0x1

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    iput v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    if-gez v3, :cond_58

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    :goto_2f
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    if-eqz v3, :cond_36

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e()V

    :cond_36
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    if-eqz v3, :cond_3d

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g()V

    :cond_3d
    if-eqz v2, :cond_46

    :try_start_3f
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_60

    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    if-eqz v0, :cond_55

    :try_start_4a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/ld;->a(I)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_55} :catch_65

    :cond_55
    :goto_55
    iput v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g:I

    goto :goto_1d

    :cond_58
    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iget v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-lt v3, v4, :cond_6e

    move v0, v1

    goto :goto_2f

    :catch_60
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    goto :goto_46

    :catch_65
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    iget v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/view/ld;->a(I)V

    goto :goto_55

    :cond_6e
    move v2, v1

    goto :goto_2f
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_c
    if-lt v3, v4, :cond_11

    :goto_e
    return-void

    :cond_f
    move v0, v1

    goto :goto_7

    :cond_11
    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_3b

    move-result-object v5

    :try_start_15
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aget-boolean v2, v2, v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_32

    :goto_19
    if-nez v2, :cond_35

    const/4 v2, 0x0

    :try_start_1c
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v6, 0x0

    add-int v7, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v2

    :goto_2e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :catch_32
    move-exception v2

    move v2, v1

    goto :goto_19

    :cond_35
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_2e

    :catch_3b
    move-exception v0

    goto :goto_e
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    invoke-super {p0, p1, p2}, Landroid/widget/ViewAnimator;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v3, v5, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewSwitcher can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v5, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewSwitcher can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildCount()I

    move-result v3

    if-lt v3, v4, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-ge v0, v4, :cond_3b

    :cond_39
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    :cond_3b
    move v0, v1

    :goto_3c
    if-lt v0, v3, :cond_60

    iget-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    if-nez v0, :cond_4c

    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    move v0, v1

    :goto_47
    if-lt v0, v3, :cond_6a

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i()V

    :cond_4c
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h:Z

    if-nez v0, :cond_54

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    if-eq v2, v0, :cond_5f

    :cond_54
    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h:Z

    :cond_5f
    return-void

    :cond_60
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_6a
    iget-object v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    aput-boolean v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    if-nez v2, :cond_c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    :cond_c
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    packed-switch v2, :pswitch_data_1ca

    :cond_1f
    :goto_1f
    return v1

    :pswitch_20
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2d
    iput v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e:F

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3e

    :goto_37
    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->m:I

    goto :goto_1f

    :cond_3e
    move v0, v1

    goto :goto_37

    :pswitch_40
    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a:I

    if-le v2, v4, :cond_b6

    move v2, v1

    :goto_4e
    if-eqz v2, :cond_52

    iput v1, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    :cond_52
    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    if-ne v2, v1, :cond_1f

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e:F

    sub-float/2addr v2, v3

    float-to-int v4, v2

    iput v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-gez v4, :cond_c6

    if-lez v3, :cond_7f

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v2, :cond_77

    add-int v2, v3, v4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v2, v5, :cond_b8

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    if-nez v2, :cond_77

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f()V

    :cond_77
    :goto_77
    neg-int v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->scrollBy(II)V

    :cond_7f
    :goto_7f
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v2

    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v3, :cond_139

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_135

    iget v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v0, v0, -0x1

    :cond_9c
    :goto_9c
    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->m:I

    if-eq v2, v0, :cond_1f

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-ge v0, v2, :cond_1f

    if-ltz v0, :cond_1f

    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->m:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    aget v0, v2, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1f

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->s:Lcom/estrongs/android/pop/view/ld;

    invoke-interface {v2, v0}, Lcom/estrongs/android/pop/view/ld;->b(I)V

    goto/16 :goto_1f

    :cond_b6
    move v2, v0

    goto :goto_4e

    :cond_b8
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v2, v5, :cond_77

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    if-eqz v2, :cond_77

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->e()V

    goto :goto_77

    :cond_c6
    if-lez v4, :cond_7f

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v2, :cond_df

    add-int v2, v3, v4

    iget v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v5

    if-le v2, v5, :cond_ff

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    if-nez v2, :cond_df

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d()V

    :cond_df
    :goto_df
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->r:Z

    if-eqz v2, :cond_114

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_ef
    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_7f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->scrollBy(II)V

    goto :goto_7f

    :cond_ff
    iget v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v5

    iget v6, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_df

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    if-eqz v2, :cond_df

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->g()V

    goto :goto_df

    :cond_114
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->q:Z

    if-eqz v2, :cond_124

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c(I)I

    move-result v2

    iget v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->k:I

    add-int/2addr v2, v5

    goto :goto_ef

    :cond_124
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v5, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v5, v5, -0x1

    aget v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_ef

    :cond_135
    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-ge v2, v3, :cond_9c

    :cond_139
    move v0, v2

    goto/16 :goto_9c

    :pswitch_13c
    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    if-ne v2, v1, :cond_17f

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_187

    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v3, :cond_183

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    if-ltz v3, :cond_187

    :cond_158
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1b1

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(I)V

    :goto_173
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_17f

    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->c:Landroid/view/VelocityTracker;

    :cond_17f
    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    goto/16 :goto_1f

    :cond_183
    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    if-gtz v3, :cond_158

    :cond_187
    const/16 v3, -0x12c

    if-ge v2, v3, :cond_1bd

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->p:Z

    if-eqz v2, :cond_1b5

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    if-ge v2, v3, :cond_1bd

    :cond_195
    iget-object v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->j:[I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-ge v2, v3, :cond_1c1

    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(I)V

    goto :goto_173

    :cond_1b1
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h()V

    goto :goto_173

    :cond_1b5
    iget v2, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->f:I

    iget v3, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->l:I

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_195

    :cond_1bd
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h()V

    goto :goto_173

    :cond_1c1
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->h()V

    goto :goto_173

    :pswitch_1c5
    iput v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->d:I

    goto/16 :goto_1f

    nop

    :pswitch_data_1ca
    .packed-switch 0x0
        :pswitch_20
        :pswitch_13c
        :pswitch_40
        :pswitch_1c5
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/RealViewSwitcher;->i:[Z

    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    return-void
.end method
