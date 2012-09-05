.class public abstract Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/widget/Scroller;

.field private g:Landroid/view/VelocityTracker;

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcom/google/android/youtube/core/ui/b;

.field private s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    .line 52
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 63
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 65
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 73
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 736
    new-instance v0, Lcom/google/android/youtube/core/ui/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/a;-><init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    .line 122
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b:I

    .line 124
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 127
    sget-object v0, Lcom/google/android/youtube/b;->h:[I

    const v1, 0x7f0d0007

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->values()[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->m:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->n:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->o:I

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I
    .registers 2
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    return v0
.end method

.method private a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 694
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 696
    iput v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 698
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 699
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2c

    .line 701
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 704
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v1

    mul-int v3, v4, v1

    .line 705
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v1

    .line 706
    sub-int/2addr v3, v1

    .line 708
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    iget-boolean v5, v5, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableSmoothScroll:Z

    if-eqz v5, :cond_89

    .line 709
    mul-int/lit16 v0, v0, 0x12c

    .line 710
    if-nez v0, :cond_45

    .line 711
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 713
    :cond_45
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars(I)Z

    move v5, v0

    .line 716
    :goto_49
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-eq v0, v6, :cond_66

    .line 718
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 722
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 723
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    add-int/lit8 v6, v5, 0xa

    int-to-long v6, v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 726
    :cond_66
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    if-eqz v0, :cond_72

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/ui/b;->a(Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 731
    :cond_72
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 732
    :cond_7f
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 733
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 734
    return-void

    :cond_89
    move v5, v2

    goto :goto_49
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 557
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 558
    iget v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    if-ne v1, v2, :cond_32

    .line 562
    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 563
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 564
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_32

    .line 567
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 570
    :cond_32
    return-void

    .line 562
    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private b()I
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 209
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 211
    :cond_c
    return v0
.end method

.method private c()I
    .registers 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_f
    return v0
.end method

.method private e(I)V
    .registers 3
    .parameter

    .prologue
    .line 684
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 685
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    return v0
.end method

.method protected abstract a(I)V
.end method

.method public final a(Lcom/google/android/youtube/core/ui/b;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    .line 187
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 401
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1d

    .line 402
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v0, :cond_1c

    .line 403
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 410
    :cond_1c
    :goto_1c
    return-void

    .line 405
    :cond_1d
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1c

    .line 406
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 407
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1c
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 158
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 164
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 165
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 177
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 170
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 182
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method final b(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    :goto_8
    return-object v0

    :cond_9
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public final c(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 231
    :cond_e
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 232
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 234
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 235
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postInvalidate()V

    .line 262
    :cond_1b
    :goto_1b
    return-void

    .line 255
    :cond_1c
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    if-eq v0, v3, :cond_1b

    .line 256
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 257
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    if-eqz v0, :cond_1b

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/ui/b;->c(I)V

    goto :goto_1b
.end method

.method protected final d(I)V
    .registers 3
    .parameter

    .prologue
    .line 688
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 689
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 266
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eq v1, v2, :cond_1c

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1c

    move v1, v2

    .line 276
    :goto_c
    if-eqz v1, :cond_1e

    .line 277
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 294
    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v1, v0

    .line 266
    goto :goto_c

    .line 279
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v3

    .line 281
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    if-ltz v1, :cond_4c

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v5

    if-ge v1, v5, :cond_4c

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    iget v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_4c

    .line 283
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 284
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1b

    .line 287
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    .line 288
    :goto_50
    if-ge v0, v1, :cond_1b

    .line 289
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_50
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 384
    const/16 v1, 0x11

    if-ne p2, v1, :cond_11

    .line 385
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v1, :cond_27

    .line 386
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    .line 395
    :goto_10
    return v0

    .line 389
    :cond_11
    const/16 v1, 0x42

    if-ne p2, v1, :cond_27

    .line 390
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 391
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    goto :goto_10

    .line 395
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_10
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 421
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 424
    :goto_7
    if-ne v0, v1, :cond_d

    .line 425
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 435
    :cond_c
    return-void

    .line 428
    :cond_d
    if-eq v0, p0, :cond_c

    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 432
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_7
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableFling:Z

    if-nez v0, :cond_9

    .line 551
    :cond_8
    :goto_8
    return v1

    .line 467
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 468
    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eqz v3, :cond_16

    move v1, v2

    .line 469
    goto :goto_8

    .line 472
    :cond_16
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_9e

    .line 551
    :cond_1b
    :goto_1b
    :pswitch_1b
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eqz v0, :cond_8

    move v1, v2

    goto :goto_8

    .line 483
    :pswitch_21
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 486
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 487
    iget v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 489
    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->m:I

    .line 490
    iget v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->n:I

    if-le v3, v4, :cond_67

    move v4, v2

    .line 491
    :goto_47
    if-le v3, v6, :cond_69

    move v3, v2

    .line 492
    :goto_4a
    if-le v0, v6, :cond_6b

    move v0, v2

    .line 494
    :goto_4d
    if-nez v3, :cond_51

    if-eqz v0, :cond_1b

    .line 496
    :cond_51
    if-eqz v4, :cond_57

    .line 498
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 499
    iput v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 502
    :cond_57
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    if-eqz v0, :cond_1b

    .line 503
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 507
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1b

    :cond_67
    move v4, v1

    .line 490
    goto :goto_47

    :cond_69
    move v3, v1

    .line 491
    goto :goto_4a

    :cond_6b
    move v0, v1

    .line 492
    goto :goto_4d

    .line 515
    :pswitch_6d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 518
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    .line 519
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 520
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    .line 521
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 522
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_8c
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    goto :goto_1b

    :cond_8f
    move v0, v2

    goto :goto_8c

    .line 536
    :pswitch_91
    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 537
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 538
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto :goto_1b

    .line 543
    :pswitch_99
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    .line 472
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_91
        :pswitch_21
        :pswitch_91
        :pswitch_1b
        :pswitch_1b
        :pswitch_99
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 347
    :goto_7
    if-ge v1, v3, :cond_26

    .line 348
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 349
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 350
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 351
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 352
    add-int/2addr v0, v5

    .line 347
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 355
    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 310
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 311
    if-eq v0, v2, :cond_15

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 316
    if-eq v0, v2, :cond_23

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v2

    move v0, v1

    .line 322
    :goto_28
    if-ge v0, v2, :cond_4a

    .line 323
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_42

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_42

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 322
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 327
    :cond_42
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_3f

    .line 331
    :cond_4a
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    if-eqz v0, :cond_6b

    .line 332
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 333
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 334
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_60

    .line 335
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 337
    :cond_60
    iget v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 338
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 339
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    .line 341
    :cond_6b
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 370
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 371
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 375
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_10

    .line 377
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 379
    :cond_10
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_12
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter

    .prologue
    .line 752
    check-cast p1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    .line 753
    invoke-virtual {p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget v0, p1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 755
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1c

    .line 756
    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 758
    :cond_1c
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 759
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 745
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 746
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    iput v1, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 747
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 302
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c(I)V

    .line 303
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 304
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 584
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 586
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 590
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_11c

    .line 673
    :cond_1b
    :goto_1b
    :pswitch_1b
    return v1

    .line 596
    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_29

    .line 597
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 601
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    .line 602
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto :goto_1b

    .line 606
    :pswitch_38
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-ne v0, v1, :cond_1b

    .line 608
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 609
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 610
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 611
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 613
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v0

    .line 614
    if-gez v3, :cond_5d

    .line 615
    if-lez v0, :cond_1b

    .line 616
    neg-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_1b

    .line 618
    :cond_5d
    if-lez v3, :cond_7e

    .line 619
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    .line 621
    if-lez v0, :cond_1b

    .line 622
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_1b

    .line 625
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars()Z

    goto :goto_1b

    .line 631
    :pswitch_82
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-ne v0, v1, :cond_db

    .line 632
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 633
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 634
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 635
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 636
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->o:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 637
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    .line 638
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42c8

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e1

    move v0, v1

    .line 640
    :goto_ad
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v3

    .line 641
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    div-int v3, v5, v3

    .line 643
    if-eqz v0, :cond_e3

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_e3

    iget v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v5, :cond_e3

    .line 645
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    .line 654
    :goto_cf
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_db

    .line 655
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 659
    :cond_db
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 660
    iput v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto/16 :goto_1b

    :cond_e1
    move v0, v2

    .line 638
    goto :goto_ad

    .line 646
    :cond_e3
    if-eqz v0, :cond_ff

    const/16 v0, -0x1f4

    if-ge v4, v0, :cond_ff

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_ff

    .line 649
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    goto :goto_cf

    .line 651
    :cond_ff
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v0, v3, v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    goto :goto_cf

    .line 664
    :pswitch_110
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 665
    iput v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto/16 :goto_1b

    .line 669
    :pswitch_116
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1b

    .line 590
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_82
        :pswitch_38
        :pswitch_110
        :pswitch_1b
        :pswitch_1b
        :pswitch_116
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 576
    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 577
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    .line 579
    :cond_12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 360
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 361
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e(I)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v1

    .line 245
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 248
    :cond_11
    return-void
.end method
