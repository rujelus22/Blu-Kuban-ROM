.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Comparator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:Landroid/view/VelocityTracker;

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Landroid/support/v4/d/a;

.field private J:Landroid/support/v4/d/a;

.field private K:Z

.field private L:Z

.field private M:I

.field private N:Landroid/support/v4/view/ac;

.field private O:Landroid/support/v4/view/ac;

.field private P:Landroid/support/v4/view/ab;

.field private Q:I

.field private final d:Ljava/util/ArrayList;

.field private e:Landroid/support/v4/view/i;

.field private f:I

.field private g:I

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Landroid/widget/Scroller;

.field private k:Landroid/support/v4/view/ad;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->v:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->K:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    iput v2, p0, Landroid/support/v4/view/ViewPager;->v:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->K:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/view/aa;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v3, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/i;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private a(II)V
    .registers 5

    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V

    iput p1, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/i;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    if-gez p2, :cond_17

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    return-void

    :cond_17
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method private a(IZZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method private a(IZZI)V
    .registers 18

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->getCount()I

    move-result v0

    if-gtz v0, :cond_11

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-nez p3, :cond_24

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_10

    :cond_24
    if-gez p1, :cond_4d

    const/4 p1, 0x0

    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_34

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int v0, v1, v0

    if-ge p1, v0, :cond_5e

    :cond_34
    const/4 v0, 0x0

    move v1, v0

    :goto_36
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/aa;->c:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_27

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_27

    :cond_5e
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, p1, :cond_95

    const/4 v0, 0x1

    move v6, v0

    :goto_64
    iput p1, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    if-eqz p2, :cond_11e

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_98

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :goto_7d
    if-eqz v6, :cond_88

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ac;->a(I)V

    :cond_88
    if-eqz v6, :cond_10

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ac;->a(I)V

    goto/16 :goto_10

    :cond_95
    const/4 v0, 0x0

    move v6, v0

    goto :goto_64

    :cond_98
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    sub-int v3, v0, v1

    rsub-int/lit8 v4, v2, 0x0

    if-nez v3, :cond_b0

    if-nez v4, :cond_b0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto :goto_7d

    :cond_b0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->u:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    int-to-float v8, v5

    int-to-float v5, v5

    const/high16 v9, 0x3f00

    sub-float/2addr v7, v9

    float-to-double v9, v7

    const-wide v11, 0x3fde28c7460698c7L

    mul-double/2addr v9, v11

    double-to-float v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lez v7, :cond_10b

    const/high16 v0, 0x447a

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_fb
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto/16 :goto_7d

    :cond_10b
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float v0, v5, v0

    const/high16 v5, 0x3f80

    add-float/2addr v0, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_fb

    :cond_11e
    if-eqz v6, :cond_129

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_129

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ac;->a(I)V

    :cond_129
    if-eqz v6, :cond_134

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    if-eqz v1, :cond_134

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ac;->a(I)V

    :cond_134
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_10
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-static {p1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->C:I

    if-ne v1, v2, :cond_24

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_24
    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->s:Z

    if-eq v0, p1, :cond_6

    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->s:Z

    :cond_6
    return-void
.end method

.method private a(Landroid/view/View;ZIII)Z
    .registers 16

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_56

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_56

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    :goto_55
    return v2

    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    :cond_5a
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/o;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_63
    const/4 v2, 0x0

    goto :goto_55
.end method

.method private b(I)V
    .registers 3

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->Q:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ac;->b(I)V

    goto :goto_4
.end method

.method private c(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->t:Z

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method private d(I)V
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v1, v2

    div-int v4, p1, v1

    rem-int v2, p1, v1

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v5, v2, v1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->L:Z

    iget v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-lez v1, :cond_82

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    move v3, v0

    :goto_2b
    if-ge v3, v8, :cond_82

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v10, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v10, :cond_a4

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_a8

    :pswitch_42
    move v0, v1

    move v11, v2

    move v2, v1

    move v1, v11

    :goto_46
    add-int/2addr v0, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v0, v10

    if-eqz v0, :cond_51

    invoke-virtual {v9, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_51
    :goto_51
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v11, v1

    move v1, v2

    move v2, v11

    goto :goto_2b

    :pswitch_58
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v11, v1

    move v1, v2

    move v2, v0

    move v0, v11

    goto :goto_46

    :pswitch_62
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_46

    :pswitch_72
    sub-int v0, v7, v2

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v0, v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v2, v10

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_46

    :cond_82
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    invoke-interface {v0, v4, v5}, Landroid/support/v4/view/ac;->a(IF)V

    :cond_8b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    invoke-interface {v0, v4, v5}, Landroid/support/v4/view/ac;->a(IF)V

    :cond_94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->L:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->L:Z

    if-nez v0, :cond_a3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    return-void

    :cond_a4
    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_51

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_62
        :pswitch_42
        :pswitch_58
        :pswitch_42
        :pswitch_72
    .end packed-switch
.end method

.method static synthetic d()[I
    .registers 1

    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private e()V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/t;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->y:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->E:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->F:I

    new-instance v1, Landroid/support/v4/d/a;

    invoke-direct {v1, v0}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    new-instance v1, Landroid/support/v4/d/a;

    invoke-direct {v1, v0}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:I

    return-void
.end method

.method private e(I)Z
    .registers 8

    const/16 v5, 0x42

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_d

    const/4 v0, 0x0

    :cond_d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4e

    if-eq v3, v0, :cond_4e

    if-ne p1, v4, :cond_3b

    if-eqz v0, :cond_36

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_36

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    :goto_2b
    move v2, v0

    :cond_2c
    if-eqz v2, :cond_35

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_35
    return v2

    :cond_36
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_2b

    :cond_3b
    if-ne p1, v5, :cond_2c

    if-eqz v0, :cond_49

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v4, v0, :cond_5c

    :cond_49
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_2b

    :cond_4e
    if-eq p1, v4, :cond_52

    if-ne p1, v1, :cond_57

    :cond_52
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()Z

    move-result v0

    goto :goto_2b

    :cond_57
    if-eq p1, v5, :cond_5c

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    :cond_5c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_75

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v3}, Landroid/support/v4/view/i;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_75

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    move v0, v1

    goto :goto_2b

    :cond_75
    move v0, v2

    goto :goto_2b
.end method

.method private f()V
    .registers 11

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-nez v0, :cond_8

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->t:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/i;->startUpdate(Landroid/view/ViewGroup;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->v:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v2

    move v3, v4

    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-lt v8, v5, :cond_49

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-le v8, v7, :cond_65

    :cond_49
    iget-boolean v8, v0, Landroid/support/v4/view/aa;->c:Z

    if-nez v8, :cond_65

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v9, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v8, v9}, Landroid/support/v4/view/i;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move v3, v1

    :goto_5e
    iget v1, v0, Landroid/support/v4/view/aa;->b:I

    add-int/lit8 v0, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_31

    :cond_65
    if-ge v3, v7, :cond_12b

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-le v8, v5, :cond_12b

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_70

    move v3, v5

    :cond_70
    :goto_70
    if-gt v3, v7, :cond_12b

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    if-ge v3, v8, :cond_12b

    invoke-direct {p0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(II)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_7e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v0, v0, Landroid/support/v4/view/aa;->b:I

    :goto_98
    if-ge v0, v7, :cond_aa

    add-int/lit8 v0, v0, 0x1

    if-le v0, v5, :cond_a8

    :goto_9e
    if-gt v0, v7, :cond_aa

    invoke-direct {p0, v0, v4}, Landroid/support/v4/view/ViewPager;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_a6
    move v0, v4

    goto :goto_98

    :cond_a8
    move v0, v5

    goto :goto_9e

    :cond_aa
    move v1, v2

    :goto_ab
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_129

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget v0, v0, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v0, v3, :cond_11a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    :goto_c9
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eqz v0, :cond_11e

    iget-object v0, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    :goto_d1
    invoke-virtual {v1, p0, v3, v0}, Landroid/support/v4/view/i;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/i;->finishUpdate(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f2

    move-object v1, v0

    :goto_e6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_124

    if-eqz v0, :cond_f2

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_120

    :cond_f2
    :goto_f2
    if-eqz v6, :cond_fa

    iget v0, v6, Landroid/support/v4/view/aa;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-eq v0, v1, :cond_7

    :cond_fa
    :goto_fa
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v1

    if-eqz v1, :cond_117

    iget v1, v1, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v1, v3, :cond_117

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto :goto_fa

    :cond_11a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ab

    :cond_11e
    move-object v0, v6

    goto :goto_d1

    :cond_120
    check-cast v0, Landroid/view/View;

    move-object v1, v0

    goto :goto_e6

    :cond_124
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v6

    goto :goto_f2

    :cond_129
    move-object v0, v6

    goto :goto_c9

    :cond_12b
    move v3, v1

    goto/16 :goto_5e
.end method

.method private g()V
    .registers 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->u:Z

    if-eqz v0, :cond_2b

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v1, v4, :cond_25

    if-eq v3, v5, :cond_28

    :cond_25
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_28
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->b(I)V

    :cond_2b
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->t:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->u:Z

    move v1, v2

    move v3, v0

    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-boolean v4, v0, Landroid/support/v4/view/aa;->c:Z

    if-eqz v4, :cond_48

    const/4 v3, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/aa;->c:Z

    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4c
    if-eqz v3, :cond_51

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    :cond_51
    return-void
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    :cond_11
    return-void
.end method

.method private i()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-lez v0, :cond_d

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final a()Landroid/support/v4/view/i;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->t:Z

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    return-void

    :cond_c
    move v0, v1

    goto :goto_8
.end method

.method final a(Landroid/support/v4/view/ab;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->P:Landroid/support/v4/view/ab;

    return-void
.end method

.method public final a(Landroid/support/v4/view/ac;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->N:Landroid/support/v4/view/ac;

    return-void
.end method

.method public final a(Landroid/support/v4/view/i;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ad;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/i;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/i;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    :goto_13
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v4, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v0, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/i;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    :cond_30
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/i;->finishUpdate(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_3b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_58

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_54

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    :cond_58
    iput v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_5d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v1, :cond_93

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ad;

    if-nez v1, :cond_70

    new-instance v1, Landroid/support/v4/view/ad;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/view/ad;-><init>(Landroid/support/v4/view/ViewPager;B)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ad;

    :cond_70
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->k:Landroid/support/v4/view/ad;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/i;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->t:Z

    iget v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    if-ltz v1, :cond_9f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/i;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    :cond_93
    :goto_93
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->P:Landroid/support/v4/view/ab;

    if-eqz v1, :cond_9e

    if-eq v0, p1, :cond_9e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->P:Landroid/support/v4/view/ab;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ab;->a(Landroid/support/v4/view/i;Landroid/support/v4/view/i;)V

    :cond_9e
    return-void

    :cond_9f
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    goto :goto_93
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    const/high16 v0, 0x6

    if-eq v2, v0, :cond_2f

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v4

    if-eqz v4, :cond_2c

    iget v4, v4, Landroid/support/v4/view/aa;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_2c

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2f
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_51
    if-eqz p1, :cond_3f

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v2

    if-eqz v2, :cond_20

    iget v2, v2, Landroid/support/v4/view/aa;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v2, v3, :cond_20

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Landroid/support/v4/view/z;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->r:Z

    if-eqz v2, :cond_31

    if-eqz v0, :cond_26

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_30
    return-void

    :cond_31
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_30

    :cond_35
    move-object v1, p3

    goto :goto_a
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    return v0
.end method

.method final b(Landroid/support/v4/view/ac;)Landroid/support/v4/view/ac;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->O:Landroid/support/v4/view/ac;

    return-object v0
.end method

.method final c()V
    .registers 11

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_77

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v3}, Landroid/support/v4/view/i;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_77

    move v0, v1

    :goto_1b
    move v3, v2

    move v4, v2

    move v5, v6

    move v7, v0

    :goto_1f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aa;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v9, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/i;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v6, :cond_a9

    const/4 v9, -0x2

    if-ne v8, v9, :cond_79

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    if-nez v4, :cond_4b

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/i;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    :cond_4b
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget v8, v0, Landroid/support/v4/view/aa;->b:I

    iget-object v9, v0, Landroid/support/v4/view/aa;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Landroid/support/v4/view/i;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v7, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget v0, v0, Landroid/support/v4/view/aa;->b:I

    if-ne v7, v0, :cond_ae

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v5}, Landroid/support/v4/view/i;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    :goto_70
    add-int/lit8 v0, v0, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1f

    :cond_77
    move v0, v2

    goto :goto_1b

    :cond_79
    iget v9, v0, Landroid/support/v4/view/aa;->b:I

    if-eq v9, v8, :cond_a9

    iget v7, v0, Landroid/support/v4/view/aa;->b:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v7, v9, :cond_84

    move v5, v8

    :cond_84
    iput v8, v0, Landroid/support/v4/view/aa;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_70

    :cond_8b
    if-eqz v4, :cond_92

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/i;->finishUpdate(Landroid/view/ViewGroup;)V

    :cond_92
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-ltz v5, :cond_a7

    invoke-direct {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    :goto_9e
    if-eqz v1, :cond_a6

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_a6
    return-void

    :cond_a7
    move v1, v7

    goto :goto_9e

    :cond_a9
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_70

    :cond_ae
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_70
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public computeScroll()V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_2e

    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(I)V

    :cond_2e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    goto :goto_31
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_46

    :cond_15
    move v2, v0

    :goto_16
    if-eqz v2, :cond_19

    :cond_18
    move v0, v1

    :cond_19
    return v0

    :sswitch_1a
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_16

    :sswitch_21
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_16

    :sswitch_28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_15

    invoke-static {p1}, Landroid/support/v4/view/a;->b(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_16

    :cond_3a
    invoke-static {p1}, Landroid/support/v4/view/a;->a(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v2

    goto :goto_16

    nop

    :sswitch_data_46
    .sparse-switch
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_21
        0x3d -> :sswitch_28
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_25

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_26

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v4

    if-eqz v4, :cond_26

    iget v4, v4, Landroid/support/v4/view/aa;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v4, v5, :cond_26

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    :cond_25
    return v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/view/o;->a(Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_19

    if-ne v2, v1, :cond_ab

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v2, :cond_ab

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v2}, Landroid/support/v4/view/i;->getCount()I

    move-result v2

    if-le v2, v1, :cond_ab

    :cond_19
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v2}, Landroid/support/v4/d/a;->a()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x4387

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/d/a;->a(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/d/a;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_57
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v2}, Landroid/support/v4/d/a;->a()Z

    move-result v2

    if-nez v2, :cond_a5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v5, :cond_7f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->getCount()I

    move-result v1

    :cond_7f
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v6, v3

    mul-int/2addr v1, v6

    iget v6, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v1, v4, v3}, Landroid/support/v4/d/a;->a(II)V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v1, p1}, Landroid/support/v4/d/a;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a5
    :goto_a5
    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_aa
    return-void

    :cond_ab
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->b()V

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->b()V

    goto :goto_a5
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->K:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    if-lez v0, :cond_2d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v2, v1

    rem-int v2, v0, v2

    if-eqz v2, :cond_2d

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->n:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/support/v4/view/ViewPager;->o:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2d
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    if-ne v0, v6, :cond_21

    :cond_e
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    iput v3, p0, Landroid/support/v4/view/ViewPager;->C:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    :cond_20
    :goto_20
    return v2

    :cond_21
    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_29

    move v2, v6

    goto :goto_20

    :cond_29
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-nez v1, :cond_20

    :cond_2d
    sparse-switch v0, :sswitch_data_c8

    :cond_30
    :goto_30
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3e

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    :cond_3e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_43
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    goto :goto_20

    :sswitch_46
    iget v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    if-eq v0, v3, :cond_30

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->d(Landroid/view/MotionEvent;I)F

    move-result v9

    iget v0, p0, Landroid/support/v4/view/ViewPager;->B:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v1

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_78

    iput v7, p0, Landroid/support/v4/view/ViewPager;->A:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v9, p0, Landroid/support/v4/view/ViewPager;->B:F

    goto :goto_20

    :cond_78
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8e

    cmpl-float v0, v8, v10

    if-lez v0, :cond_8e

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->w:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(I)V

    iput v7, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_30

    :cond_8e
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_30

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->x:Z

    goto :goto_30

    :sswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:F

    invoke-static {p1, v2}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    iget v0, p0, Landroid/support/v4/view/ViewPager;->Q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ba

    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto/16 :goto_30

    :cond_ba
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    goto/16 :goto_30

    :sswitch_c3
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_30

    :sswitch_data_c8
    .sparse-switch
        0x0 -> :sswitch_98
        0x2 -> :sswitch_46
        0x6 -> :sswitch_c3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->r:Z

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->f()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->r:Z

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    sub-int v10, p4, p2

    sub-int v11, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v8, v1

    :goto_2c
    if-ge v8, v9, :cond_ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_ea

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_cc

    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    packed-switch v7, :pswitch_data_104

    :pswitch_51
    move v7, v6

    :goto_52
    sparse-switch v14, :sswitch_data_112

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :goto_5b
    add-int/2addr v7, v12

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    move v1, v4

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    :goto_70
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_2c

    :pswitch_78
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    goto :goto_52

    :pswitch_80
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    goto :goto_52

    :pswitch_8e
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_52

    :sswitch_9c
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_5b

    :sswitch_a8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    :sswitch_ba
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    :cond_cc
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v1

    if-eqz v1, :cond_ea

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v7, v10

    iget v1, v1, Landroid/support/v4/view/aa;->b:I

    mul-int/2addr v1, v7

    add-int/2addr v1, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual {v13, v1, v2, v7, v14}, Landroid/view/View;->layout(IIII)V

    :cond_ea
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto :goto_70

    :cond_ef
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->n:I

    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->o:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->M:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->K:Z

    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_80
        :pswitch_51
        :pswitch_78
        :pswitch_51
        :pswitch_8e
    .end packed-switch

    :sswitch_data_112
    .sparse-switch
        0x10 -> :sswitch_a8
        0x30 -> :sswitch_9c
        0x50 -> :sswitch_ba
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 14

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_31
    if-ge v6, v7, :cond_c5

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10a

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_10a

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_10a

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v9, v1, 0x7

    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    const-string v1, "ViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "gravity: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " vgrav: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x8000

    const/high16 v0, -0x8000

    const/16 v5, 0x30

    if-eq v4, v5, :cond_89

    const/16 v5, 0x50

    if-ne v4, v5, :cond_b0

    :cond_89
    const/4 v4, 0x1

    move v5, v4

    :goto_8b
    const/4 v4, 0x3

    if-eq v9, v4, :cond_91

    const/4 v4, 0x5

    if-ne v9, v4, :cond_b3

    :cond_91
    const/4 v4, 0x1

    :goto_92
    if-eqz v5, :cond_b5

    const/high16 v1, 0x4000

    :cond_96
    :goto_96
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    if-eqz v5, :cond_ba

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    move v1, v3

    :goto_aa
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v1

    move v2, v0

    goto :goto_31

    :cond_b0
    const/4 v4, 0x0

    move v5, v4

    goto :goto_8b

    :cond_b3
    const/4 v4, 0x0

    goto :goto_92

    :cond_b5
    if-eqz v4, :cond_96

    const/high16 v0, 0x4000

    goto :goto_96

    :cond_ba
    if-eqz v4, :cond_10a

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    move v1, v0

    move v0, v2

    goto :goto_aa

    :cond_c5
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->r:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->r:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_e4
    if-ge v1, v2, :cond_109

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_105

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_fe

    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_105

    :cond_fe
    iget v0, p0, Landroid/support/v4/view/ViewPager;->p:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e4

    :cond_109
    return-void

    :cond_10a
    move v0, v2

    move v1, v3

    goto :goto_aa
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2c

    move v3, v0

    move v4, v1

    :goto_d
    if-eq v4, v2, :cond_33

    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/aa;

    move-result-object v6

    if-eqz v6, :cond_31

    iget v6, v6, Landroid/support/v4/view/aa;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->f:I

    if-ne v6, v7, :cond_31

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    :goto_2b
    return v0

    :cond_2c
    add-int/lit8 v2, v2, -0x1

    move v4, v2

    move v2, v3

    goto :goto_d

    :cond_31
    add-int/2addr v4, v3

    goto :goto_d

    :cond_33
    move v0, v1

    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/i;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_7

    :cond_26
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->g:I

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->h:Landroid/os/Parcelable;

    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->i:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v0}, Landroid/support/v4/view/i;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_44

    iget v0, p0, Landroid/support/v4/view/ViewPager;->l:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int v3, p1, v0

    if-lez p3, :cond_45

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    add-int/2addr v1, p3

    div-int v4, v0, v1

    rem-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v4

    add-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->timePassed()I

    move-result v4

    sub-int v5, v0, v4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/widget/Scroller;

    iget v4, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_44

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_44
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->H:Z

    if-eqz v1, :cond_9

    move v0, v4

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-nez v1, :cond_8

    :cond_15
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->getCount()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    :cond_2b
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1ba

    :cond_39
    :goto_39
    :pswitch_39
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_3e
    move v0, v4

    goto :goto_8

    :pswitch_40
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->g()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->z:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-static {p1, v0}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    goto :goto_39

    :pswitch_52
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-nez v1, :cond_88

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->d(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v5, p0, Landroid/support/v4/view/ViewPager;->B:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroid/support/v4/view/ViewPager;->y:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_88

    cmpl-float v1, v3, v1

    if-lez v1, :cond_88

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->w:Z

    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->b(I)V

    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    :cond_88
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_39

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    sub-float/2addr v2, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float v3, v1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    iget v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int v6, v5, v1

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/i;

    invoke-virtual {v1}, Landroid/support/v4/view/i;->getCount()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    iget v1, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v8, v3, v1

    if-gez v8, :cond_f3

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_d8

    neg-float v0, v3

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/d/a;->a(F)Z

    move-result v0

    :cond_d8
    move v9, v1

    move v1, v0

    move v0, v9

    :goto_db
    iget v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)V

    move v0, v1

    goto/16 :goto_39

    :cond_f3
    cmpl-float v1, v3, v2

    if-lez v1, :cond_1b5

    mul-int v1, v7, v6

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_108

    sub-float v0, v3, v2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/v4/d/a;->a(F)Z

    move-result v0

    :cond_108
    move v1, v0

    move v0, v2

    goto :goto_db

    :pswitch_10b
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_39

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->D:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->F:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {v0, v1}, Landroid/support/v4/view/k;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v1, v0

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->t:Z

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    div-int v0, v3, v2

    rem-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v3}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->z:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->G:I

    if-le v3, v5, :cond_16e

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v4/view/ViewPager;->E:I

    if-le v3, v5, :cond_16e

    if-lez v1, :cond_16b

    :goto_154
    invoke-direct {p0, v0, v4, v4, v1}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_39

    :cond_16b
    add-int/lit8 v0, v0, 0x1

    goto :goto_154

    :cond_16e
    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_154

    :pswitch_175
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eqz v1, :cond_39

    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    invoke-direct {p0, v0, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    iput v6, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->h()V

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/support/v4/d/a;

    invoke-virtual {v0}, Landroid/support/v4/d/a;->c()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->J:Landroid/support/v4/d/a;

    invoke-virtual {v1}, Landroid/support/v4/d/a;->c()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_39

    :pswitch_192
    invoke-static {p1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->A:F

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    goto/16 :goto_39

    :pswitch_1a4
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/e;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->A:F

    goto/16 :goto_39

    :cond_1b5
    move v1, v0

    move v0, v3

    goto/16 :goto_db

    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_40
        :pswitch_10b
        :pswitch_52
        :pswitch_175
        :pswitch_39
        :pswitch_192
        :pswitch_1a4
    .end packed-switch
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
