.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final b:[I

.field static final c:[I


# instance fields
.field a:Ljava/lang/Runnable;

.field final d:Ljava/util/HashMap;

.field e:Lcom/google/android/common/j;

.field private f:[Lcom/google/android/common/h;

.field private g:Lcom/google/android/common/f;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Landroid/view/GestureDetector;

.field private n:Landroid/widget/Scroller;

.field private o:Lcom/google/android/common/i;

.field private p:Z

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lcom/google/android/common/k;

.field private v:Lcom/google/android/common/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 599
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->b:[I

    .line 600
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->c:[I

    return-void

    .line 599
    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 600
    :array_1a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 482
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/h;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/google/android/common/k;

    new-instance v1, Lcom/google/android/common/b;

    invoke-direct {v1, p0}, Lcom/google/android/common/b;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/k;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/g;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    .line 138
    new-instance v0, Lcom/google/android/common/k;

    new-instance v1, Lcom/google/android/common/c;

    invoke-direct {v1, p0}, Lcom/google/android/common/c;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/k;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/g;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/k;

    .line 553
    new-instance v0, Lcom/google/android/common/e;

    invoke-direct {v0, p0}, Lcom/google/android/common/e;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lcom/google/android/common/j;

    invoke-direct {v0, p0}, Lcom/google/android/common/j;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:Lcom/google/android/common/j;

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->r:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 273
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->e:Lcom/google/android/common/j;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 492
    new-instance v0, Lcom/google/android/common/d;

    invoke-direct {v0, p0}, Lcom/google/android/common/d;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    .line 493
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:Landroid/widget/Scroller;

    .line 494
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->i:Landroid/content/Context;

    .line 496
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->s:I

    .line 498
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/h;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/h;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/common/SwipeySwitcher;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/android/common/h;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 537
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getHeight()I

    move-result v1

    .line 540
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 543
    invoke-interface {p1}, Lcom/google/android/common/h;->b()Landroid/view/View;

    move-result-object v3

    .line 544
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v2, v4}, Lcom/google/android/common/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 545
    mul-int v2, v0, p2

    const/4 v4, 0x0

    mul-int v5, v0, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 546
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aput-object p1, v0, p2

    .line 547
    return-void
.end method

.method private a(Z)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x190

    const/4 v2, 0x0

    .line 318
    if-eqz p1, :cond_29

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    add-int/lit8 v0, v0, 0x1

    :goto_9
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->j:I

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->e:Lcom/google/android/common/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/common/j;->a:Ljava/lang/Runnable;

    if-nez p1, :cond_2e

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->e:Lcom/google/android/common/j;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :goto_28
    return-void

    .line 318
    :cond_29
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2e
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->e:Lcom/google/android/common/j;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method private b(I)I
    .registers 4
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-nez v0, :cond_5

    .line 294
    :cond_4
    :goto_4
    return p1

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v0}, Lcom/google/android/common/f;->c()I

    move-result v0

    .line 286
    if-eqz v0, :cond_4

    .line 289
    if-gez p1, :cond_13

    .line 290
    neg-int v1, p1

    rem-int/2addr v1, v0

    sub-int p1, v0, v1

    .line 292
    :cond_13
    rem-int/2addr p1, v0

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/f;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    return-object v0
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v0, v0, v3

    .line 330
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 331
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aput-object v0, v1, v4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 334
    return-void
.end method

.method static synthetic b(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Z

    return v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    array-length v1, v0

    .line 819
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_b

    .line 820
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 825
    :cond_b
    return-void
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Z

    return v0
.end method

.method private d()F
    .registers 3

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v0

    .line 841
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    sub-int/2addr v1, v0

    .line 846
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 847
    return v0
.end method

.method static synthetic d(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v0}, Lcom/google/android/common/f;->c()I

    move-result v0

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/k;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    :cond_1c
    return-void
.end method

.method static synthetic f(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v0}, Lcom/google/android/common/f;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/k;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    :cond_1d
    return-void
.end method

.method static synthetic g(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/h;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/k;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/k;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->n:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->j:I

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-nez v0, :cond_5

    .line 985
    :cond_4
    :goto_4
    return-void

    .line 978
    :cond_5
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->j:I

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 980
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 982
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->b(I)I

    goto :goto_4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 809
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v0, v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/h;->b()Landroid/view/View;

    move-result-object v0

    .line 810
    :goto_f
    if-eqz v0, :cond_18

    .line 811
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    :goto_15
    return v0

    .line 809
    :cond_16
    const/4 v0, 0x0

    goto :goto_f

    .line 813
    :cond_18
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 853
    iget-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->p:Z

    if-eqz v1, :cond_6

    .line 875
    :goto_5
    return v0

    .line 857
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 858
    packed-switch v1, :pswitch_data_38

    .line 875
    :cond_d
    :goto_d
    :pswitch_d
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    goto :goto_5

    .line 860
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_d

    .line 863
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 864
    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->r:I

    sub-int v2, v1, v2

    .line 865
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 866
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/common/SwipeySwitcher;->s:I

    if-le v2, v3, :cond_d

    .line 867
    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->r:I

    .line 868
    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 870
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()V

    goto :goto_d

    .line 858
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_16
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
    .line 604
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    .line 605
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v0}, Lcom/google/android/common/f;->c()I

    move-result v0

    move v1, v0

    .line 607
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->removeAllViews()V

    .line 609
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    if-nez v0, :cond_1a

    .line 745
    :cond_16
    :goto_16
    return-void

    .line 605
    :cond_17
    const/4 v0, 0x0

    move v1, v0

    goto :goto_f

    .line 614
    :cond_1a
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->j:I

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    .line 617
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->d:Ljava/util/HashMap;

    .line 618
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 619
    const/4 v0, 0x0

    :goto_24
    const/4 v2, 0x3

    if-ge v0, v2, :cond_42

    .line 620
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v2, v2, v0

    .line 621
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v6, 0x0

    aput-object v6, v3, v0

    .line 623
    if-eqz v2, :cond_3f

    .line 624
    invoke-interface {v2}, Lcom/google/android/common/h;->c()Landroid/content/Intent;

    move-result-object v3

    .line 627
    if-eqz v3, :cond_3f

    .line 628
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 643
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_82

    sget-object v0, Lcom/google/android/common/SwipeySwitcher;->b:[I

    move-object v2, v0

    .line 644
    :goto_4f
    const/4 v0, 0x0

    move v3, v0

    :goto_51
    array-length v0, v2

    if-ge v3, v0, :cond_86

    .line 645
    aget v6, v2, v3

    .line 646
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 647
    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->b(I)I

    invoke-interface {v7}, Lcom/google/android/common/f;->b()Landroid/content/Intent;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_7e

    .line 649
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 652
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/h;

    .line 653
    if-eqz v0, :cond_7e

    .line 654
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aput-object v0, v7, v6

    .line 658
    const/4 v0, 0x1

    if-eq v6, v0, :cond_7e

    .line 659
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    .line 644
    :cond_7e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_51

    .line 643
    :cond_82
    sget-object v0, Lcom/google/android/common/SwipeySwitcher;->c:[I

    move-object v2, v0

    goto :goto_4f

    .line 665
    :cond_86
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_aa

    .line 666
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/h;

    .line 668
    invoke-interface {v0}, Lcom/google/android/common/h;->a()V

    goto :goto_94

    .line 677
    :cond_aa
    const/4 v0, -0x1

    move v3, v0

    :goto_ac
    const/4 v0, 0x1

    if-gt v3, v0, :cond_12e

    .line 678
    add-int/lit8 v5, v3, 0x1

    .line 679
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    aget-object v2, v0, v5

    .line 680
    if-nez v2, :cond_154

    .line 681
    const/4 v0, 0x0

    .line 683
    packed-switch v1, :pswitch_data_158

    .line 701
    const/4 v0, 0x0

    .line 704
    :cond_bc
    :goto_bc
    if-eqz v0, :cond_10e

    .line 705
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/common/k;->a(Landroid/content/Intent;)Lcom/google/android/common/h;

    move-result-object v0

    .line 717
    :cond_c5
    :goto_c5
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    add-int/lit8 v6, v3, 0x1

    aput-object v0, v2, v6

    .line 723
    :goto_cb
    invoke-direct {p0, v0, v5}, Lcom/google/android/common/SwipeySwitcher;->a(Lcom/google/android/common/h;I)V

    .line 677
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ac

    .line 687
    :pswitch_d2
    if-eqz v3, :cond_d6

    const/4 v0, 0x1

    goto :goto_bc

    :cond_d6
    const/4 v0, 0x0

    goto :goto_bc

    .line 694
    :pswitch_d8
    const/4 v6, -0x1

    if-ne v3, v6, :cond_f3

    .line 695
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v6, 0x2

    aget-object v0, v0, v6

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/common/k;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-nez v0, :cond_f1

    const/4 v0, 0x1

    goto :goto_bc

    :cond_f1
    const/4 v0, 0x0

    goto :goto_bc

    .line 696
    :cond_f3
    const/4 v6, 0x1

    if-ne v3, v6, :cond_bc

    .line 697
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->u:Lcom/google/android/common/k;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/google/android/common/k;->a(Lcom/google/android/common/h;)Z

    move-result v0

    if-nez v0, :cond_10c

    const/4 v0, 0x1

    goto :goto_bc

    :cond_10c
    const/4 v0, 0x0

    goto :goto_bc

    .line 709
    :cond_10e
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->h:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->b(I)I

    .line 710
    if-nez v3, :cond_152

    if-lez v1, :cond_152

    .line 711
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v0}, Lcom/google/android/common/f;->a()Lcom/google/android/common/h;

    move-result-object v2

    move-object v0, v2

    .line 713
    :goto_11f
    if-nez v0, :cond_c5

    .line 714
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->v:Lcom/google/android/common/k;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->g:Lcom/google/android/common/f;

    invoke-interface {v2}, Lcom/google/android/common/f;->b()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/common/k;->a(Landroid/content/Intent;)Lcom/google/android/common/h;

    move-result-object v0

    goto :goto_c5

    .line 728
    :cond_12e
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    if-eqz v0, :cond_136

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 733
    :cond_136
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_13f

    .line 734
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    .line 739
    :cond_13f
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Z

    if-eqz v0, :cond_16

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->q:Z

    goto/16 :goto_16

    :cond_152
    move-object v0, v2

    goto :goto_11f

    :cond_154
    move-object v0, v2

    goto/16 :goto_cb

    .line 683
    nop

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_d8
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    .line 511
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 512
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 513
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 514
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v3

    .line 515
    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_26

    .line 516
    invoke-virtual {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 518
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 520
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 523
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 525
    :cond_26
    invoke-virtual {p0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->setMeasuredDimension(II)V

    .line 526
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 884
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->p:Z

    if-eqz v0, :cond_7

    .line 944
    :cond_6
    :goto_6
    return v5

    .line 888
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 889
    packed-switch v0, :pswitch_data_7a

    goto :goto_6

    .line 891
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->r:I

    .line 893
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    .line 894
    iput-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 895
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()V

    goto :goto_6

    .line 898
    :pswitch_23
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    if-eqz v0, :cond_6

    .line 899
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 901
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    if-eqz v0, :cond_6

    .line 902
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->d()F

    .line 908
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    goto :goto_6

    .line 918
    :pswitch_3c
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    if-eqz v0, :cond_6

    .line 919
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->k:Z

    .line 920
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->m:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 921
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    array-length v3, v0

    move v0, v1

    :goto_4c
    if-ge v0, v3, :cond_53

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->f:[Lcom/google/android/common/h;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 924
    :cond_53
    if-nez v2, :cond_62

    .line 925
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->d()F

    move-result v0

    .line 927
    const/high16 v2, 0x3f00

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6b

    .line 928
    invoke-direct {p0, v5}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    .line 935
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    if-eqz v0, :cond_68

    .line 936
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->o:Lcom/google/android/common/i;

    .line 939
    :cond_68
    iput-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->t:Z

    goto :goto_6

    .line 929
    :cond_6b
    const/high16 v2, -0x4100

    cmpg-float v0, v0, v2

    if-gez v0, :cond_75

    .line 930
    invoke-direct {p0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    goto :goto_62

    .line 932
    :cond_75
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    goto :goto_62

    .line 889
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3c
        :pswitch_23
        :pswitch_3c
    .end packed-switch
.end method
