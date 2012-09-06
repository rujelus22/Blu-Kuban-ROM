.class public Lcom/google/android/youtube/app/ui/DefaultSlider;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/Slider;


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected b:I

.field private final c:Landroid/util/DisplayMetrics;

.field private d:Z

.field private e:I

.field private f:I

.field private g:[Lcom/google/android/youtube/app/ui/aw;

.field private h:[Landroid/view/View;

.field private i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

.field private j:[I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Landroid/widget/Scroller;

.field private p:Z

.field private q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    const-string v0, "activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 71
    iput-boolean v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    .line 95
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->a:Landroid/app/Activity;

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->c:Landroid/util/DisplayMetrics;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    .line 100
    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-direct {v0, p1, p0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/ui/DefaultSlider;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    .line 103
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Orientation;->HORIZONTAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->setOrientation(Lcom/google/android/youtube/app/ui/Slider$Orientation;)V

    .line 104
    new-array v0, v4, [Lcom/google/android/youtube/app/ui/aw;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    .line 105
    iput v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 106
    new-array v0, v4, [Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v1, v0, v2

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v1, v0, v3

    .line 109
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    .line 110
    new-array v0, v4, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->addView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method private b(I)V
    .registers 3
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 277
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->d(I)V

    .line 278
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-eq v0, p1, :cond_1e

    .line 279
    iput p1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->c(I)V

    .line 282
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->invalidate()V

    .line 283
    return-void
.end method

.method private b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    if-eq v0, p1, :cond_9

    .line 617
    if-eqz p1, :cond_9

    .line 618
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->a()V

    .line 620
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    .line 624
    return-void
.end method

.method private c(I)V
    .registers 4
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v0, v0, p1

    if-eqz v0, :cond_d

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/aw;->j()V

    .line 311
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    rsub-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1e

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    rsub-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/aw;->k()V

    .line 314
    :cond_1e
    return-void
.end method

.method private d(I)V
    .registers 2
    .parameter

    .prologue
    .line 662
    iput p1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    .line 663
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->g()V

    .line 664
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->requestLayout()V

    .line 665
    return-void
.end method

.method private e(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 696
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 697
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    .line 698
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    if-eqz v1, :cond_11

    .line 723
    :goto_10
    return-void

    .line 702
    :cond_11
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 704
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 705
    if-eqz v3, :cond_2c

    if-eqz v1, :cond_2c

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    iget v5, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_2c

    .line 706
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 710
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    move-result v3

    mul-int/2addr v0, v3

    .line 711
    iget v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    sub-int v3, v0, v3

    .line 712
    mul-int/lit16 v5, v1, 0xc8

    .line 713
    if-nez v5, :cond_3d

    .line 714
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 718
    :cond_3d
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 721
    :cond_4a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 722
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->invalidate()V

    goto :goto_10
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/ui/Slider$Order;)Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;
    .registers 4
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 632
    return-void
.end method

.method protected a(I)V
    .registers 3
    .parameter

    .prologue
    .line 647
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    .line 648
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->g()V

    .line 649
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->requestLayout()V

    .line 650
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    .line 744
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3b

    .line 745
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    .line 746
    if-eqz v1, :cond_38

    .line 747
    invoke-interface {v1, p1}, Lcom/google/android/youtube/app/ui/aw;->a(Landroid/content/res/Configuration;)V

    .line 748
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->e()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->c:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v0

    .line 751
    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->n()Landroid/view/View;

    move-result-object v1

    .line 752
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_38

    .line 753
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/ui/DefaultSlider;->removeView(Landroid/view/View;)V

    .line 754
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aput-object v1, v2, v0

    .line 755
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->addView(Landroid/view/View;)V

    .line 744
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 759
    :cond_3b
    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    .line 243
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    .line 244
    if-eqz v3, :cond_d

    .line 245
    invoke-interface {v3, p1}, Lcom/google/android/youtube/app/ui/aw;->a(Landroid/view/Menu;)V

    .line 243
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 248
    :cond_10
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/ui/Slider$Order;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 201
    const-string v0, "order may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    if-eqz p2, :cond_f

    .line 203
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    .line 207
    :goto_e
    return-void

    .line 205
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(I)V

    goto :goto_e
.end method

.method protected a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 659
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 479
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 480
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->e:I

    if-ne p2, v0, :cond_1b

    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-ne v0, v2, :cond_1b

    .line 481
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 485
    :cond_1a
    :goto_1a
    return-void

    .line 482
    :cond_1b
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->f:I

    if-ne p2, v0, :cond_1a

    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-nez v0, :cond_1a

    .line 483
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1a
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 288
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method protected final b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()Lcom/google/android/youtube/app/ui/Slider$Orientation;
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Orientation;->HORIZONTAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    goto :goto_6
.end method

.method public final b(Landroid/view/Menu;)V
    .registers 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    .line 252
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    if-eqz v0, :cond_5

    .line 228
    :goto_4
    return-void

    .line 222
    :cond_5
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    .line 223
    if-eqz v3, :cond_12

    .line 224
    invoke-interface {v3}, Lcom/google/android/youtube/app/ui/aw;->g()V

    .line 222
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 227
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    goto :goto_4
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->d(I)V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->postInvalidate()V

    .line 329
    :cond_15
    :goto_15
    return-void

    .line 321
    :cond_16
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    if-eq v0, v3, :cond_15

    .line 322
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 323
    iput v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    .line 324
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-eq v0, v1, :cond_15

    .line 325
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 326
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->c(I)V

    goto :goto_15
.end method

.method public final d()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    if-nez v0, :cond_6

    .line 240
    :goto_5
    return-void

    .line 234
    :cond_6
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    array-length v3, v2

    move v0, v1

    :goto_a
    if-ge v0, v3, :cond_16

    aget-object v4, v2, v0

    .line 235
    if-eqz v4, :cond_13

    .line 236
    invoke-interface {v4}, Lcom/google/android/youtube/app/ui/aw;->h()V

    .line 234
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 239
    :cond_16
    iput-boolean v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    goto :goto_5
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->getDrawingTime()J

    move-result-wide v1

    .line 432
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aget-object v3, v3, v0

    sget-object v4, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v3, v4, :cond_e

    .line 433
    const/4 v0, 0x0

    .line 435
    :cond_e
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    rsub-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/google/android/youtube/app/ui/DefaultSlider;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 436
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v3, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/youtube/app/ui/DefaultSlider;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 437
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 466
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->e:I

    if-ne p2, v1, :cond_e

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-ne v1, v0, :cond_e

    .line 467
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    .line 474
    :goto_d
    return v0

    .line 470
    :cond_e
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->f:I

    if-ne p2, v1, :cond_1a

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-nez v1, :cond_1a

    .line 471
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    goto :goto_d

    .line 474
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_d
.end method

.method protected final e()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    return v0
.end method

.method protected final f()I
    .registers 4

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->getHeight()I

    move-result v0

    .line 304
    :goto_8
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0

    .line 303
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->getWidth()I

    move-result v0

    goto :goto_8
.end method

.method protected final g()V
    .registers 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    .line 672
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x2

    if-ge v0, v1, :cond_17

    .line 673
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    .line 674
    if-eqz v1, :cond_11

    .line 675
    if-nez v0, :cond_14

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    .line 672
    :cond_11
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 675
    :cond_14
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    goto :goto_11

    .line 678
    :cond_17
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_40

    .line 537
    :cond_b
    :goto_b
    :pswitch_b
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    :cond_d
    return v0

    .line 501
    :pswitch_e
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    if-nez v1, :cond_d

    .line 507
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->d(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 508
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(Z)V

    goto :goto_b

    .line 514
    :pswitch_1e
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b(Landroid/view/MotionEvent;)V

    .line 520
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2f

    :goto_2b
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(Z)V

    goto :goto_b

    :cond_2f
    move v0, v1

    goto :goto_2b

    .line 527
    :pswitch_31
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(Z)V

    .line 528
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a()V

    goto :goto_b

    .line 532
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 495
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_31
        :pswitch_e
        :pswitch_31
        :pswitch_b
        :pswitch_b
        :pswitch_3a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    const/4 v1, 0x1

    aget v3, v0, v1

    .line 385
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 386
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 387
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 388
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2e

    .line 389
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    aput v1, v4, v0

    .line 390
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aput v1, v5, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 392
    :cond_2e
    sub-int v1, p4, p2

    .line 393
    sub-int v0, p5, p3

    .line 394
    iget-boolean v7, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v7, :cond_6d

    .line 397
    :goto_36
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const/4 v7, 0x0

    aget-object v1, v1, v7

    sget-object v7, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v1, v7, :cond_6f

    .line 398
    const/4 v1, 0x0

    iget v7, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    neg-int v7, v7

    aput v7, v6, v1

    .line 402
    :goto_45
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    const/4 v7, 0x1

    aget-object v1, v1, v7

    sget-object v7, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v1, v7, :cond_74

    .line 403
    const/4 v0, 0x1

    aput v2, v6, v0

    .line 409
    :goto_51
    const/4 v0, 0x0

    :goto_52
    const/4 v1, 0x2

    if-ge v0, v1, :cond_8e

    .line 410
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v1, :cond_7c

    .line 411
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v3, v6, v0

    aget v7, v4, v0

    aget v8, v6, v0

    aget v9, v5, v0

    add-int/2addr v8, v9

    invoke-virtual {v1, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 409
    :goto_6a
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_6d
    move v0, v1

    .line 394
    goto :goto_36

    .line 400
    :cond_6f
    const/4 v1, 0x0

    const/4 v7, 0x0

    aput v7, v6, v1

    goto :goto_45

    .line 405
    :cond_74
    const/4 v1, 0x1

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    sub-int/2addr v0, v2

    aput v0, v6, v1

    goto :goto_51

    .line 413
    :cond_7c
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v1, v1, v0

    aget v2, v6, v0

    const/4 v3, 0x0

    aget v7, v6, v0

    aget v8, v4, v0

    add-int/2addr v7, v8

    aget v8, v5, v0

    invoke-virtual {v1, v2, v3, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_6a

    .line 417
    :cond_8e
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    if-eqz v0, :cond_9f

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    .line 419
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a0

    .line 421
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    .line 426
    :cond_9f
    :goto_9f
    return-void

    .line 423
    :cond_a0
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->d(I)V

    goto :goto_9f
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/high16 v9, 0x4000

    .line 339
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 342
    if-eq v0, v9, :cond_16

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Slider can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 346
    if-eq v0, v9, :cond_24

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Slider can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    aget v4, v0, v3

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    aget v5, v0, v10

    .line 352
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 353
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 354
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v0, :cond_72

    move v0, v1

    .line 355
    :goto_39
    new-array v6, v11, [I

    .line 358
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aget-object v7, v7, v3

    sget-object v8, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v7, v8, :cond_74

    .line 359
    sub-int v7, v0, v5

    iget v8, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    sub-int/2addr v7, v8

    aput v7, v6, v3

    .line 363
    :goto_4a
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aget-object v7, v7, v10

    sget-object v8, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v7, v8, :cond_79

    .line 364
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    add-int/2addr v0, v5

    aput v0, v6, v10

    :goto_57
    move v0, v3

    .line 370
    :goto_58
    if-ge v0, v11, :cond_8f

    .line 371
    iget-boolean v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v3, :cond_7d

    .line 372
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    aget v5, v6, v0

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 370
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_72
    move v0, v2

    .line 354
    goto :goto_39

    .line 361
    :cond_74
    sub-int v7, v0, v5

    aput v7, v6, v3

    goto :goto_4a

    .line 366
    :cond_79
    sub-int/2addr v0, v4

    aput v0, v6, v10

    goto :goto_57

    .line 375
    :cond_7d
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v3, v3, v0

    aget v4, v6, v0

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    goto :goto_6f

    .line 379
    :cond_8f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 452
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 453
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->n:I

    .line 457
    :goto_7
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v1, v0

    .line 458
    if-eqz v0, :cond_15

    .line 459
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 461
    :goto_11
    return v0

    .line 455
    :cond_12
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    goto :goto_7

    .line 461
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter

    .prologue
    .line 734
    check-cast p1, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;

    .line 735
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 736
    iget v0, p1, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 737
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-ltz v0, :cond_16

    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    .line 738
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 740
    :cond_19
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(I)V

    .line 741
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 727
    new-instance v0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 728
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    iput v1, v0, Lcom/google/android/youtube/app/ui/DefaultSliderSavedState;->expandedLayer:I

    .line 729
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 334
    iget v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(I)V

    .line 335
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a(Landroid/view/MotionEvent;)V

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_98

    .line 612
    :cond_10
    :goto_10
    :pswitch_10
    return v4

    .line 559
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 562
    :cond_1e
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->b(Landroid/view/MotionEvent;)V

    goto :goto_10

    .line 566
    :pswitch_24
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    if-eqz v0, :cond_10

    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->c(Landroid/view/MotionEvent;)I

    move-result v0

    .line 570
    if-gez v0, :cond_3f

    .line 571
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    if-lez v1, :cond_10

    .line 572
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    neg-int v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->a(I)V

    goto :goto_10

    .line 574
    :cond_3f
    if-lez v0, :cond_10

    .line 575
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    move-result v1

    iget v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    sub-int/2addr v1, v2

    .line 576
    if-lez v1, :cond_10

    .line 577
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->a(I)V

    goto :goto_10

    .line 584
    :pswitch_52
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->p:Z

    if-eqz v0, :cond_67

    .line 585
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->e(Landroid/view/MotionEvent;)Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;

    move-result-object v0

    .line 586
    sget-object v1, Lcom/google/android/youtube/app/ui/ak;->a:[I

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics$Fling;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_aa

    .line 598
    :cond_67
    :goto_67
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(Z)V

    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a()V

    goto :goto_10

    .line 588
    :pswitch_70
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    goto :goto_67

    .line 591
    :pswitch_74
    invoke-direct {p0, v4}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    goto :goto_67

    .line 594
    :pswitch_78
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->f()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    goto :goto_67

    .line 603
    :pswitch_87
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/ui/DefaultSlider;->b(Z)V

    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->a()V

    goto :goto_10

    .line 608
    :pswitch_90
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->q:Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/DefaultSliderDynamics;->f(Landroid/view/MotionEvent;)V

    goto/16 :goto_10

    .line 553
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_11
        :pswitch_52
        :pswitch_24
        :pswitch_87
        :pswitch_10
        :pswitch_10
        :pswitch_90
    .end packed-switch

    .line 586
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_70
        :pswitch_74
        :pswitch_78
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 543
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 544
    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 545
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    .line 547
    :cond_12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/DefaultSlider;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 442
    iget v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 443
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->e(I)V

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setCollapseStrategy(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 134
    const-string v0, "order may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "strategy may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object p2, v1, v0

    .line 138
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    rsub-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v1, v2, :cond_2d

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->OCCLUDE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne p2, v1, :cond_2d

    .line 140
    const-string v1, "Both collapse strategies cannot be OCCLUDE"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    rsub-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    aput-object v3, v1, v2

    .line 143
    :cond_2d
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v0, v1, v0

    if-eqz v0, :cond_35

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    .line 146
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->g()V

    .line 147
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    if-nez v0, :cond_3f

    .line 148
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->requestLayout()V

    .line 150
    :cond_3f
    return-void
.end method

.method public setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v0, "order may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5f

    const/4 v0, 0x1

    :goto_e
    const-string v2, "there must be two children"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/android/youtube/app/ui/Slider$Order;->ordinal()I

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2f

    .line 163
    iget-boolean v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    if-nez v2, :cond_28

    .line 164
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/youtube/app/ui/aw;->g()V

    .line 166
    :cond_28
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/youtube/app/ui/aw;->i()V

    .line 169
    :cond_2f
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aput-object p2, v2, v0

    .line 175
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    rsub-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 176
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/ui/DefaultSlider;->removeView(Landroid/view/View;)V

    .line 177
    if-nez p2, :cond_61

    .line 179
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    aput v1, v2, v0

    .line 180
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 196
    :goto_54
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->addView(Landroid/view/View;)V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->g()V

    .line 198
    return-void

    :cond_5f
    move v0, v1

    .line 158
    goto :goto_e

    .line 183
    :cond_61
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->f()Z

    move-result v1

    if-nez v1, :cond_72

    .line 184
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->b()V

    .line 186
    :cond_72
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->c()V

    .line 187
    iget-boolean v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->m:Z

    if-nez v1, :cond_84

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/youtube/app/ui/aw;->h()V

    .line 192
    :cond_84
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->j:[I

    invoke-interface {p2}, Lcom/google/android/youtube/app/ui/aw;->e()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->c:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 193
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->h:[Landroid/view/View;

    invoke-interface {p2}, Lcom/google/android/youtube/app/ui/aw;->n()Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 194
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->g:[Lcom/google/android/youtube/app/ui/aw;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->i:[Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    goto :goto_54
.end method

.method public setOrientation(Lcom/google/android/youtube/app/ui/Slider$Orientation;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    if-ne p1, v0, :cond_27

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    .line 119
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v0, :cond_29

    const/16 v0, 0x21

    :goto_e
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->e:I

    .line 120
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->d:Z

    if-eqz v0, :cond_2c

    const/16 v0, 0x82

    :goto_16
    iput v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->f:I

    .line 121
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->l:Z

    if-nez v0, :cond_26

    .line 122
    iput v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->b:I

    .line 123
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->g()V

    .line 124
    iput v1, p0, Lcom/google/android/youtube/app/ui/DefaultSlider;->k:I

    .line 125
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/DefaultSlider;->requestLayout()V

    .line 127
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 118
    goto :goto_6

    .line 119
    :cond_29
    const/16 v0, 0x11

    goto :goto_e

    .line 120
    :cond_2c
    const/16 v0, 0x42

    goto :goto_16
.end method
