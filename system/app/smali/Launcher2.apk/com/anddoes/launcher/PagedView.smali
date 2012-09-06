.class public abstract Lcom/anddoes/launcher/PagedView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field protected static an:F

.field protected static ao:F

.field protected static ap:F

.field protected static aq:F

.field protected static ar:F


# instance fields
.field protected A:Z

.field protected B:I

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:Z

.field protected M:Z

.field protected N:I

.field protected O:[I

.field protected P:I

.field protected Q:F

.field protected R:I

.field protected S:Ljava/util/ArrayList;

.field protected T:I

.field protected U:Z

.field protected V:Z

.field protected W:Z

.field protected Z:Z

.field private a:Lcom/anddoes/launcher/kx;

.field private aA:Lcom/anddoes/launcher/ja;

.field private aB:Landroid/animation/ValueAnimator;

.field private aC:Landroid/widget/ImageView;

.field private aD:Z

.field private aE:Z

.field private aF:Lcom/anddoes/launcher/iy;

.field protected aa:Z

.field protected ab:Z

.field protected ac:I

.field protected ad:I

.field protected ae:Z

.field protected af:Z

.field public ag:Z

.field protected ah:Z

.field protected ai:Z

.field public aj:I

.field public ak:Ljava/lang/String;

.field protected al:I

.field protected am:Lcom/anddoes/launcher/ji;

.field protected as:Landroid/view/animation/AccelerateInterpolator;

.field protected at:Landroid/view/animation/DecelerateInterpolator;

.field au:Ljava/lang/Runnable;

.field private av:[I

.field private aw:[I

.field private ax:I

.field private ay:I

.field private az:I

.field private b:F

.field private c:F

.field private d:I

.field private e:[I

.field public f:Z

.field public g:Z

.field protected h:I

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:Z

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Landroid/widget/Scroller;

.field protected r:F

.field protected s:F

.field protected t:F

.field protected u:F

.field protected v:F

.field protected w:F

.field protected x:I

.field protected y:Z

.field protected z:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 210
    const v0, 0x45cb2000

    sput v0, Lcom/anddoes/launcher/PagedView;->an:F

    .line 211
    const/high16 v0, 0x44a0

    sput v0, Lcom/anddoes/launcher/PagedView;->ao:F

    .line 212
    const v0, 0x3f3d70a4

    sput v0, Lcom/anddoes/launcher/PagedView;->ap:F

    .line 213
    const v0, 0x3f266666

    sput v0, Lcom/anddoes/launcher/PagedView;->aq:F

    .line 214
    const/high16 v0, 0x41b0

    sput v0, Lcom/anddoes/launcher/PagedView;->ar:F

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anddoes/launcher/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->f:Z

    .line 78
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->g:Z

    .line 81
    const/16 v0, 0x12c

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->h:I

    .line 87
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->l:Z

    .line 88
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->m:I

    .line 90
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 101
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->d:I

    .line 113
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->v:F

    .line 114
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->w:F

    .line 116
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 117
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->y:Z

    .line 121
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    .line 134
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->J:I

    .line 135
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->K:I

    .line 137
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->M:Z

    .line 139
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->O:[I

    .line 147
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->Q:F

    .line 151
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 167
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->U:Z

    .line 170
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->V:Z

    .line 174
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->W:Z

    .line 178
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->Z:Z

    .line 180
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    .line 183
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    .line 190
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->aD:Z

    .line 198
    iput-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->ae:Z

    .line 199
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    .line 200
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    .line 201
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ah:Z

    .line 202
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ai:Z

    .line 203
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    .line 204
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->ak:Ljava/lang/String;

    .line 205
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->al:I

    .line 209
    new-instance v0, Lcom/anddoes/launcher/ji;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/ji;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->am:Lcom/anddoes/launcher/ji;

    .line 216
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f666666

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->as:Landroid/view/animation/AccelerateInterpolator;

    .line 217
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->at:Landroid/view/animation/DecelerateInterpolator;

    .line 2335
    new-instance v0, Lcom/anddoes/launcher/iq;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/iq;-><init>(Lcom/anddoes/launcher/PagedView;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->au:Ljava/lang/Runnable;

    .line 426
    iput v2, p0, Lcom/anddoes/launcher/PagedView;->T:I

    .line 429
    sget-object v0, Lcom/anddoes/launcher/kd;->g:[I

    .line 428
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 430
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/PagedView;->a(I)V

    .line 431
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->D:I

    .line 434
    const/4 v1, 0x3

    .line 433
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->E:I

    .line 436
    const/4 v1, 0x4

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->F:I

    .line 438
    const/4 v1, 0x5

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->G:I

    .line 439
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->H:I

    .line 441
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->I:I

    .line 444
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 443
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->ac:I

    .line 446
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 445
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->ad:I

    .line 447
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 449
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->a()V

    .line 451
    return-void
.end method

.method protected static a(FFFF)D
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    sub-float v0, p2, p0

    float-to-double v0, v0

    .line 240
    sub-float v2, p3, p1

    float-to-double v2, v2

    .line 241
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1963
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    .line 1964
    if-lez v0, :cond_17

    .line 1965
    const/4 v1, -0x1

    if-ne p1, v1, :cond_18

    .line 1966
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v0, v1

    mul-int/lit8 p2, v0, -0x1

    .line 1971
    :cond_17
    :goto_17
    return p2

    .line 1967
    :cond_18
    if-ne p1, v0, :cond_17

    .line 1968
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_17
.end method

.method static synthetic a(Lcom/anddoes/launcher/PagedView;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)V
    .registers 2
    .parameter

    .prologue
    .line 862
    iput p1, p0, Lcom/anddoes/launcher/PagedView;->C:I

    .line 863
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->e()V

    .line 864
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    if-nez v0, :cond_a

    .line 1849
    invoke-static {}, Lcom/anddoes/launcher/kx;->a()Lcom/anddoes/launcher/kx;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    .line 1851
    :cond_a
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    invoke-virtual {v0, p1}, Lcom/anddoes/launcher/kx;->a(Landroid/view/MotionEvent;)V

    .line 1852
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 1862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1864
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1865
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->R:I

    if-ne v1, v2, :cond_37

    .line 1869
    if-nez v0, :cond_38

    const/4 v0, 0x1

    .line 1870
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->b:F

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->r:F

    .line 1871
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->c:F

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->t:F

    .line 1872
    const/4 v1, 0x0

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->s:F

    .line 1873
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1874
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    if-eqz v0, :cond_37

    .line 1875
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/kx;->c()V

    .line 1878
    :cond_37
    return-void

    .line 1869
    :cond_38
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private d()V
    .registers 2

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    if-nez v0, :cond_a

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    .line 564
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->i()V

    .line 566
    :cond_a
    return-void
.end method

.method private d(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2027
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    .line 2028
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_2c

    const/4 v0, -0x1

    :goto_a
    iget-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v3, :cond_2e

    :goto_e
    sub-int v1, v2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2033
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 2034
    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->a(II)I

    move-result v1

    .line 2035
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->N:I

    .line 2036
    sub-int/2addr v1, v2

    .line 2037
    invoke-virtual {p0, v0, v1, p2}, Lcom/anddoes/launcher/PagedView;->a_(III)V

    .line 2038
    return-void

    :cond_2c
    move v0, v1

    .line 2028
    goto :goto_a

    :cond_2e
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private e()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 978
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    .line 979
    if-nez v1, :cond_f

    .line 980
    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->e:[I

    .line 981
    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    .line 982
    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->aw:[I

    .line 994
    :cond_e
    return-void

    .line 986
    :cond_f
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->e:[I

    .line 987
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    .line 988
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->aw:[I

    .line 989
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v1, :cond_e

    .line 990
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->e:[I

    aput v3, v2, v0

    .line 991
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    aput v3, v2, v0

    .line 992
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->aw:[I

    aput v3, v2, v0

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method private f(I)I
    .registers 3
    .parameter

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    .line 998
    if-gez p1, :cond_9

    .line 999
    add-int/lit8 p1, v0, -0x1

    .line 1003
    :cond_8
    :goto_8
    return p1

    .line 1000
    :cond_9
    if-lt p1, v0, :cond_8

    .line 1001
    const/4 p1, 0x0

    goto :goto_8
.end method

.method private f()V
    .registers 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    if-eqz v0, :cond_c

    .line 1856
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    invoke-virtual {v0}, Lcom/anddoes/launcher/kx;->b()V

    .line 1857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    .line 1859
    :cond_c
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 2444
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 2458
    :cond_7
    :goto_7
    return-void

    .line 2447
    :cond_8
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->I()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2450
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    if-eqz v0, :cond_23

    .line 2451
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_20

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    :goto_1c
    invoke-interface {v1, v0}, Lcom/anddoes/launcher/iy;->b(I)V

    goto :goto_7

    :cond_20
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_1c

    .line 2454
    :cond_23
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->H()Landroid/widget/ImageView;

    .line 2455
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 2456
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->k()V

    goto :goto_7
.end method

.method private i(I)I
    .registers 4
    .parameter

    .prologue
    .line 1908
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1909
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_14

    .line 1910
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1912
    :cond_14
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->az:I

    .line 1913
    if-le v1, v0, :cond_19

    move v0, v1

    :cond_19
    return v0
.end method

.method private k()V
    .registers 7

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->I()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2492
    :cond_6
    :goto_6
    return-void

    .line 2464
    :cond_7
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 2467
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    .line 2468
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    .line 2469
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->al:I

    if-lez v2, :cond_19

    .line 2470
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->al:I

    .line 2472
    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2473
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v2

    sub-int v2, v3, v2

    .line 2474
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->ac:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/anddoes/launcher/PagedView;->ad:I

    sub-int v3, v0, v3

    .line 2475
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    .line 2476
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 2475
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getScrollY()I

    move-result v0

    :goto_4f
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2479
    div-int v1, v3, v1

    .line 2480
    sub-int v2, v3, v1

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->ac:I

    add-int/2addr v0, v2

    .line 2481
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    if-eq v2, v1, :cond_79

    .line 2483
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2484
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 2487
    :cond_79
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 2491
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_6

    .line 2475
    :cond_85
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getScrollX()I

    move-result v0

    goto :goto_4f
.end method


# virtual methods
.method protected final A()Z
    .registers 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    return v0
.end method

.method protected final B()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/16 v4, -0x3e7

    const/4 v1, 0x0

    .line 665
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 667
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_20

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 668
    :cond_20
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 670
    :cond_2f
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    .line 718
    :cond_32
    :goto_32
    return v0

    .line 672
    :cond_33
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->o:I

    if-eq v2, v4, :cond_ec

    .line 673
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_af

    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v2, :cond_af

    .line 674
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 675
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 676
    iget-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v3, :cond_a5

    .line 677
    iget-object v3, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 681
    :goto_62
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    .line 694
    :goto_65
    iput v4, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 695
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->z()V

    .line 698
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->aE:Z

    if-eqz v2, :cond_75

    .line 699
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v2, v1}, Lcom/anddoes/launcher/PagedView;->b(IZ)V

    .line 700
    iput-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->aE:Z

    .line 705
    :cond_75
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-nez v2, :cond_82

    .line 706
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    if-eqz v2, :cond_82

    iput-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->aa:Z

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->j()V

    .line 710
    :cond_82
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 712
    const/16 v1, 0x1000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_32

    .line 679
    :cond_a5
    iget-object v3, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    goto :goto_62

    .line 682
    :cond_af
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->o:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v3

    if-ne v2, v3, :cond_d8

    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v2, :cond_d8

    .line 683
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 684
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v2, :cond_ce

    .line 685
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 689
    :goto_ca
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    goto :goto_65

    .line 687
    :cond_ce
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    goto :goto_ca

    .line 691
    :cond_d8
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->o:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto/16 :goto_65

    :cond_ec
    move v0, v1

    .line 718
    goto/16 :goto_32
.end method

.method protected final C()V
    .registers 2

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    if-eqz v0, :cond_12

    .line 1502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    .line 1506
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_12

    .line 1508
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1511
    :cond_12
    return-void
.end method

.method final D()I
    .registers 8

    .prologue
    .line 1917
    const v4, 0x7fffffff

    .line 1918
    const/4 v1, -0x1

    .line 1919
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 1920
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v2, :cond_1a

    .line 1921
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 1923
    :cond_1a
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v5

    .line 1924
    const/4 v2, 0x0

    :goto_1f
    if-lt v2, v5, :cond_22

    .line 1935
    return v1

    .line 1925
    :cond_22
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1926
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v3

    .line 1927
    div-int/lit8 v3, v3, 0x2

    .line 1928
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v6

    add-int/2addr v3, v6

    .line 1929
    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1930
    if-ge v3, v4, :cond_3d

    move v1, v2

    .line 1924
    :goto_39
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1f

    :cond_3d
    move v3, v4

    goto :goto_39
.end method

.method protected E()V
    .registers 3

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->D()I

    move-result v0

    const/16 v1, 0x1c2

    invoke-direct {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->d(II)V

    .line 1940
    return-void
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    return v0
.end method

.method protected final G()V
    .registers 3

    .prologue
    .line 2274
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->c(IZ)V

    .line 2275
    return-void
.end method

.method protected final H()Landroid/widget/ImageView;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2320
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aD:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-nez v0, :cond_2a

    .line 2321
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2322
    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    .line 2323
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_1f
    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aD:Z

    .line 2324
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aD:Z

    if-eqz v0, :cond_2a

    .line 2325
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2328
    :cond_2a
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    return-object v0

    :cond_2d
    move v0, v1

    .line 2323
    goto :goto_1f
.end method

.method protected I()Z
    .registers 2

    .prologue
    .line 2332
    const/4 v0, 0x1

    return v0
.end method

.method protected final J()V
    .registers 2

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 2382
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2384
    :cond_9
    return-void
.end method

.method public final K()V
    .registers 3

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 2388
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2389
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2391
    :cond_11
    return-void
.end method

.method protected final a(ILandroid/view/View;I)F
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 1545
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    :goto_a
    div-int/lit8 v0, v0, 0x2

    .line 1547
    invoke-virtual {p0, p2}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v1, v2

    .line 1548
    invoke-virtual {p0, p3}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v2

    .line 1549
    invoke-virtual {p0, p3}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1548
    sub-int v0, p1, v0

    .line 1550
    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v0, v1

    .line 1552
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1553
    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1554
    return v0

    .line 1545
    :cond_2e
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_a
.end method

.method protected a()V
    .registers 3

    .prologue
    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    .line 458
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 459
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->t()V

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->L:Z

    .line 463
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->B:I

    .line 465
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/anddoes/launcher/PagedView;->ax:I

    .line 466
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->ay:I

    .line 467
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->i:F

    .line 468
    return-void
.end method

.method protected a(F)V
    .registers 2
    .parameter

    .prologue
    .line 1630
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->d(F)V

    .line 1631
    return-void
.end method

.method public abstract a(IZ)V
.end method

.method protected final a(Landroid/view/MotionEvent;FZ)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1428
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1429
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1498
    :cond_9
    :goto_9
    return-void

    .line 1432
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1433
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1434
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->r:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v6, v0

    .line 1435
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->t:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v7, v0

    .line 1437
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->B:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1438
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->ax:I

    if-le v6, v0, :cond_84

    const/4 v0, 0x1

    move v3, v0

    .line 1439
    :goto_32
    if-le v6, v8, :cond_87

    const/4 v0, 0x1

    move v2, v0

    .line 1440
    :goto_36
    if-le v7, v8, :cond_8a

    const/4 v0, 0x1

    .line 1441
    :goto_39
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->ax:I

    if-le v7, v1, :cond_8c

    const/4 v1, 0x1

    .line 1443
    :goto_3e
    if-nez v2, :cond_48

    iget-boolean v9, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v9, :cond_8e

    if-nez v1, :cond_48

    :goto_46
    if-eqz v0, :cond_9

    .line 1444
    :cond_48
    iget-boolean v9, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v9, :cond_bf

    .line 1445
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->W:Z

    if-eqz v2, :cond_91

    if-eqz v1, :cond_93

    .line 1447
    :cond_52
    const/4 v0, 0x1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1448
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->t:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1449
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->t:F

    .line 1450
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->s:F

    .line 1451
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->k:F

    .line 1452
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->j:F

    .line 1453
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_80

    .line 1454
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->d()V

    .line 1496
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->C()V

    goto :goto_9

    .line 1438
    :cond_84
    const/4 v0, 0x0

    move v3, v0

    goto :goto_32

    .line 1439
    :cond_87
    const/4 v0, 0x0

    move v2, v0

    goto :goto_36

    .line 1440
    :cond_8a
    const/4 v0, 0x0

    goto :goto_39

    .line 1441
    :cond_8c
    const/4 v1, 0x0

    goto :goto_3e

    .line 1443
    :cond_8e
    if-nez v3, :cond_48

    goto :goto_46

    .line 1445
    :cond_91
    if-nez v0, :cond_52

    .line 1457
    :cond_93
    if-eqz p3, :cond_80

    .line 1458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1459
    int-to-float v0, v6

    int-to-float v1, v8

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->v:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_80

    .line 1460
    int-to-float v0, v7

    int-to-float v1, v8

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->w:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_80

    .line 1462
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->r:F

    sub-float v0, v4, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_bb

    .line 1463
    const/4 v0, 0x4

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto :goto_80

    .line 1465
    :cond_bb
    const/4 v0, 0x5

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto :goto_80

    .line 1470
    :cond_bf
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->W:Z

    if-eqz v0, :cond_f4

    if-eqz v3, :cond_f6

    .line 1472
    :cond_c5
    const/4 v0, 0x1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1473
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->r:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1474
    iput v4, p0, Lcom/anddoes/launcher/PagedView;->r:F

    .line 1475
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->s:F

    .line 1476
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->k:F

    .line 1477
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->j:F

    .line 1478
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_80

    .line 1479
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->d()V

    goto :goto_80

    .line 1470
    :cond_f4
    if-nez v2, :cond_c5

    .line 1482
    :cond_f6
    if-eqz p3, :cond_80

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1484
    int-to-float v0, v7

    int-to-float v1, v8

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->v:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_80

    .line 1485
    int-to-float v0, v6

    int-to-float v1, v8

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->w:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_80

    .line 1487
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->t:F

    sub-float v0, v5, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11f

    .line 1488
    const/4 v0, 0x4

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto/16 :goto_80

    .line 1490
    :cond_11f
    const/4 v0, 0x5

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto/16 :goto_80
.end method

.method protected final a(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 1404
    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1406
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1407
    new-instance v1, Lcom/anddoes/launcher/ir;

    invoke-direct {v1, p0, p2}, Lcom/anddoes/launcher/ir;-><init>(Lcom/anddoes/launcher/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1412
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1413
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/iy;)V
    .registers 3
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    .line 410
    if-eqz p1, :cond_10

    .line 411
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/anddoes/launcher/iy;->a(I)V

    .line 412
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-interface {p1, v0}, Lcom/anddoes/launcher/iy;->b(I)V

    .line 414
    :cond_10
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ah:Z

    if-eq v0, p1, :cond_9

    .line 246
    iput-boolean p1, p0, Lcom/anddoes/launcher/PagedView;->ah:Z

    .line 247
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->t()V

    .line 249
    :cond_9
    return-void
.end method

.method protected a(FF)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1277
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_14

    :goto_4
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->C:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    move p2, p1

    goto :goto_4

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected a_(III)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2041
    iput p1, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 2043
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2044
    if-eqz v0, :cond_18

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-eq p1, v2, :cond_18

    .line 2045
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, v2, :cond_18

    .line 2046
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2049
    :cond_18
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->d()V

    .line 2050
    invoke-virtual {p0, p3}, Lcom/anddoes/launcher/PagedView;->awakenScrollBars(I)Z

    .line 2051
    if-nez p3, :cond_5e

    .line 2052
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2055
    :goto_24
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2056
    :cond_31
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_4e

    .line 2057
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->N:I

    move v3, v1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2064
    :goto_3e
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->Z:Z

    if-eqz v0, :cond_5a

    .line 2065
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->b(IZ)V

    .line 2069
    :goto_47
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->z()V

    .line 2070
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    .line 2071
    return-void

    .line 2059
    :cond_4e
    iget-object v6, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    iget v7, p0, Lcom/anddoes/launcher/PagedView;->N:I

    move v8, v1

    move v9, p2

    move v10, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_3e

    .line 2067
    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->aE:Z

    goto :goto_47

    :cond_5e
    move v5, p3

    goto :goto_24
.end method

.method protected a_(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter

    .prologue
    .line 1416
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/anddoes/launcher/PagedView;->a(Landroid/view/MotionEvent;FZ)V

    .line 1417
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1217
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1218
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1220
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 1221
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-lez v0, :cond_28

    .line 1222
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1229
    :cond_28
    :goto_28
    return-void

    .line 1224
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 1225
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 1226
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_28
.end method

.method b(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 1880
    return-void
.end method

.method public final b(F)V
    .registers 10
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/4 v1, 0x0

    .line 832
    iput p1, p0, Lcom/anddoes/launcher/PagedView;->Q:F

    .line 833
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->e()V

    .line 836
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    .line 837
    new-array v3, v2, [F

    .line 838
    new-array v4, v2, [F

    move v0, v1

    .line 839
    :goto_11
    if-lt v0, v2, :cond_55

    .line 845
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 846
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 847
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->requestLayout()V

    .line 848
    invoke-virtual {p0, v0, v5}, Lcom/anddoes/launcher/PagedView;->measure(II)V

    .line 849
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mLeft:I

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mTop:I

    iget v6, p0, Lcom/anddoes/launcher/PagedView;->mRight:I

    iget v7, p0, Lcom/anddoes/launcher/PagedView;->mBottom:I

    invoke-virtual {p0, v0, v5, v6, v7}, Lcom/anddoes/launcher/PagedView;->layout(IIII)V

    move v0, v1

    .line 850
    :goto_35
    if-lt v0, v2, :cond_68

    .line 858
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v3

    sub-int v3, v0, v3

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_79

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    :goto_49
    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_4f
    if-lt v0, v4, :cond_7c

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->m(I)V

    .line 859
    return-void

    .line 840
    :cond_55
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v5

    .line 841
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    aput v6, v3, v0

    .line 842
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v4, v0

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 851
    :cond_68
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v5

    .line 852
    aget v6, v3, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setX(F)V

    .line 853
    aget v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setY(F)V

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 858
    :cond_79
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_49

    :cond_7c
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v5, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v5, :cond_90

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    int-to-float v6, v3

    add-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setY(F)V

    :goto_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_90
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v3

    add-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setX(F)V

    goto :goto_8d
.end method

.method protected b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    return-void
.end method

.method protected final b(IZ)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2154
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->U:Z

    if-eqz v0, :cond_17

    .line 2155
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v4

    .line 2156
    if-ge p1, v4, :cond_17

    .line 2157
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->g(I)I

    move-result v5

    .line 2158
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->h(I)I

    move-result v6

    move v3, v2

    .line 2161
    :goto_15
    if-lt v3, v4, :cond_18

    .line 2183
    :cond_17
    return-void

    .line 2162
    :cond_18
    if-eq v3, p1, :cond_1c

    if-nez p2, :cond_5d

    .line 2163
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/ip;

    .line 2166
    invoke-interface {v0}, Lcom/anddoes/launcher/ip;->a()I

    move-result v7

    .line 2167
    if-gt v5, v3, :cond_2a

    if-le v3, v6, :cond_3e

    .line 2168
    :cond_2a
    iget-boolean v8, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v8, :cond_34

    if-nez p1, :cond_34

    add-int/lit8 v8, v4, -0x1

    if-eq v3, v8, :cond_3e

    .line 2169
    :cond_34
    iget-boolean v8, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v8, :cond_63

    add-int/lit8 v8, v4, -0x1

    if-ne p1, v8, :cond_63

    if-nez v3, :cond_63

    .line 2170
    :cond_3e
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2171
    if-ne v3, p1, :cond_61

    if-eqz p2, :cond_61

    move v0, v1

    :goto_51
    invoke-virtual {p0, v3, v0}, Lcom/anddoes/launcher/PagedView;->a(IZ)V

    .line 2172
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2161
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_15

    :cond_61
    move v0, v2

    .line 2171
    goto :goto_51

    .line 2175
    :cond_63
    if-lez v7, :cond_68

    .line 2176
    invoke-interface {v0}, Lcom/anddoes/launcher/ip;->b()V

    .line 2178
    :cond_68
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d
.end method

.method protected final b(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f00

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 383
    if-eqz p1, :cond_3d

    .line 384
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->i:F

    sget v1, Lcom/anddoes/launcher/PagedView;->ao:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 385
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 386
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 387
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 388
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 389
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 390
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 391
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 392
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_3d
    return-void
.end method

.method protected final b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->au:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2344
    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(Z)V

    .line 2345
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->au:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/anddoes/launcher/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2346
    return-void

    .line 2344
    :cond_13
    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected final b([I)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 1081
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v6

    .line 1082
    if-lez v6, :cond_9c

    .line 1083
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v3

    .line 1084
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    .line 1085
    :goto_19
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_5e

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mPaddingBottom:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v5

    sub-int v1, v5, v1

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    :goto_36
    add-int/2addr v1, v3

    move v3, v1

    move v1, v2

    .line 1088
    :goto_39
    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v4, :cond_87

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    :goto_3f
    if-gt v3, v4, :cond_45

    add-int/lit8 v4, v6, -0x1

    if-lt v1, v4, :cond_78

    :cond_45
    move v4, v3

    move v3, v1

    .line 1093
    :goto_47
    iget-boolean v5, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v5, :cond_99

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    :goto_4d
    add-int/2addr v5, v0

    if-ge v4, v5, :cond_54

    add-int/lit8 v5, v6, -0x1

    if-lt v3, v5, :cond_8a

    .line 1097
    :cond_54
    aput v1, p1, v2

    .line 1098
    aput v3, p1, v8

    .line 1103
    :goto_58
    return-void

    .line 1084
    :cond_59
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_19

    .line 1085
    :cond_5e
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mPaddingRight:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v5

    sub-int v1, v5, v1

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    goto :goto_36

    .line 1089
    :cond_78
    add-int/lit8 v1, v1, 0x1

    .line 1090
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_39

    .line 1088
    :cond_87
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_3f

    .line 1094
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    .line 1095
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v5

    iget v7, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    goto :goto_47

    .line 1093
    :cond_99
    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_4d

    .line 1100
    :cond_9c
    aput v0, p1, v2

    .line 1101
    aput v0, p1, v8

    goto :goto_58
.end method

.method protected b(FF)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_1d

    :goto_4
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    :goto_c
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move p2, p1

    goto :goto_4

    :cond_1f
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_c

    :cond_24
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public b_()V
    .registers 3

    .prologue
    .line 2074
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    .line 2075
    :goto_5
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2076
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-le v1, v0, :cond_18

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 2080
    :cond_18
    :goto_18
    return-void

    .line 2074
    :cond_19
    const/4 v0, 0x0

    goto :goto_5

    .line 2078
    :cond_1b
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->o:I

    if-le v1, v0, :cond_18

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    goto :goto_18
.end method

.method protected c(I)I
    .registers 2
    .parameter

    .prologue
    .line 507
    return p1
.end method

.method protected final c(Landroid/view/View;)I
    .registers 4
    .parameter

    .prologue
    .line 1071
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1072
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_c

    .line 1073
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1075
    :cond_c
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->az:I

    .line 1076
    if-le v1, v0, :cond_11

    move v0, v1

    .line 1077
    :cond_11
    int-to-float v0, v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->Q:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final c(F)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1565
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v1

    .line 1569
    const/high16 v0, 0x4000

    int-to-float v2, v1

    div-float v2, p1, v2

    mul-float/2addr v0, v2

    .line 1571
    cmpl-float v2, v0, v4

    if-nez v2, :cond_11

    .line 1595
    :goto_10
    return-void

    .line 1574
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_20

    .line 1575
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1578
    :cond_20
    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1579
    cmpg-float v1, p1, v4

    if-gez v1, :cond_39

    .line 1580
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 1581
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_36

    .line 1582
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    .line 1594
    :goto_32
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    goto :goto_10

    .line 1584
    :cond_36
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_32

    .line 1587
    :cond_39
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 1588
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_47

    .line 1589
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    goto :goto_32

    .line 1591
    :cond_47
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_32
.end method

.method protected c(II)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    .line 1976
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    .line 1977
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_42

    const/4 v0, -0x1

    :goto_c
    iget-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v3, :cond_44

    :goto_10
    sub-int v1, v2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1978
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    :goto_22
    div-int/lit8 v0, v0, 0x2

    .line 1983
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1985
    invoke-direct {p0, v1, v2}, Lcom/anddoes/launcher/PagedView;->a(II)I

    move-result v2

    .line 1986
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->N:I

    sub-int/2addr v2, v3

    .line 1987
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xfa

    if-ge v3, v4, :cond_4b

    .line 1992
    const/16 v0, 0x1c2

    invoke-direct {p0, v1, v0}, Lcom/anddoes/launcher/PagedView;->d(II)V

    .line 2015
    :goto_41
    return-void

    :cond_42
    move v0, v1

    .line 1977
    goto :goto_c

    :cond_44
    const/4 v1, 0x1

    goto :goto_10

    .line 1978
    :cond_46
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_22

    .line 2000
    :cond_4b
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2001
    int-to-float v4, v0

    int-to-float v0, v0

    .line 2002
    const/high16 v5, 0x3f00

    sub-float/2addr v3, v5

    float-to-double v5, v3

    const-wide v7, 0x3fde28c7460698c7L

    mul-double/2addr v5, v7

    double-to-float v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float/2addr v0, v3

    .line 2001
    add-float/2addr v0, v4

    .line 2004
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2005
    const/16 v4, 0x898

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2010
    const/high16 v4, 0x447a

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 2011
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    if-le v0, v3, :cond_91

    iget v3, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    if-lez v3, :cond_91

    .line 2012
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    .line 2014
    :cond_91
    invoke-virtual {p0, v1, v2, v0}, Lcom/anddoes/launcher/PagedView;->a_(III)V

    goto :goto_41
.end method

.method protected final c(IZ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x1

    .line 2282
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    if-nez v0, :cond_8

    .line 2315
    :cond_7
    :goto_7
    return-void

    .line 2286
    :cond_8
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->U:Z

    if-eqz v0, :cond_7

    .line 2288
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2289
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 2292
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->g()V

    .line 2296
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2297
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2296
    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->measure(II)V

    .line 2300
    if-ltz p1, :cond_3a

    .line 2301
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->m(I)V

    .line 2305
    :cond_3a
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    .line 2306
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2307
    const/4 v0, 0x0

    :goto_44
    if-lt v0, v1, :cond_4f

    .line 2312
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0, p2}, Lcom/anddoes/launcher/PagedView;->b(IZ)V

    .line 2313
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->requestLayout()V

    goto :goto_7

    .line 2308
    :cond_4f
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->S:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    add-int/lit8 v0, v0, 0x1

    goto :goto_44
.end method

.method public c(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    .line 2349
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2378
    :cond_a
    :goto_a
    return-void

    .line 2352
    :cond_b
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 2355
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2359
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->f:Z

    if-eqz v0, :cond_30

    .line 2360
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_2d

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    :goto_29
    invoke-interface {v1, v0}, Lcom/anddoes/launcher/iy;->b(I)V

    goto :goto_a

    :cond_2d
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_29

    .line 2364
    :cond_30
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->H()Landroid/widget/ImageView;

    .line 2365
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 2367
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->k()V

    .line 2368
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->f:Z

    if-eqz v0, :cond_4f

    move v0, v1

    :goto_41
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2369
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->J()V

    .line 2370
    if-eqz p1, :cond_51

    .line 2371
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a

    .line 2368
    :cond_4f
    const/4 v0, 0x4

    goto :goto_41

    .line 2373
    :cond_51
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v3, [F

    aput v4, v3, v1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    .line 2374
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2375
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a
.end method

.method public c_()V
    .registers 4

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 2084
    :goto_5
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2085
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    sub-int v0, v2, v0

    if-ge v1, v0, :cond_1e

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 2089
    :cond_1e
    :goto_1e
    return-void

    .line 2083
    :cond_1f
    const/4 v0, 0x1

    goto :goto_5

    .line 2087
    :cond_21
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->o:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    sub-int v0, v2, v0

    if-ge v1, v0, :cond_1e

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    goto :goto_1e
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->B()Z

    .line 724
    return-void
.end method

.method public final d(Landroid/view/View;)I
    .registers 6
    .parameter

    .prologue
    .line 2092
    if-eqz p1, :cond_d

    .line 2094
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2095
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    .line 2096
    const/4 v0, 0x0

    :goto_b
    if-lt v0, v2, :cond_f

    .line 2102
    :cond_d
    const/4 v0, -0x1

    :cond_e
    return v0

    .line 2097
    :cond_f
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v3

    if-eq v1, v3, :cond_e

    .line 2096
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method protected final d(F)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 1598
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v1

    .line 1600
    int-to-float v0, v1

    div-float v0, p1, v0

    .line 1602
    cmpl-float v2, v0, v5

    if-nez v2, :cond_10

    .line 1627
    :goto_f
    return-void

    .line 1603
    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v4

    mul-float v3, v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    mul-float/2addr v0, v2

    .line 1606
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2d

    .line 1607
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1610
    :cond_2d
    const v2, 0x3e0f5c29

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1611
    cmpg-float v1, p1, v5

    if-gez v1, :cond_4a

    .line 1612
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 1613
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_47

    .line 1614
    iput v6, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    .line 1626
    :goto_43
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    goto :goto_f

    .line 1616
    :cond_47
    iput v6, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_43

    .line 1619
    :cond_4a
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 1620
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_58

    .line 1621
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    goto :goto_43

    .line 1623
    :cond_58
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    goto :goto_43
.end method

.method protected d(I)V
    .registers 2
    .parameter

    .prologue
    .line 260
    return-void
.end method

.method public final d(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2394
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_9

    .line 2433
    :cond_8
    :goto_8
    return-void

    .line 2397
    :cond_9
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->I()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2400
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    if-eqz v0, :cond_24

    .line 2401
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aF:Lcom/anddoes/launcher/iy;

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_21

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    :goto_1d
    invoke-interface {v1, v0}, Lcom/anddoes/launcher/iy;->b(I)V

    goto :goto_8

    :cond_21
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_1d

    .line 2404
    :cond_24
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->H()Landroid/widget/ImageView;

    .line 2405
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 2407
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->k()V

    .line 2408
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->J()V

    .line 2409
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->g:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->f:Z

    if-nez v0, :cond_8

    .line 2410
    :cond_39
    if-eqz p1, :cond_47

    .line 2411
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    .line 2414
    :cond_47
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aC:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    .line 2415
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2416
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/anddoes/launcher/is;

    invoke-direct {v1, p0}, Lcom/anddoes/launcher/is;-><init>(Lcom/anddoes/launcher/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2429
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1107
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1110
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->P:I

    add-int/2addr v0, v1

    .line 1112
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->d:I

    if-ne v0, v1, :cond_15

    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->y:Z

    if-eqz v1, :cond_1c

    .line 1113
    :cond_15
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->e(I)V

    .line 1114
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->d:I

    .line 1115
    iput-boolean v5, p0, Lcom/anddoes/launcher/PagedView;->y:Z

    .line 1119
    :cond_1c
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    .line 1120
    if-lez v0, :cond_a3

    .line 1121
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v1, :cond_6f

    if-le v0, v7, :cond_6f

    .line 1122
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->P:I

    if-ltz v1, :cond_32

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->P:I

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->p:I

    if-le v1, v2, :cond_6f

    .line 1123
    :cond_32
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1124
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v2

    .line 1125
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v2, v3

    .line 1126
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1127
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->P:I

    if-gez v2, :cond_af

    .line 1128
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v2, :cond_a4

    .line 1129
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1133
    :goto_5a
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/anddoes/launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1135
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_aa

    .line 1136
    int-to-float v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1156
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->O:[I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b([I)V

    .line 1157
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->O:[I

    aget v1, v0, v5

    .line 1158
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->O:[I

    aget v0, v0, v7

    .line 1159
    if-eq v1, v6, :cond_a3

    if-eq v0, v6, :cond_a3

    .line 1160
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getDrawingTime()J

    move-result-wide v2

    .line 1162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1163
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    iget v6, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    iget v7, p0, Lcom/anddoes/launcher/PagedView;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/anddoes/launcher/PagedView;->mLeft:I

    sub-int/2addr v6, v7

    .line 1164
    iget v7, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    iget v8, p0, Lcom/anddoes/launcher/PagedView;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/anddoes/launcher/PagedView;->mTop:I

    sub-int/2addr v7, v8

    .line 1163
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1166
    :goto_9e
    if-ge v0, v1, :cond_dd

    .line 1169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1172
    :cond_a3
    return-void

    .line 1131
    :cond_a4
    neg-int v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5a

    .line 1138
    :cond_aa
    int-to-float v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6f

    .line 1140
    :cond_af
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->P:I

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->p:I

    if-le v0, v2, :cond_6f

    .line 1141
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_d2

    .line 1142
    int-to-float v0, v1

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1146
    :goto_bd
    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/anddoes/launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1148
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_d7

    .line 1149
    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6f

    .line 1144
    :cond_d2
    int-to-float v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_bd

    .line 1151
    :cond_d7
    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6f

    .line 1167
    :cond_dd
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/anddoes/launcher/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1166
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1201
    const/16 v1, 0x11

    if-ne p2, v1, :cond_11

    .line 1202
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-lez v1, :cond_27

    .line 1203
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 1212
    :goto_10
    return v0

    .line 1206
    :cond_11
    const/16 v1, 0x42

    if-ne p2, v1, :cond_27

    .line 1207
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 1208
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->s(I)V

    goto :goto_10

    .line 1212
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_10
.end method

.method protected e(I)V
    .registers 3
    .parameter

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->I()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 950
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->h()V

    .line 964
    :cond_9
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1240
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 1243
    :goto_7
    if-ne v0, v1, :cond_d

    .line 1244
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1254
    :cond_c
    return-void

    .line 1247
    :cond_d
    if-eq v0, p0, :cond_c

    .line 1250
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1251
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 1252
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_7
.end method

.method protected g(I)I
    .registers 4
    .parameter

    .prologue
    .line 2186
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public abstract g()V
.end method

.method protected h(I)I
    .registers 4
    .parameter

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    .line 2190
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(Z)V

    .line 582
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->d(Z)V

    .line 587
    return-void
.end method

.method protected final l(I)V
    .registers 15
    .parameter

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 267
    const/4 v1, 0x0

    .line 268
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2d

    .line 347
    if-eqz v2, :cond_15a

    .line 348
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 350
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 351
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 352
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :cond_2c
    :goto_2c
    return-void

    .line 269
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v6

    .line 270
    invoke-virtual {p0, v6}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/View;)V

    .line 271
    if-eqz v6, :cond_c0

    .line 272
    invoke-virtual {p0, p1, v6, v0}, Lcom/anddoes/launcher/PagedView;->a(ILandroid/view/View;I)F

    move-result v7

    .line 274
    iget-object v3, p0, Lcom/anddoes/launcher/PagedView;->am:Lcom/anddoes/launcher/ji;

    const/4 v4, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/anddoes/launcher/ji;->getInterpolation(F)F

    move-result v3

    .line 275
    const/high16 v4, 0x3f80

    sub-float/2addr v4, v3

    sget v5, Lcom/anddoes/launcher/PagedView;->ap:F

    mul-float/2addr v3, v5

    add-float v5, v4, v3

    .line 276
    const/4 v3, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 279
    const/4 v3, 0x0

    cmpg-float v3, v7, v3

    if-gez v3, :cond_c7

    .line 280
    const/4 v3, 0x0

    cmpg-float v3, v7, v3

    if-gez v3, :cond_c4

    iget-object v3, p0, Lcom/anddoes/launcher/PagedView;->as:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v8, 0x3f80

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v3, v8}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v3

    .line 287
    :goto_73
    iget v8, p0, Lcom/anddoes/launcher/PagedView;->i:F

    sget v9, Lcom/anddoes/launcher/PagedView;->an:F

    mul-float/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/view/View;->setCameraDistance(F)V

    .line 288
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 289
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 291
    iget-boolean v10, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v10, :cond_e0

    .line 292
    if-nez v0, :cond_d1

    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-gez v10, :cond_d1

    .line 293
    const/4 v2, 0x1

    .line 297
    :cond_8f
    :goto_8f
    int-to-float v7, v9

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 298
    int-to-float v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 299
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationY(F)V

    move v11, v4

    move v4, v1

    move v1, v11

    move v12, v5

    move v5, v2

    move v2, v12

    .line 332
    :goto_a7
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 333
    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleX(F)V

    .line 334
    invoke-virtual {v6, v2}, Landroid/view/View;->setScaleY(F)V

    .line 335
    invoke-virtual {v6, v3}, Landroid/view/View;->setAlpha(F)V

    .line 340
    const v1, 0x3caaaaab

    cmpg-float v1, v3, v1

    if-gez v1, :cond_14c

    .line 341
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v4

    move v2, v5

    .line 268
    :cond_c0
    :goto_c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 280
    :cond_c4
    const/high16 v3, 0x3f80

    goto :goto_73

    .line 284
    :cond_c7
    iget-object v3, p0, Lcom/anddoes/launcher/PagedView;->at:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f80

    sub-float/2addr v8, v7

    invoke-virtual {v3, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_73

    .line 294
    :cond_d1
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_8f

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_8f

    .line 295
    const/4 v1, 0x1

    goto :goto_8f

    .line 302
    :cond_e0
    if-nez v0, :cond_104

    const/4 v10, 0x0

    cmpg-float v10, v7, v10

    if-gez v10, :cond_104

    .line 304
    sget v3, Lcom/anddoes/launcher/PagedView;->aq:F

    int-to-float v4, v8

    mul-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setPivotX(F)V

    .line 305
    sget v3, Lcom/anddoes/launcher/PagedView;->ar:F

    neg-float v3, v3

    .line 306
    mul-float/2addr v3, v7

    .line 305
    invoke-virtual {v6, v3}, Landroid/view/View;->setRotationY(F)V

    .line 307
    const/high16 v4, 0x3f80

    .line 308
    const/high16 v5, 0x3f80

    .line 311
    const/4 v3, 0x0

    .line 312
    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;->b(II)V

    move v11, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v1

    move v1, v11

    goto :goto_a7

    .line 313
    :cond_104
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_132

    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-lez v10, :cond_132

    .line 315
    const/high16 v3, 0x3f80

    sget v4, Lcom/anddoes/launcher/PagedView;->aq:F

    sub-float/2addr v3, v4

    int-to-float v4, v8

    mul-float/2addr v3, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setPivotX(F)V

    .line 316
    sget v3, Lcom/anddoes/launcher/PagedView;->ar:F

    neg-float v3, v3

    .line 317
    mul-float/2addr v3, v7

    .line 316
    invoke-virtual {v6, v3}, Landroid/view/View;->setRotationY(F)V

    .line 318
    const/high16 v4, 0x3f80

    .line 319
    const/high16 v5, 0x3f80

    .line 322
    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;->b(II)V

    move v11, v3

    move v3, v5

    move v5, v2

    move v2, v4

    move v4, v1

    move v1, v11

    goto/16 :goto_a7

    .line 325
    :cond_132
    int-to-float v7, v9

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotY(F)V

    .line 326
    int-to-float v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->setPivotX(F)V

    .line 327
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotationY(F)V

    move v11, v4

    move v4, v1

    move v1, v11

    move v12, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_a7

    .line 342
    :cond_14c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_156

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_156
    move v1, v4

    move v2, v5

    goto/16 :goto_c0

    .line 354
    :cond_15a
    if-eqz v1, :cond_2c

    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    .line 356
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->r(I)F

    move-result v0

    .line 357
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->am:Lcom/anddoes/launcher/ji;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/ji;->getInterpolation(F)F

    move-result v2

    .line 358
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v2

    sget v4, Lcom/anddoes/launcher/PagedView;->ap:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 359
    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 362
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->d()Z

    move-result v4

    if-eqz v4, :cond_191

    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1c0

    .line 363
    :cond_191
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1bd

    iget-object v4, p0, Lcom/anddoes/launcher/PagedView;->as:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x3f80

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v5, v0

    invoke-virtual {v4, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 369
    :goto_1a4
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 370
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 371
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 372
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 374
    const v2, 0x3caaaaab

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1cb

    .line 375
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 363
    :cond_1bd
    const/high16 v0, 0x3f80

    goto :goto_1a4

    .line 367
    :cond_1c0
    iget-object v4, p0, Lcom/anddoes/launcher/PagedView;->at:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f80

    sub-float v0, v5, v0

    invoke-virtual {v4, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1a4

    .line 376
    :cond_1cb
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 377
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c
.end method

.method final m(I)V
    .registers 4
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 531
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 535
    :cond_d
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 544
    :goto_13
    return-void

    .line 539
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 540
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->x()V

    .line 541
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->h()V

    .line 542
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->z()V

    .line 543
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    goto :goto_13
.end method

.method n(I)V
    .registers 3
    .parameter

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->m(I)V

    .line 548
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 549
    return-void
.end method

.method protected final o(I)I
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1007
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->f(I)I

    move-result v4

    .line 1009
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->Q:F

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1c

    .line 1010
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->e:[I

    move-object v3, v1

    .line 1012
    :goto_12
    if-eqz v3, :cond_20

    aget v1, v3, v4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 1013
    aget v0, v3, v4

    .line 1025
    :cond_1b
    :goto_1b
    return v0

    .line 1010
    :cond_1c
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->aw:[I

    move-object v3, v1

    goto :goto_12

    .line 1015
    :cond_20
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 1018
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    move v6, v0

    move v0, v1

    move v1, v6

    .line 1019
    :goto_2d
    if-lt v1, v4, :cond_34

    .line 1022
    if-eqz v3, :cond_1b

    .line 1023
    aput v0, v3, v4

    goto :goto_1b

    .line 1020
    :cond_34
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v2

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v2, v5

    add-int/2addr v2, v0

    .line 1019
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_2d
.end method

.method protected o()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2519
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 2520
    :goto_8
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f060290

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2521
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2520
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2519
    :cond_2d
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_8
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 1820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    .line 1821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 1844
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_16
    return v0

    .line 1826
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_39

    .line 1828
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v1, v2

    .line 1833
    :goto_24
    cmpl-float v3, v0, v2

    if-nez v3, :cond_2c

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_12

    .line 1834
    :cond_2c
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_34

    cmpl-float v0, v1, v2

    if-lez v0, :cond_45

    .line 1835
    :cond_34
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->c_()V

    .line 1839
    :goto_37
    const/4 v0, 0x1

    goto :goto_16

    .line 1830
    :cond_39
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v1, v0

    .line 1831
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_24

    .line 1837
    :cond_45
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->b_()V

    goto :goto_37

    .line 1821
    nop

    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_17
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 2526
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter

    .prologue
    .line 2509
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2510
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2511
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_20

    .line 2512
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2513
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2514
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2516
    :cond_20
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 2503
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2504
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2505
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1294
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/MotionEvent;)V

    .line 1297
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ae:Z

    if-nez v0, :cond_17

    .line 1298
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1399
    :cond_16
    :goto_16
    return v2

    .line 1306
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1307
    if-ne v0, v6, :cond_2b

    .line 1308
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-eq v3, v2, :cond_16

    .line 1309
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_16

    .line 1310
    iget v3, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_16

    .line 1314
    :cond_2b
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_9a

    .line 1399
    :cond_30
    :goto_30
    :pswitch_30
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-nez v0, :cond_16

    move v2, v1

    goto :goto_16

    .line 1320
    :pswitch_36
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    if-eq v0, v7, :cond_3e

    .line 1321
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->a_(Landroid/view/MotionEvent;)V

    goto :goto_30

    .line 1339
    :cond_3e
    :pswitch_3e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1342
    iput v3, p0, Lcom/anddoes/launcher/PagedView;->b:F

    .line 1343
    iput v4, p0, Lcom/anddoes/launcher/PagedView;->c:F

    .line 1344
    iput v3, p0, Lcom/anddoes/launcher/PagedView;->r:F

    .line 1345
    iput v4, p0, Lcom/anddoes/launcher/PagedView;->t:F

    .line 1346
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->s:F

    .line 1347
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1348
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1349
    iput-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    .line 1365
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_63
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1369
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-eq v0, v6, :cond_30

    .line 1370
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v5, 0x3

    if-eq v0, v5, :cond_30

    .line 1371
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_30

    .line 1372
    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/PagedView;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1373
    iput v6, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto :goto_30

    :cond_7d
    move v0, v2

    .line 1365
    goto :goto_63

    .line 1374
    :cond_7f
    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/PagedView;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1375
    const/4 v0, 0x3

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    goto :goto_30

    .line 1383
    :pswitch_89
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1384
    iput-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->A:Z

    .line 1385
    iput v7, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1386
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->f()V

    goto :goto_30

    .line 1390
    :pswitch_93
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/MotionEvent;)V

    .line 1391
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->f()V

    goto :goto_30

    .line 1314
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_89
        :pswitch_36
        :pswitch_89
        :pswitch_30
        :pswitch_30
        :pswitch_93
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    if-nez v0, :cond_5

    .line 946
    :cond_4
    :goto_4
    return-void

    .line 873
    :cond_5
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mPaddingBottom:I

    add-int v4, v0, v1

    .line 874
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mPaddingRight:I

    add-int v5, v0, v1

    .line 875
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v6

    .line 876
    const/4 v1, 0x0

    .line 877
    const/4 v0, 0x0

    .line 878
    if-lez v6, :cond_3b

    .line 881
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v2, :cond_8b

    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v0

    .line 887
    :goto_22
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->C:I

    if-gez v2, :cond_3b

    .line 888
    iget-boolean v2, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v2, :cond_91

    .line 889
    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/PagedView;->a(I)V

    .line 896
    :cond_3b
    :goto_3b
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_3f
    if-lt v3, v6, :cond_a3

    .line 927
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->l:Z

    if-eqz v0, :cond_76

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-ltz v0, :cond_76

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 928
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 929
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_106

    .line 930
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->setVerticalScrollBarEnabled(Z)V

    .line 931
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 932
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 933
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->setVerticalScrollBarEnabled(Z)V

    .line 940
    :goto_73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->l:Z

    .line 943
    :cond_76
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->l:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->l:Z

    goto/16 :goto_4

    .line 884
    :cond_8b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    goto :goto_22

    .line 891
    :cond_91
    sub-int v2, p4, p2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/anddoes/launcher/PagedView;->a(I)V

    goto :goto_3b

    .line 897
    :cond_a3
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v7

    .line 898
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-eq v0, v8, :cond_119

    .line 899
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_e1

    .line 900
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 901
    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v8

    .line 902
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    .line 903
    iget-boolean v9, p0, Lcom/anddoes/launcher/PagedView;->L:Z

    if-eqz v9, :cond_ca

    .line 904
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v5

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 909
    :cond_ca
    add-int/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    .line 908
    invoke-virtual {v7, v0, v1, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 910
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v2, v8

    add-int/2addr v1, v2

    move v10, v1

    move v1, v0

    move v0, v10

    .line 896
    :goto_da
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_3f

    .line 912
    :cond_e1
    invoke-virtual {p0, v7}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v1

    .line 913
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 914
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    .line 915
    iget-boolean v9, p0, Lcom/anddoes/launcher/PagedView;->L:Z

    if-eqz v9, :cond_f8

    .line 916
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v8

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 921
    :cond_f8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v8, v0

    .line 920
    invoke-virtual {v7, v2, v0, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 922
    iget v7, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    goto :goto_da

    .line 935
    :cond_106
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 936
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 937
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->setHorizontalScrollBarEnabled(Z)V

    goto/16 :goto_73

    :cond_119
    move v0, v1

    move v1, v2

    goto :goto_da
.end method

.method protected onMeasure(II)V
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    if-nez v0, :cond_8

    .line 729
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 810
    :goto_7
    return-void

    .line 733
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 734
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 735
    const/high16 v0, 0x4000

    if-eq v7, v0, :cond_1c

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1c
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 745
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 746
    const/4 v4, 0x0

    .line 747
    const/4 v1, 0x0

    .line 749
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mPaddingBottom:I

    add-int v9, v0, v5

    .line 750
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    iget v5, p0, Lcom/anddoes/launcher/PagedView;->mPaddingRight:I

    add-int v10, v0, v5

    .line 755
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v11

    .line 756
    const/4 v0, 0x0

    move v5, v1

    move v6, v4

    move v4, v0

    :goto_3a
    if-lt v4, v11, :cond_63

    .line 787
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_a3

    .line 788
    const/high16 v0, -0x8000

    if-ne v7, v0, :cond_b0

    .line 789
    add-int v0, v5, v10

    move v1, v0

    move v0, v2

    .line 797
    :goto_48
    invoke-virtual {p0, v1, v0}, Lcom/anddoes/launcher/PagedView;->setMeasuredDimension(II)V

    .line 802
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->e()V

    .line 803
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->k()V

    .line 805
    if-lez v11, :cond_ab

    .line 806
    add-int/lit8 v0, v11, -0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v0

    add-int/lit8 v1, v11, -0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    goto :goto_7

    .line 758
    :cond_63
    invoke-virtual {p0, v4}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v12

    .line 759
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 762
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-ne v0, v13, :cond_9d

    .line 763
    const/high16 v0, -0x8000

    .line 769
    :goto_72
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v13, -0x2

    if-ne v1, v13, :cond_a0

    .line 770
    const/high16 v1, -0x8000

    .line 776
    :goto_79
    sub-int v13, v3, v10

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 778
    sub-int v13, v2, v9

    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 780
    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 781
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 782
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 756
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v1

    goto :goto_3a

    .line 765
    :cond_9d
    const/high16 v0, 0x4000

    goto :goto_72

    .line 772
    :cond_a0
    const/high16 v1, 0x4000

    goto :goto_79

    .line 792
    :cond_a3
    const/high16 v0, -0x8000

    if-ne v8, v0, :cond_b0

    .line 793
    add-int v0, v6, v9

    move v1, v3

    goto :goto_48

    .line 808
    :cond_ab
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    goto/16 :goto_7

    :cond_b0
    move v0, v2

    move v1, v3

    goto :goto_48
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1187
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_13

    .line 1188
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->o:I

    .line 1192
    :goto_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1193
    if-eqz v0, :cond_16

    .line 1194
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1196
    :goto_12
    return v0

    .line 1190
    :cond_13
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    goto :goto_8

    .line 1196
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1644
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ae:Z

    if-nez v0, :cond_14

    .line 1645
    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1807
    :cond_13
    :goto_13
    return v2

    .line 1648
    :cond_14
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->b(Landroid/view/MotionEvent;)V

    .line 1650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1652
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_25a

    :pswitch_20
    goto :goto_13

    .line 1658
    :pswitch_21
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1659
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1663
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->r:F

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->b:F

    .line 1664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->t:F

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->c:F

    .line 1665
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->s:F

    .line 1666
    iput v1, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1667
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1668
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-ne v0, v2, :cond_13

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_13

    .line 1669
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->d()V

    goto :goto_13

    .line 1674
    :pswitch_56
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-ne v0, v2, :cond_ce

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_ce

    .line 1676
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->R:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1677
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_b5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1678
    :goto_6e
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_ba

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->t:F

    :goto_74
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->s:F

    add-float/2addr v1, v4

    sub-float/2addr v1, v0

    .line 1680
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->u:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1685
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c9

    .line 1686
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->k:F

    add-float/2addr v4, v1

    iput v4, p0, Lcom/anddoes/launcher/PagedView;->k:F

    .line 1687
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28

    div-float/2addr v4, v5

    iput v4, p0, Lcom/anddoes/launcher/PagedView;->j:F

    .line 1688
    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->Z:Z

    if-nez v4, :cond_c2

    .line 1689
    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v4, :cond_bd

    .line 1690
    float-to-int v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/anddoes/launcher/PagedView;->scrollBy(II)V

    .line 1698
    :goto_a7
    iget-boolean v3, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v3, :cond_c6

    .line 1699
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->t:F

    .line 1703
    :goto_ad
    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->s:F

    goto/16 :goto_13

    .line 1677
    :cond_b5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto :goto_6e

    .line 1678
    :cond_ba
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->r:F

    goto :goto_74

    .line 1692
    :cond_bd
    float-to-int v4, v1

    invoke-virtual {p0, v4, v3}, Lcom/anddoes/launcher/PagedView;->scrollBy(II)V

    goto :goto_a7

    .line 1696
    :cond_c2
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    goto :goto_a7

    .line 1701
    :cond_c6
    iput v0, p0, Lcom/anddoes/launcher/PagedView;->r:F

    goto :goto_ad

    .line 1705
    :cond_c9
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->awakenScrollBars()Z

    goto/16 :goto_13

    .line 1708
    :cond_ce
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-eq v0, v4, :cond_13

    .line 1709
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    .line 1710
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_13

    .line 1711
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->a_(Landroid/view/MotionEvent;)V

    goto/16 :goto_13

    .line 1717
    :pswitch_e2
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-ne v0, v2, :cond_1d0

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_1d0

    .line 1718
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1719
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1720
    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v4, :cond_186

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1721
    :goto_fa
    iget-object v4, p0, Lcom/anddoes/launcher/PagedView;->a:Lcom/anddoes/launcher/kx;

    .line 1722
    iget v6, p0, Lcom/anddoes/launcher/PagedView;->ay:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/anddoes/launcher/kx;->a(F)V

    .line 1723
    iget-boolean v6, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v6, :cond_18c

    .line 1724
    invoke-virtual {v4, v1}, Lcom/anddoes/launcher/kx;->b(I)F

    move-result v1

    .line 1723
    :goto_10a
    float-to-int v7, v1

    .line 1726
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_192

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->c:F

    :goto_111
    sub-float v1, v0, v1

    float-to-int v8, v1

    .line 1727
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v1

    .line 1728
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v1, v1

    const v6, 0x3e99999a

    mul-float/2addr v1, v6

    cmpl-float v1, v4, v1

    if-lez v1, :cond_196

    move v1, v2

    .line 1729
    :goto_12d
    iget v6, p0, Lcom/anddoes/launcher/PagedView;->h:I

    .line 1731
    iget v9, p0, Lcom/anddoes/launcher/PagedView;->u:F

    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v4, :cond_198

    iget v4, p0, Lcom/anddoes/launcher/PagedView;->t:F

    :goto_137
    iget v10, p0, Lcom/anddoes/launcher/PagedView;->s:F

    add-float/2addr v4, v10

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v9

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    .line 1733
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->u:F

    const/high16 v4, 0x41c8

    cmpl-float v0, v0, v4

    if-lez v0, :cond_19b

    .line 1734
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v6, :cond_19b

    move v0, v2

    .line 1741
    :goto_152
    int-to-float v4, v7

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    int-to-float v6, v8

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_257

    if-eqz v0, :cond_257

    move v6, v2

    .line 1749
    :goto_163
    if-eqz v1, :cond_169

    if-lez v8, :cond_169

    if-eqz v0, :cond_16d

    .line 1750
    :cond_169
    if-eqz v0, :cond_1a4

    if-lez v7, :cond_1a4

    :cond_16d
    iget v9, p0, Lcom/anddoes/launcher/PagedView;->n:I

    iget-boolean v4, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v4, :cond_19d

    move v4, v5

    :goto_174
    if-le v9, v4, :cond_1a4

    .line 1751
    if-eqz v6, :cond_19f

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 1752
    :goto_17a
    invoke-virtual {p0, v0, v7}, Lcom/anddoes/launcher/PagedView;->c(II)V

    .line 1788
    :goto_17d
    iput v3, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1789
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1790
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->f()V

    goto/16 :goto_13

    .line 1720
    :cond_186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    goto/16 :goto_fa

    .line 1725
    :cond_18c
    invoke-virtual {v4, v1}, Lcom/anddoes/launcher/kx;->a(I)F

    move-result v1

    goto/16 :goto_10a

    .line 1726
    :cond_192
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->b:F

    goto/16 :goto_111

    :cond_196
    move v1, v3

    .line 1728
    goto :goto_12d

    .line 1731
    :cond_198
    iget v4, p0, Lcom/anddoes/launcher/PagedView;->r:F

    goto :goto_137

    :cond_19b
    move v0, v3

    .line 1734
    goto :goto_152

    :cond_19d
    move v4, v3

    .line 1750
    goto :goto_174

    .line 1751
    :cond_19f
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_17a

    .line 1753
    :cond_1a4
    if-eqz v1, :cond_1aa

    if-gez v8, :cond_1aa

    if-eqz v0, :cond_1ae

    .line 1754
    :cond_1aa
    if-eqz v0, :cond_1cc

    if-gez v7, :cond_1cc

    .line 1755
    :cond_1ae
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v4

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_1c5

    move v0, v3

    :goto_1b9
    sub-int v0, v4, v0

    if-ge v1, v0, :cond_1cc

    .line 1756
    if-eqz v6, :cond_1c7

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 1757
    :goto_1c1
    invoke-virtual {p0, v0, v7}, Lcom/anddoes/launcher/PagedView;->c(II)V

    goto :goto_17d

    :cond_1c5
    move v0, v2

    .line 1755
    goto :goto_1b9

    .line 1756
    :cond_1c7
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c1

    .line 1759
    :cond_1cc
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->E()V

    goto :goto_17d

    .line 1761
    :cond_1d0
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f6

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_1f6

    .line 1765
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_1f0

    move v0, v5

    :goto_1e0
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1766
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-eq v0, v1, :cond_1f2

    .line 1767
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    goto :goto_17d

    :cond_1f0
    move v0, v3

    .line 1765
    goto :goto_1e0

    .line 1769
    :cond_1f2
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->E()V

    goto :goto_17d

    .line 1771
    :cond_1f6
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_224

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_224

    .line 1775
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v1

    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-eqz v0, :cond_21d

    move v0, v3

    :goto_20a
    sub-int v0, v1, v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1776
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-eq v0, v1, :cond_21f

    .line 1777
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    goto/16 :goto_17d

    :cond_21d
    move v0, v2

    .line 1775
    goto :goto_20a

    .line 1779
    :cond_21f
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->E()V

    goto/16 :goto_17d

    .line 1781
    :cond_224
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-ne v0, v4, :cond_22d

    .line 1782
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->q()V

    goto/16 :goto_17d

    .line 1783
    :cond_22d
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_237

    .line 1784
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->p()V

    goto/16 :goto_17d

    .line 1786
    :cond_237
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->b()V

    goto/16 :goto_17d

    .line 1794
    :pswitch_23c
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->x:I

    if-ne v0, v2, :cond_249

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_249

    .line 1795
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->E()V

    .line 1797
    :cond_249
    iput v3, p0, Lcom/anddoes/launcher/PagedView;->x:I

    .line 1798
    iput v5, p0, Lcom/anddoes/launcher/PagedView;->R:I

    .line 1799
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->f()V

    goto/16 :goto_13

    .line 1803
    :pswitch_252
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_13

    :cond_257
    move v6, v3

    goto/16 :goto_163

    .line 1652
    :pswitch_data_25a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_e2
        :pswitch_56
        :pswitch_23c
        :pswitch_20
        :pswitch_20
        :pswitch_252
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 968
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->y:Z

    .line 973
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->invalidate()V

    .line 974
    invoke-direct {p0}, Lcom/anddoes/launcher/PagedView;->e()V

    .line 975
    return-void
.end method

.method protected final p(I)I
    .registers 6
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView;->f(I)I

    move-result v1

    .line 1031
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 1032
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    aget v0, v0, v1

    .line 1049
    :cond_13
    :goto_13
    return v0

    .line 1034
    :cond_14
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_36

    .line 1035
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->mPaddingBottom:I

    add-int/2addr v0, v2

    .line 1036
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->mPaddingTop:I

    .line 1037
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v0

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/PagedView;->i(I)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 1036
    add-int/2addr v0, v2

    .line 1038
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    if-eqz v2, :cond_13

    .line 1039
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    aput v0, v2, v1

    goto :goto_13

    .line 1043
    :cond_36
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->mPaddingRight:I

    add-int/2addr v0, v2

    .line 1044
    iget v2, p0, Lcom/anddoes/launcher/PagedView;->mPaddingLeft:I

    .line 1045
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int v0, v3, v0

    invoke-direct {p0, v1}, Lcom/anddoes/launcher/PagedView;->i(I)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 1044
    add-int/2addr v0, v2

    .line 1046
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    if-eqz v2, :cond_13

    .line 1047
    iget-object v2, p0, Lcom/anddoes/launcher/PagedView;->av:[I

    aput v0, v2, v1

    goto :goto_13
.end method

.method protected p()V
    .registers 1

    .prologue
    .line 1816
    return-void
.end method

.method protected final q(I)F
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1514
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1516
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    :goto_f
    div-int/lit8 v0, v0, 0x2

    .line 1518
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v1, v2

    .line 1519
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v2

    .line 1520
    invoke-virtual {p0, v3}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 1519
    sub-int v0, p1, v0

    .line 1522
    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v0, v1

    .line 1524
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1525
    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1526
    return v0

    .line 1516
    :cond_34
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_f
.end method

.method protected q()V
    .registers 1

    .prologue
    .line 1812
    return-void
.end method

.method protected final r(I)F
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 1530
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1531
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v2

    .line 1532
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredHeight()I

    move-result v0

    :goto_14
    div-int/lit8 v0, v0, 0x2

    .line 1534
    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/PagedView;->c(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/anddoes/launcher/PagedView;->C:I

    add-int/2addr v2, v3

    .line 1535
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v3

    .line 1536
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int v1, v3, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1535
    sub-int v0, p1, v0

    .line 1538
    int-to-float v0, v0

    int-to-float v1, v2

    mul-float/2addr v1, v4

    div-float/2addr v0, v1

    .line 1539
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1540
    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1541
    return v0

    .line 1532
    :cond_3a
    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getMeasuredWidth()I

    move-result v0

    goto :goto_14
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1884
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1885
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(I)I

    move-result v0

    .line 1886
    if-ltz v0, :cond_1a

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-eq v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1887
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 1889
    :cond_1a
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/anddoes/launcher/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->c(I)I

    move-result v0

    .line 1177
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1178
    :cond_14
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->s(I)V

    .line 1179
    const/4 v0, 0x1

    .line 1181
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1264
    if-eqz p1, :cond_b

    .line 1267
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1268
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1270
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1271
    return-void
.end method

.method protected s(I)V
    .registers 4
    .parameter

    .prologue
    const/16 v0, 0x1c2

    .line 2018
    .line 2019
    iget v1, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    if-le v0, v1, :cond_c

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    if-lez v1, :cond_c

    .line 2020
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->aj:I

    .line 2022
    :cond_c
    invoke-direct {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;->d(II)V

    .line 2023
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_e

    .line 606
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->N:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 610
    :goto_d
    return-void

    .line 608
    :cond_e
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->N:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    goto :goto_d
.end method

.method public scrollTo(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v0, :cond_43

    .line 615
    iput p2, p0, Lcom/anddoes/launcher/PagedView;->N:I

    .line 616
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-nez v0, :cond_3d

    .line 617
    if-gez p2, :cond_27

    .line 621
    invoke-super {p0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 622
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->M:Z

    if-eqz v0, :cond_18

    .line 623
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->a(F)V

    .line 635
    :cond_18
    :goto_18
    int-to-float v0, p2

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->k:F

    .line 660
    :goto_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->j:F

    .line 661
    return-void

    .line 625
    :cond_27
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    if-le p2, v0, :cond_3d

    .line 626
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 627
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->M:Z

    if-eqz v0, :cond_18

    .line 628
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->a(F)V

    goto :goto_18

    .line 631
    :cond_3d
    iput p2, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 632
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_18

    .line 637
    :cond_43
    iput p1, p0, Lcom/anddoes/launcher/PagedView;->N:I

    .line 639
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ag:Z

    if-nez v0, :cond_70

    .line 640
    if-gez p1, :cond_5a

    .line 644
    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 645
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->M:Z

    if-eqz v0, :cond_56

    .line 646
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->a(F)V

    .line 658
    :cond_56
    :goto_56
    int-to-float v0, p1

    iput v0, p0, Lcom/anddoes/launcher/PagedView;->k:F

    goto :goto_1b

    .line 648
    :cond_5a
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    if-le p1, v0, :cond_70

    .line 649
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 650
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->M:Z

    if-eqz v0, :cond_56

    .line 651
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->p:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->a(F)V

    goto :goto_56

    .line 654
    :cond_70
    iput p1, p0, Lcom/anddoes/launcher/PagedView;->P:I

    .line 655
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_56
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/anddoes/launcher/PagedView;->z:Landroid/view/View$OnLongClickListener;

    .line 601
    return-void
.end method

.method protected final t()V
    .registers 5

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ah:Z

    if-eqz v0, :cond_18

    .line 253
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3fd9999a

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    .line 257
    :goto_17
    return-void

    .line 255
    :cond_18
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/anddoes/launcher/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/anddoes/launcher/je;

    invoke-direct {v2}, Lcom/anddoes/launcher/je;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    goto :goto_17
.end method

.method protected final t(I)V
    .registers 3
    .parameter

    .prologue
    .line 2151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;->b(IZ)V

    .line 2152
    return-void
.end method

.method protected final u()V
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    .line 483
    return-void
.end method

.method protected final u(I)V
    .registers 3
    .parameter

    .prologue
    .line 2278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anddoes/launcher/PagedView;->c(IZ)V

    .line 2279
    return-void
.end method

.method protected final v()Z
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/anddoes/launcher/PagedView;->ab:Z

    return v0
.end method

.method final w()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    return v0
.end method

.method protected x()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 516
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->o(I)I

    move-result v0

    iget v1, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/PagedView;->p(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 517
    iget-boolean v1, p0, Lcom/anddoes/launcher/PagedView;->af:Z

    if-eqz v1, :cond_1b

    .line 518
    invoke-virtual {p0, v2, v0}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 519
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 524
    :goto_1a
    return-void

    .line 521
    :cond_1b
    invoke-virtual {p0, v0, v2}, Lcom/anddoes/launcher/PagedView;->scrollTo(II)V

    .line 522
    iget-object v1, p0, Lcom/anddoes/launcher/PagedView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1a
.end method

.method public final y()V
    .registers 2

    .prologue
    .line 552
    iget v0, p0, Lcom/anddoes/launcher/PagedView;->m:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->n(I)V

    .line 553
    return-void
.end method

.method protected z()V
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aA:Lcom/anddoes/launcher/ja;

    if-eqz v0, :cond_d

    .line 557
    iget-object v0, p0, Lcom/anddoes/launcher/PagedView;->aA:Lcom/anddoes/launcher/ja;

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/PagedView;->b(I)Landroid/view/View;

    iget v0, p0, Lcom/anddoes/launcher/PagedView;->n:I

    .line 559
    :cond_d
    return-void
.end method
