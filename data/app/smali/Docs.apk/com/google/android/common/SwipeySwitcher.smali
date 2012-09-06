.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;
.source "SwipeySwitcher.java"


# static fields
.field static final a:[I

.field static final b:[I


# instance fields
.field private a:I

.field private a:LabY;

.field private a:Lacb;

.field a:Lacc;

.field private a:Lacd;

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/GestureDetector;

.field private a:Landroid/widget/Scroller;

.field a:Ljava/lang/Runnable;

.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Laca;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private a:[Laca;

.field private b:I

.field private b:Lacd;

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 599
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->a:[I

    .line 600
    new-array v0, v1, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->b:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Laca;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    .line 132
    new-instance v0, Lacd;

    new-instance v1, LabU;

    invoke-direct {v1, p0}, LabU;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lacd;-><init>(Lcom/google/android/common/SwipeySwitcher;LabZ;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    .line 138
    new-instance v0, Lacd;

    new-instance v1, LabV;

    invoke-direct {v1, p0}, LabV;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lacd;-><init>(Lcom/google/android/common/SwipeySwitcher;LabZ;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lacd;

    .line 553
    new-instance v0, LabX;

    invoke-direct {v0, p0}, LabX;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lacc;

    invoke-direct {v0, p0}, Lacc;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Landroid/content/Context;)V

    .line 489
    return-void
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

    new-array v0, v0, [Laca;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    .line 132
    new-instance v0, Lacd;

    new-instance v1, LabU;

    invoke-direct {v1, p0}, LabU;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lacd;-><init>(Lcom/google/android/common/SwipeySwitcher;LabZ;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    .line 138
    new-instance v0, Lacd;

    new-instance v1, LabV;

    invoke-direct {v1, p0}, LabV;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lacd;-><init>(Lcom/google/android/common/SwipeySwitcher;LabZ;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lacd;

    .line 553
    new-instance v0, LabX;

    invoke-direct {v0, p0}, LabX;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/lang/Runnable;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/util/HashMap;

    .line 774
    new-instance v0, Lacc;

    invoke-direct {v0, p0}, Lacc;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Landroid/content/Context;)V

    .line 484
    return-void
.end method

.method private a()F
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

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    if-nez v0, :cond_5

    .line 294
    :cond_4
    :goto_4
    return p1

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v0}, LabY;->a()I

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

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    return p1
.end method

.method private a(Z)I
    .registers 3
    .parameter

    .prologue
    .line 298
    if-eqz p1, :cond_7

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    add-int/lit8 v0, v0, 0x1

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)LabY;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Lacd;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lacd;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private a()Landroid/view/GestureDetector;
    .registers 4

    .prologue
    .line 363
    new-instance v0, LabW;

    invoke-direct {v0, p0}, LabW;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    .line 478
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 273
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private a(Laca;I)V
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
    invoke-interface {p1}, Laca;->a()Landroid/view/View;

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
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aput-object p1, v0, p2

    .line 547
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()Landroid/view/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    .line 493
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/widget/Scroller;

    .line 494
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/content/Context;

    .line 496
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:I

    .line 498
    return-void
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;Laca;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/common/SwipeySwitcher;->a(Laca;I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(ZLjava/lang/Runnable;I)V

    .line 319
    return-void
.end method

.method private a(ZLjava/lang/Runnable;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)I

    move-result v0

    .line 303
    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:I

    .line 304
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    iput-object p2, v0, Lacc;->a:Ljava/lang/Runnable;

    .line 306
    if-nez p1, :cond_25

    .line 308
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 309
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :goto_24
    return-void

    .line 312
    :cond_25
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 313
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    return v0
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Z

    return p1
.end method

.method public static synthetic a(Lcom/google/android/common/SwipeySwitcher;)[Laca;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/common/SwipeySwitcher;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/google/android/common/SwipeySwitcher;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v0

    return v0
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v0, v0, v3

    .line 330
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 331
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aput-object v0, v1, v4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 334
    return-void
.end method

.method public static synthetic b(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->c:Z

    return p1
.end method

.method private c()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v0}, LabY;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 343
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lacd;->a(Laca;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 344
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    .line 347
    :cond_1d
    return-void
.end method

.method public static synthetic c(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->c()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 351
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v0}, LabY;->a()I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 352
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lacd;->a(Laca;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 353
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    .line 356
    :cond_1c
    return-void
.end method

.method public static synthetic d(Lcom/google/android/common/SwipeySwitcher;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->b()V

    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    array-length v1, v0

    .line 819
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_12

    .line 820
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v0

    .line 821
    if-eqz v2, :cond_f

    .line 822
    invoke-interface {v2}, Laca;->d()V

    .line 819
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 825
    :cond_12
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    array-length v1, v0

    .line 829
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_12

    .line 830
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v0

    .line 831
    if-eqz v2, :cond_f

    .line 832
    invoke-interface {v2}, Laca;->e()V

    .line 829
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 835
    :cond_12
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 800
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    .line 801
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v0, v0, v1

    invoke-interface {v0}, Laca;->a()Landroid/view/View;

    move-result-object v0

    .line 803
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->a()Landroid/view/View;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_b

    .line 811
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 853
    iget-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:Z

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
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    goto :goto_5

    .line 860
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_d

    .line 863
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 864
    iget v2, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    sub-int v2, v1, v2

    .line 865
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 866
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/common/SwipeySwitcher;->d:I

    if-le v2, v3, :cond_d

    .line 867
    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    .line 868
    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 870
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->e()V

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
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v0}, LabY;->a()I

    move-result v0

    move v1, v0

    .line 607
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->removeAllViews()V

    .line 609
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

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
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:I

    iput v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    .line 617
    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/util/HashMap;

    .line 618
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 619
    const/4 v0, 0x0

    :goto_24
    const/4 v2, 0x3

    if-ge v0, v2, :cond_43

    .line 620
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v0

    .line 621
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v6, 0x0

    aput-object v6, v3, v0

    .line 623
    if-nez v2, :cond_35

    .line 619
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 626
    :cond_35
    invoke-interface {v2}, Laca;->a()Landroid/content/Intent;

    move-result-object v3

    .line 627
    if-eqz v3, :cond_32

    .line 630
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 643
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_6c

    sget-object v0, Lcom/google/android/common/SwipeySwitcher;->a:[I

    move-object v2, v0

    .line 644
    :goto_50
    const/4 v0, 0x0

    move v3, v0

    :goto_52
    array-length v0, v2

    if-ge v3, v0, :cond_8e

    .line 645
    aget v6, v2, v3

    .line 646
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 647
    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v0

    invoke-interface {v7, v0}, LabY;->a(I)Landroid/content/Intent;

    move-result-object v0

    .line 648
    if-nez v0, :cond_70

    .line 644
    :cond_68
    :goto_68
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_52

    .line 643
    :cond_6c
    sget-object v0, Lcom/google/android/common/SwipeySwitcher;->b:[I

    move-object v2, v0

    goto :goto_50

    .line 651
    :cond_70
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 652
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 653
    if-eqz v0, :cond_68

    .line 656
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v7, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aput-object v0, v7, v6

    .line 658
    const/4 v0, 0x1

    if-eq v6, v0, :cond_68

    .line 659
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v0, v0, v6

    invoke-interface {v0}, Laca;->c()V

    goto :goto_68

    .line 665
    :cond_8e
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b2

    .line 666
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 667
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laca;

    .line 668
    invoke-interface {v0}, Laca;->a()V

    goto :goto_9c

    .line 677
    :cond_b2
    const/4 v0, -0x1

    move v3, v0

    :goto_b4
    const/4 v0, 0x1

    if-gt v3, v0, :cond_137

    .line 678
    add-int/lit8 v5, v3, 0x1

    .line 679
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v0, v5

    .line 680
    if-nez v2, :cond_163

    .line 681
    const/4 v0, 0x0

    .line 683
    packed-switch v1, :pswitch_data_166

    .line 701
    const/4 v0, 0x0

    .line 704
    :cond_c4
    :goto_c4
    if-eqz v0, :cond_116

    .line 705
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lacd;->a(Landroid/content/Intent;)Laca;

    move-result-object v0

    .line 717
    :cond_cd
    :goto_cd
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    add-int/lit8 v6, v3, 0x1

    aput-object v0, v2, v6

    .line 723
    :goto_d3
    invoke-direct {p0, v0, v5}, Lcom/google/android/common/SwipeySwitcher;->a(Laca;I)V

    .line 677
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b4

    .line 687
    :pswitch_da
    if-eqz v3, :cond_de

    const/4 v0, 0x1

    goto :goto_c4

    :cond_de
    const/4 v0, 0x0

    goto :goto_c4

    .line 694
    :pswitch_e0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_fb

    .line 695
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v6, 0x2

    aget-object v0, v0, v6

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lacd;->a(Laca;)Z

    move-result v0

    if-nez v0, :cond_f9

    const/4 v0, 0x1

    goto :goto_c4

    :cond_f9
    const/4 v0, 0x0

    goto :goto_c4

    .line 696
    :cond_fb
    const/4 v6, 0x1

    if-ne v3, v6, :cond_c4

    .line 697
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacd;

    iget-object v6, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Lacd;->a(Laca;)Z

    move-result v0

    if-nez v0, :cond_114

    const/4 v0, 0x1

    goto :goto_c4

    :cond_114
    const/4 v0, 0x0

    goto :goto_c4

    .line 709
    :cond_116
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v6

    .line 710
    if-nez v3, :cond_161

    if-lez v1, :cond_161

    .line 711
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v0, v6, p0}, LabY;->a(ILandroid/view/ViewGroup;)Laca;

    move-result-object v2

    move-object v0, v2

    .line 713
    :goto_128
    if-nez v0, :cond_cd

    .line 714
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Lacd;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-interface {v2, v6}, LabY;->a(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lacd;->a(Landroid/content/Intent;)Laca;

    move-result-object v0

    goto :goto_cd

    .line 728
    :cond_137
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    if-eqz v0, :cond_13f

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 733
    :cond_13f
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_14e

    .line 734
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Laca;->b()V

    .line 739
    :cond_14e
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:Z

    if-eqz v0, :cond_16

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->b:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->c:Z

    goto/16 :goto_16

    :cond_161
    move-object v0, v2

    goto :goto_128

    :cond_163
    move-object v0, v2

    goto/16 :goto_d3

    .line 683
    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_da
        :pswitch_e0
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
    .registers 7
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    const/high16 v4, -0x4100

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 884
    iget-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->b:Z

    if-eqz v2, :cond_b

    .line 944
    :cond_a
    :goto_a
    return v1

    .line 888
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 889
    packed-switch v2, :pswitch_data_8a

    goto :goto_a

    .line 891
    :pswitch_13
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/common/SwipeySwitcher;->c:I

    .line 893
    iput-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    .line 894
    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 895
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->e()V

    goto :goto_a

    .line 898
    :pswitch_27
    iget-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    if-eqz v2, :cond_a

    .line 899
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 901
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    if-eqz v2, :cond_a

    .line 902
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()F

    move-result v2

    .line 908
    cmpl-float v3, v2, v3

    if-gtz v3, :cond_40

    cmpg-float v2, v2, v4

    if-gez v2, :cond_41

    :cond_40
    move v0, v1

    .line 910
    :cond_41
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    invoke-interface {v2, v3, v0}, Lacb;->a(FZ)V

    goto :goto_a

    .line 918
    :pswitch_55
    iget-boolean v2, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    if-eqz v2, :cond_a

    .line 919
    iput-boolean v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 920
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 921
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->f()V

    .line 924
    if-nez v2, :cond_71

    .line 925
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()F

    move-result v2

    .line 927
    cmpl-float v3, v2, v3

    if-lez v3, :cond_7d

    .line 928
    invoke-direct {p0, v1}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    .line 935
    :cond_71
    :goto_71
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    if-eqz v2, :cond_7a

    .line 936
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    invoke-interface {v2}, Lacb;->a()V

    .line 939
    :cond_7a
    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->d:Z

    goto :goto_a

    .line 929
    :cond_7d
    cmpg-float v2, v2, v4

    if-gez v2, :cond_85

    .line 930
    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->a(Z)V

    goto :goto_71

    .line 932
    :cond_85
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->a()V

    goto :goto_71

    .line 889
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_55
        :pswitch_27
        :pswitch_55
    .end packed-switch
.end method

.method public setAdapter(LabY;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 952
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    .line 955
    if-nez p1, :cond_1e

    move v0, v1

    .line 956
    :goto_6
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1e

    .line 957
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1b

    .line 958
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    aget-object v2, v2, v0

    invoke-interface {v2}, Laca;->a()V

    .line 959
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->a:[Laca;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 956
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 963
    :cond_1e
    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->b:I

    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:I

    .line 964
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 967
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacc;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 968
    return-void
.end method

.method public setOnTouchCallback(Lacb;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    .line 502
    return-void
.end method

.method public setSelection(I)V
    .registers 5
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    if-nez v0, :cond_5

    .line 985
    :cond_4
    :goto_4
    return-void

    .line 978
    :cond_5
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->b:I

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Z

    .line 980
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 982
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    if-eqz v0, :cond_4

    .line 983
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->a:Lacb;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->a:LabY;

    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->a(I)I

    move-result v2

    invoke-interface {v1, v2}, LabY;->a(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lacb;->a(Landroid/content/Intent;)V

    goto :goto_4
.end method
