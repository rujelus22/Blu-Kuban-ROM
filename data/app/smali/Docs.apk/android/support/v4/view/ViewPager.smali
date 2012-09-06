.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# static fields
.field private static final a:Landroid/view/animation/Interpolator;

.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "LaY;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:[I


# instance fields
.field private a:F

.field private a:I

.field private a:LaB;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Parcelable;

.field private a:Landroid/view/VelocityTracker;

.field private a:Landroid/widget/Scroller;

.field private a:Lba;

.field private a:Lbb;

.field private a:Lbc;

.field private a:Lbk;

.field private a:Ljava/lang/ClassLoader;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LaY;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:F

.field private b:I

.field private b:Lbb;

.field private b:Lbk;

.field private b:Z

.field private c:F

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:I

.field private e:Z

.field private f:I

.field private f:Z

.field private g:I

.field private g:Z

.field private h:I

.field private h:Z

.field private i:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    .line 100
    new-instance v0, LaV;

    invoke-direct {v0}, LaV;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/Comparator;

    .line 106
    new-instance v0, LaW;

    invoke-direct {v0}, LaW;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 271
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->h:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    .line 272
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    .line 117
    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 118
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/os/Parcelable;

    .line 119
    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/lang/ClassLoader;

    .line 136
    iput v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 151
    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 172
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->h:Z

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 278
    return-void
.end method

.method private a(IFII)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1563
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->m:I

    if-le v0, v1, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->k:I

    if-le v0, v1, :cond_16

    .line 1564
    if-lez p3, :cond_13

    .line 1569
    :goto_12
    return p1

    .line 1564
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 1566
    :cond_16
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_12
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 298
    iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    if-ne v0, p1, :cond_5

    .line 306
    :cond_4
    :goto_4
    return-void

    .line 302
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->o:I

    .line 303
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    if-eqz v0, :cond_4

    .line 304
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    invoke-interface {v0, p1}, Lbb;->b(I)V

    goto :goto_4
.end method

.method private a(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1046
    add-int v3, p1, p3

    .line 1047
    if-lez p2, :cond_3d

    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1049
    add-int v1, p2, p4

    .line 1050
    div-int v4, v0, v1

    .line 1051
    rem-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1052
    int-to-float v1, v4

    add-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1053
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1054
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1056
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->timePassed()I

    move-result v4

    sub-int v5, v0, v4

    .line 1057
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    iget v4, p0, Landroid/support/v4/view/ViewPager;->a:I

    mul-int/2addr v3, v4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1066
    :cond_3c
    :goto_3c
    return-void

    .line 1060
    :cond_3d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    mul-int/2addr v0, v3

    .line 1061
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_3c

    .line 1062
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1063
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_3c
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 1751
    invoke-static {p1}, Law;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1752
    invoke-static {p1, v0}, Law;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1753
    iget v2, p0, Landroid/support/v4/view/ViewPager;->j:I

    if-ne v1, v2, :cond_24

    .line 1756
    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 1757
    :goto_f
    invoke-static {p1, v0}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1758
    invoke-static {p1, v0}, Law;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1759
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    .line 1760
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1763
    :cond_24
    return-void

    .line 1756
    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1776
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->b:Z

    if-eq v0, p1, :cond_6

    .line 1777
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->b:Z

    .line 1788
    :cond_6
    return-void
.end method

.method public static synthetic a()[I
    .registers 1

    .prologue
    .line 80
    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private b(I)V
    .registers 6
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v0, v1

    .line 1181
    div-int v1, p1, v0

    .line 1182
    rem-int v2, p1, v0

    .line 1183
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 1185
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->i:Z

    .line 1186
    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1187
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->i:Z

    if-nez v0, :cond_21

    .line 1188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1191
    :cond_21
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 354
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 355
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LaZ;

    .line 357
    iget-boolean v0, v0, LaZ;->a:Z

    if-nez v0, :cond_1b

    .line 358
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 354
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 362
    :cond_1f
    return-void
.end method

.method private e()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1256
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->d:Z

    .line 1257
    if-eqz v0, :cond_2b

    .line 1259
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1260
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1261
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1262
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1263
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1264
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1265
    if-ne v1, v4, :cond_25

    if-eq v3, v5, :cond_28

    .line 1266
    :cond_25
    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1268
    :cond_28
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1270
    :cond_2b
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->c:Z

    .line 1271
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->d:Z

    move v1, v2

    move v3, v0

    .line 1272
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4c

    .line 1273
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 1274
    iget-boolean v4, v0, LaY;->a:Z

    if-eqz v4, :cond_48

    .line 1275
    const/4 v3, 0x1

    .line 1276
    iput-boolean v2, v0, LaY;->a:Z

    .line 1272
    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    .line 1279
    :cond_4c
    if-eqz v3, :cond_51

    .line 1280
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 1282
    :cond_51
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1766
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1767
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->f:Z

    .line 1769
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 1770
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1771
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    .line 1773
    :cond_11
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 6
    .parameter

    .prologue
    .line 584
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 585
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 586
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    return v0
.end method

.method public a()LaB;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    return-object v0
.end method

.method a(Landroid/view/View;)LaY;
    .registers 6
    .parameter

    .prologue
    .line 933
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 934
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 935
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v3, v0, LaY;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, LaB;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 939
    :goto_1c
    return-object v0

    .line 933
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 939
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method a(Lbb;)Lbb;
    .registers 3
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    .line 473
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    .line 474
    return-object v0
.end method

.method a()V
    .registers 4

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 282
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 285
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->a:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    .line 286
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 287
    invoke-static {v1}, LaQ;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 288
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->k:I

    .line 289
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->l:I

    .line 290
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    .line 291
    new-instance v1, Lbk;

    invoke-direct {v1, v0}, Lbk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    .line 293
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 294
    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->m:I

    .line 295
    return-void
.end method

.method protected a(IFI)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1207
    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    if-lez v0, :cond_75

    .line 1208
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1209
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1211
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1212
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1213
    const/4 v0, 0x0

    move v3, v0

    :goto_1a
    if-ge v3, v6, :cond_75

    .line 1214
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1215
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LaZ;

    .line 1216
    iget-boolean v8, v0, LaZ;->a:Z

    if-nez v8, :cond_34

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1213
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_1a

    .line 1218
    :cond_34
    iget v0, v0, LaZ;->a:I

    and-int/lit8 v0, v0, 0x7

    .line 1220
    packed-switch v0, :pswitch_data_8c

    :pswitch_3b
    move v0, v1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1237
    :goto_3f
    add-int/2addr v0, v4

    .line 1239
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1240
    if-eqz v0, :cond_2d

    .line 1241
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2d

    .line 1226
    :pswitch_4b
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 1227
    goto :goto_3f

    .line 1229
    :pswitch_55
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1231
    goto :goto_3f

    .line 1233
    :pswitch_65
    sub-int v0, v5, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_3f

    .line 1246
    :cond_75
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    if-eqz v0, :cond_7e

    .line 1247
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    invoke-interface {v0, p1, p2, p3}, Lbb;->a(IFI)V

    .line 1249
    :cond_7e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    if-eqz v0, :cond_87

    .line 1250
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    invoke-interface {v0, p1, p2, p3}, Lbb;->a(IFI)V

    .line 1252
    :cond_87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->i:Z

    .line 1253
    return-void

    .line 1220
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_3b
        :pswitch_4b
        :pswitch_3b
        :pswitch_65
    .end packed-switch
.end method

.method a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 647
    new-instance v0, LaY;

    invoke-direct {v0}, LaY;-><init>()V

    .line 648
    iput p1, v0, LaY;->a:I

    .line 649
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v1, p0, p1}, LaB;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LaY;->a:Ljava/lang/Object;

    .line 650
    if-gez p2, :cond_17

    .line 651
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :goto_16
    return-void

    .line 653
    :cond_17
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_16
.end method

.method a(III)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 607
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    .line 609
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 644
    :goto_d
    return-void

    .line 612
    :cond_e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 614
    sub-int v3, p1, v1

    .line 615
    sub-int v4, p2, v2

    .line 616
    if-nez v3, :cond_25

    if-nez v4, :cond_25

    .line 617
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 618
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto :goto_d

    .line 622
    :cond_25
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 623
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->d:Z

    .line 624
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 626
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    .line 627
    div-int/lit8 v5, v0, 0x2

    .line 628
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 629
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 633
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 634
    if-lez v6, :cond_6c

    .line 635
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 640
    :goto_5d
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 642
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 643
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    goto :goto_d

    .line 637
    :cond_6c
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float v0, v5, v0

    .line 638
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5d
.end method

.method a(IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 406
    return-void
.end method

.method a(IZZI)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0}, LaB;->a()I

    move-result v0

    if-gtz v0, :cond_12

    .line 410
    :cond_e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 453
    :cond_11
    :goto_11
    return-void

    .line 413
    :cond_12
    if-nez p3, :cond_24

    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    .line 414
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_11

    .line 417
    :cond_24
    if-gez p1, :cond_4b

    move p1, v1

    .line 422
    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 423
    iget v2, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_34

    iget v2, p0, Landroid/support/v4/view/ViewPager;->a:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_5c

    :cond_34
    move v2, v1

    .line 427
    :goto_35
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 428
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    iput-boolean v3, v0, LaY;->a:Z

    .line 427
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 419
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0}, LaB;->a()I

    move-result v0

    if-lt p1, v0, :cond_27

    .line 420
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0}, LaB;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_27

    .line 431
    :cond_5c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-eq v0, p1, :cond_8a

    move v0, v3

    .line 432
    :goto_61
    iput p1, p0, Landroid/support/v4/view/ViewPager;->a:I

    .line 433
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 434
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    .line 435
    if-eqz p2, :cond_8c

    .line 436
    invoke-virtual {p0, v2, v1, p4}, Landroid/support/v4/view/ViewPager;->a(III)V

    .line 437
    if-eqz v0, :cond_7e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    if-eqz v1, :cond_7e

    .line 438
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    invoke-interface {v1, p1}, Lbb;->a(I)V

    .line 440
    :cond_7e
    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    if-eqz v0, :cond_11

    .line 441
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    invoke-interface {v0, p1}, Lbb;->a(I)V

    goto :goto_11

    :cond_8a
    move v0, v1

    .line 431
    goto :goto_61

    .line 444
    :cond_8c
    if-eqz v0, :cond_97

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    if-eqz v3, :cond_97

    .line 445
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    invoke-interface {v3, p1}, Lbb;->a(I)V

    .line 447
    :cond_97
    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    if-eqz v0, :cond_a2

    .line 448
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->b:Lbb;

    invoke-interface {v0, p1}, Lbb;->a(I)V

    .line 450
    :cond_a2
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 451
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_11
.end method

.method a(Lba;)V
    .registers 2
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->a:Lba;

    .line 375
    return-void
.end method

.method a()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1904
    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-lez v1, :cond_d

    .line 1905
    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1908
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(I)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 1865
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1866
    if-ne v0, p0, :cond_b

    const/4 v0, 0x0

    .line 1868
    :cond_b
    const/4 v1, 0x0

    .line 1870
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1872
    if-eqz v2, :cond_51

    if-eq v2, v0, :cond_51

    .line 1873
    if-ne p1, v3, :cond_39

    .line 1876
    if-eqz v0, :cond_34

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v1, v0, :cond_34

    .line 1877
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()Z

    move-result v0

    .line 1897
    :goto_2a
    if-eqz v0, :cond_33

    .line 1898
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 1900
    :cond_33
    return v0

    .line 1879
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_2a

    .line 1881
    :cond_39
    if-ne p1, v4, :cond_65

    .line 1884
    if-eqz v0, :cond_4c

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_4c

    .line 1885
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()Z

    move-result v0

    goto :goto_2a

    .line 1887
    :cond_4c
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_2a

    .line 1890
    :cond_51
    if-eq p1, v3, :cond_56

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5b

    .line 1892
    :cond_56
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()Z

    move-result v0

    goto :goto_2a

    .line 1893
    :cond_5b
    if-eq p1, v4, :cond_60

    const/4 v0, 0x2

    if-ne p1, v0, :cond_65

    .line 1895
    :cond_60
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->b()Z

    move-result v0

    goto :goto_2a

    :cond_65
    move v0, v1

    goto :goto_2a
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1839
    const/4 v0, 0x0

    .line 1840
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    .line 1841
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    .line 1861
    :cond_f
    :goto_f
    return v0

    .line 1843
    :sswitch_10
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result v0

    goto :goto_f

    .line 1846
    :sswitch_17
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result v0

    goto :goto_f

    .line 1849
    :sswitch_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f

    .line 1852
    invoke-static {p1}, Lar;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1853
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result v0

    goto :goto_f

    .line 1854
    :cond_30
    invoke-static {p1, v3}, Lar;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1855
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(I)Z

    move-result v0

    goto :goto_f

    .line 1841
    nop

    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_10
        0x16 -> :sswitch_17
        0x3d -> :sswitch_1e
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1802
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    .line 1803
    check-cast v6, Landroid/view/ViewGroup;

    .line 1804
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 1805
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 1806
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1808
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    .line 1811
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1812
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

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1821
    :cond_55
    :goto_55
    return v2

    .line 1808
    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    .line 1821
    :cond_5a
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, LaJ;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_63
    const/4 v2, 0x0

    goto :goto_55
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1924
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1926
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 1928
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_2f

    .line 1929
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 1930
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1931
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 1932
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v4

    .line 1933
    if-eqz v4, :cond_2c

    iget v4, v4, LaY;->a:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v4, v5, :cond_2c

    .line 1934
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1929
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1944
    :cond_2f
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    .line 1950
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1961
    :cond_3f
    :goto_3f
    return-void

    .line 1953
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

    .line 1957
    :cond_51
    if-eqz p1, :cond_3f

    .line 1958
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1971
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1972
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1973
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 1974
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v2

    .line 1975
    if-eqz v2, :cond_20

    iget v2, v2, LaY;->a:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v2, v3, :cond_20

    .line 1976
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1971
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1980
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 908
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 909
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    .line 911
    check-cast v0, LaZ;

    .line 912
    iget-boolean v2, v0, LaZ;->a:Z

    instance-of v3, p1, LaX;

    or-int/2addr v2, v3

    iput-boolean v2, v0, LaZ;->a:Z

    .line 913
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->a:Z

    if-eqz v2, :cond_31

    .line 914
    if-eqz v0, :cond_26

    iget-boolean v0, v0, LaZ;->a:Z

    if-eqz v0, :cond_26

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_26
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 918
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 930
    :goto_30
    return-void

    .line 920
    :cond_31
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_30

    :cond_35
    move-object v1, p3

    goto :goto_a
.end method

.method b(Landroid/view/View;)LaY;
    .registers 4
    .parameter

    .prologue
    .line 944
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 945
    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    .line 946
    :cond_c
    const/4 v0, 0x0

    .line 950
    :goto_d
    return-object v0

    .line 948
    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 950
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v0

    goto :goto_d
.end method

.method public b()V
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 660
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_44

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v3}, LaB;->a()I

    move-result v3

    if-ge v0, v3, :cond_44

    move v0, v1

    :goto_1b
    move v3, v2

    move v4, v2

    move v5, v6

    move v7, v0

    .line 664
    :goto_1f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_90

    .line 665
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 666
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v9, v0, LaY;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, LaB;->a(Ljava/lang/Object;)I

    move-result v8

    .line 668
    if-ne v8, v6, :cond_46

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 664
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1f

    :cond_44
    move v0, v2

    .line 660
    goto :goto_1b

    .line 672
    :cond_46
    const/4 v9, -0x2

    if-ne v8, v9, :cond_7e

    .line 673
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 674
    add-int/lit8 v3, v3, -0x1

    .line 676
    if-nez v4, :cond_58

    .line 677
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v4, p0}, LaB;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 681
    :cond_58
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget v8, v0, LaY;->a:I

    iget-object v9, v0, LaY;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, LaB;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 684
    iget v7, p0, Landroid/support/v4/view/ViewPager;->a:I

    iget v0, v0, LaY;->a:I

    if-ne v7, v0, :cond_b3

    .line 686
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v5}, LaB;->a()I

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

    goto :goto_3d

    .line 691
    :cond_7e
    iget v9, v0, LaY;->a:I

    if-eq v9, v8, :cond_ae

    .line 692
    iget v7, v0, LaY;->a:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v7, v9, :cond_89

    move v5, v8

    .line 697
    :cond_89
    iput v8, v0, LaY;->a:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 698
    goto :goto_3d

    .line 702
    :cond_90
    if-eqz v4, :cond_97

    .line 703
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0, p0}, LaB;->b(Landroid/view/ViewGroup;)V

    .line 706
    :cond_97
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->a:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 708
    if-ltz v5, :cond_ac

    .line 710
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 713
    :goto_a3
    if-eqz v1, :cond_ab

    .line 714
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 717
    :cond_ab
    return-void

    :cond_ac
    move v1, v7

    goto :goto_a3

    :cond_ae
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_3d

    :cond_b3
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_3d
.end method

.method b()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1912
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v1, :cond_19

    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v2}, LaB;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_19

    .line 1913
    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1916
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method c()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-nez v0, :cond_8

    .line 821
    :cond_7
    return-void

    .line 728
    :cond_8
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->c:Z

    if-nez v0, :cond_7

    .line 736
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 740
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0, p0}, LaB;->a(Landroid/view/ViewGroup;)V

    .line 742
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 743
    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 744
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v1}, LaB;->a()I

    move-result v1

    .line 745
    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v1, v2

    move v3, v4

    .line 751
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7e

    .line 752
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 753
    iget v8, v0, LaY;->a:I

    if-lt v8, v5, :cond_49

    iget v8, v0, LaY;->a:I

    if-le v8, v7, :cond_65

    :cond_49
    iget-boolean v8, v0, LaY;->a:Z

    if-nez v8, :cond_65

    .line 755
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 756
    add-int/lit8 v1, v1, -0x1

    .line 757
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget v8, v0, LaY;->a:I

    iget-object v9, v0, LaY;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v8, v9}, LaB;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    move v3, v1

    .line 773
    :goto_5e
    iget v1, v0, LaY;->a:I

    .line 751
    add-int/lit8 v0, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_31

    .line 758
    :cond_65
    if-ge v3, v7, :cond_119

    iget v8, v0, LaY;->a:I

    if-le v8, v5, :cond_119

    .line 762
    add-int/lit8 v3, v3, 0x1

    .line 763
    if-ge v3, v5, :cond_70

    move v3, v5

    .line 766
    :cond_70
    :goto_70
    if-gt v3, v7, :cond_119

    iget v8, v0, LaY;->a:I

    if-ge v3, v8, :cond_119

    .line 768
    invoke-virtual {p0, v3, v1}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 777
    :cond_7e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a6

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    iget v0, v0, LaY;->a:I

    .line 778
    :goto_98
    if-ge v0, v7, :cond_aa

    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 780
    if-le v0, v5, :cond_a8

    .line 781
    :goto_9e
    if-gt v0, v7, :cond_aa

    .line 783
    invoke-virtual {p0, v0, v4}, Landroid/support/v4/view/ViewPager;->a(II)V

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_a6
    move v0, v4

    .line 777
    goto :goto_98

    :cond_a8
    move v0, v5

    .line 780
    goto :goto_9e

    :cond_aa
    move v1, v2

    .line 796
    :goto_ab
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_117

    .line 797
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    iget v0, v0, LaY;->a:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v0, v3, :cond_111

    .line 798
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 802
    :goto_c9
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget v3, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-eqz v0, :cond_115

    iget-object v0, v0, LaY;->a:Ljava/lang/Object;

    :goto_d1
    invoke-virtual {v1, p0, v3, v0}, LaB;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 804
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0, p0}, LaB;->b(Landroid/view/ViewGroup;)V

    .line 806
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 807
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_e9

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)LaY;

    move-result-object v6

    .line 809
    :cond_e9
    if-eqz v6, :cond_f1

    iget v0, v6, LaY;->a:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-eq v0, v1, :cond_7

    .line 810
    :cond_f1
    :goto_f1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 811
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v1

    .line 813
    if-eqz v1, :cond_10e

    iget v1, v1, LaY;->a:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v1, v3, :cond_10e

    .line 814
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 810
    :cond_10e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f1

    .line 796
    :cond_111
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ab

    :cond_115
    move-object v0, v6

    .line 802
    goto :goto_d1

    :cond_117
    move-object v0, v6

    goto :goto_c9

    :cond_119
    move v3, v1

    goto/16 :goto_5e
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter

    .prologue
    .line 2049
    instance-of v0, p1, LaZ;

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

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1157
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1159
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1160
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1161
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1162
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1164
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_2e

    .line 1165
    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1166
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->b(I)V

    .line 1170
    :cond_2e
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1177
    :goto_31
    return-void

    .line 1176
    :cond_32
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    goto :goto_31
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2022
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2023
    :goto_6
    if-ge v1, v2, :cond_25

    .line 2024
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2025
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_26

    .line 2026
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v4

    .line 2027
    if-eqz v4, :cond_26

    iget v4, v4, LaY;->a:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v4, v5, :cond_26

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2029
    const/4 v0, 0x1

    .line 2034
    :cond_25
    return v0

    .line 2023
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1574
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1575
    const/4 v0, 0x0

    .line 1577
    invoke-static {p0}, LaJ;->a(Landroid/view/View;)I

    move-result v2

    .line 1578
    if-eqz v2, :cond_19

    if-ne v2, v1, :cond_aa

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v2, :cond_aa

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v2}, LaB;->a()I

    move-result v2

    if-le v2, v1, :cond_aa

    .line 1581
    :cond_19
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {v2}, Lbk;->a()Z

    move-result v2

    if-nez v2, :cond_56

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1583
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1585
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1586
    neg-int v4, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1587
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lbk;->a(II)V

    .line 1588
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {v3, p1}, Lbk;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1589
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1591
    :cond_56
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v2}, Lbk;->a()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 1592
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1593
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1594
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1595
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v5, :cond_7e

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v1}, LaB;->a()I

    move-result v1

    .line 1597
    :cond_7e
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1598
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v1, v1

    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v6, v3

    mul-int/2addr v1, v6

    iget v6, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1600
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v1, v4, v3}, Lbk;->a(II)V

    .line 1601
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v1, p1}, Lbk;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1602
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1609
    :cond_a4
    :goto_a4
    if-eqz v0, :cond_a9

    .line 1611
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 1613
    :cond_a9
    return-void

    .line 1605
    :cond_aa
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {v1}, Lbk;->a()V

    .line 1606
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v1}, Lbk;->a()V

    goto :goto_a4
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 572
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 573
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    .line 574
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 577
    :cond_14
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 2039
    new-instance v0, LaZ;

    invoke-direct {v0}, LaZ;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter

    .prologue
    .line 2054
    new-instance v0, LaZ;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LaZ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter

    .prologue
    .line 2044
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 955
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->h:Z

    .line 957
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    .line 1617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1620
    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:I

    if-lez v0, :cond_2d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    .line 1621
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1622
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 1623
    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v2, v1

    rem-int v2, v0, v2

    .line 1624
    if-eqz v2, :cond_2d

    .line 1626
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1627
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->d:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/support/v4/view/ViewPager;->e:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1629
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1632
    :cond_2d
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1295
    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    if-ne v0, v6, :cond_21

    .line 1298
    :cond_e
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1299
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->f:Z

    .line 1300
    iput v3, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1301
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_20

    .line 1302
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    .line 1415
    :cond_20
    :goto_20
    return v2

    .line 1310
    :cond_21
    if-eqz v0, :cond_2d

    .line 1311
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-eqz v1, :cond_29

    move v2, v6

    .line 1313
    goto :goto_20

    .line 1315
    :cond_29
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->f:Z

    if-nez v1, :cond_20

    .line 1321
    :cond_2d
    sparse-switch v0, :sswitch_data_c8

    .line 1402
    :cond_30
    :goto_30
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-nez v0, :cond_43

    .line 1405
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3e

    .line 1406
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    .line 1408
    :cond_3e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1415
    :cond_43
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->e:Z

    goto :goto_20

    .line 1332
    :sswitch_46
    iget v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1333
    if-eq v0, v3, :cond_30

    .line 1338
    invoke-static {p1, v0}, Law;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1339
    invoke-static {p1, v0}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1340
    iget v1, p0, Landroid/support/v4/view/ViewPager;->b:F

    sub-float v1, v7, v1

    .line 1341
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1342
    invoke-static {p1, v0}, Law;->b(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 1343
    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1346
    float-to-int v3, v1

    float-to-int v4, v7

    float-to-int v5, v9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1348
    iput v7, p0, Landroid/support/v4/view/ViewPager;->b:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->a:F

    .line 1349
    iput v9, p0, Landroid/support/v4/view/ViewPager;->c:F

    goto :goto_20

    .line 1352
    :cond_78
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    int-to-float v0, v0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_8e

    cmpl-float v0, v8, v10

    if-lez v0, :cond_8e

    .line 1354
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1355
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1356
    iput v7, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1357
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_30

    .line 1359
    :cond_8e
    iget v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_30

    .line 1365
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->f:Z

    goto :goto_30

    .line 1376
    :sswitch_98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->a:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->c:F

    .line 1378
    invoke-static {p1, v2}, Law;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1380
    iget v0, p0, Landroid/support/v4/view/ViewPager;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ba

    .line 1382
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1383
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->f:Z

    .line 1384
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_30

    .line 1386
    :cond_ba
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1387
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1388
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->f:Z

    goto/16 :goto_30

    .line 1398
    :sswitch_c3
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_30

    .line 1321
    :sswitch_data_c8
    .sparse-switch
        0x0 -> :sswitch_98
        0x2 -> :sswitch_46
        0x6 -> :sswitch_c3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1070
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 1071
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 1072
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1075
    sub-int v10, p4, p2

    .line 1076
    sub-int v11, p5, p3

    .line 1077
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1083
    const/4 v4, 0x0

    .line 1085
    const/4 v1, 0x0

    move v8, v1

    :goto_2c
    if-ge v8, v9, :cond_ef

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1087
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_ea

    .line 1088
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LaZ;

    .line 1092
    iget-boolean v7, v1, LaZ;->a:Z

    if-eqz v7, :cond_cc

    .line 1093
    iget v7, v1, LaZ;->a:I

    and-int/lit8 v7, v7, 0x7

    .line 1094
    iget v1, v1, LaZ;->a:I

    and-int/lit8 v14, v1, 0x70

    .line 1095
    packed-switch v7, :pswitch_data_104

    :pswitch_51
    move v7, v6

    .line 1112
    :goto_52
    sparse-switch v14, :sswitch_data_112

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1129
    :goto_5b
    add-int/2addr v7, v12

    .line 1130
    add-int/lit8 v4, v4, 0x1

    .line 1131
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

    .line 1085
    :goto_70
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_2c

    .line 1101
    :pswitch_78
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1102
    goto :goto_52

    .line 1104
    :pswitch_80
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1106
    goto :goto_52

    .line 1108
    :pswitch_8e
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1109
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_52

    .line 1118
    :sswitch_9c
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1119
    goto :goto_5b

    .line 1121
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

    .line 1123
    goto :goto_5b

    .line 1125
    :sswitch_ba
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    .line 1134
    :cond_cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v1

    if-eqz v1, :cond_ea

    .line 1135
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v7, v10

    iget v1, v1, LaY;->a:I

    mul-int/2addr v1, v7

    .line 1136
    add-int/2addr v1, v6

    .line 1141
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

    .line 1147
    :cond_ef
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->d:I

    .line 1148
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->e:I

    .line 1149
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->n:I

    .line 1150
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->h:Z

    .line 1151
    return-void

    .line 1095
    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_80
        :pswitch_51
        :pswitch_78
        :pswitch_51
        :pswitch_8e
    .end packed-switch

    .line 1112
    :sswitch_data_112
    .sparse-switch
        0x10 -> :sswitch_a8
        0x30 -> :sswitch_9c
        0x50 -> :sswitch_ba
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 970
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 971
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 978
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    .line 979
    const/4 v0, 0x0

    move v6, v0

    :goto_31
    if-ge v6, v7, :cond_ca

    .line 980
    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 981
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10f

    .line 982
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LaZ;

    .line 983
    if-eqz v0, :cond_10f

    iget-boolean v1, v0, LaZ;->a:Z

    if-eqz v1, :cond_10f

    .line 984
    iget v1, v0, LaZ;->a:I

    and-int/lit8 v9, v1, 0x7

    .line 985
    iget v1, v0, LaZ;->a:I

    and-int/lit8 v4, v1, 0x70

    .line 986
    const-string v1, "ViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gravity: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, v0, LaZ;->a:I

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

    .line 987
    const/high16 v1, -0x8000

    .line 988
    const/high16 v0, -0x8000

    .line 989
    const/16 v5, 0x30

    if-eq v4, v5, :cond_8d

    const/16 v5, 0x50

    if-ne v4, v5, :cond_b5

    :cond_8d
    const/4 v4, 0x1

    move v5, v4

    .line 990
    :goto_8f
    const/4 v4, 0x3

    if-eq v9, v4, :cond_95

    const/4 v4, 0x5

    if-ne v9, v4, :cond_b8

    :cond_95
    const/4 v4, 0x1

    .line 992
    :goto_96
    if-eqz v5, :cond_ba

    .line 993
    const/high16 v1, 0x4000

    .line 998
    :cond_9a
    :goto_9a
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 999
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1000
    invoke-virtual {v8, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1002
    if-eqz v5, :cond_bf

    .line 1003
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    move v1, v3

    .line 979
    :goto_ae
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v3, v1

    move v2, v0

    goto/16 :goto_31

    .line 989
    :cond_b5
    const/4 v4, 0x0

    move v5, v4

    goto :goto_8f

    .line 990
    :cond_b8
    const/4 v4, 0x0

    goto :goto_96

    .line 994
    :cond_ba
    if-eqz v4, :cond_9a

    .line 995
    const/high16 v0, 0x4000

    goto :goto_9a

    .line 1004
    :cond_bf
    if-eqz v4, :cond_10f

    .line 1005
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v3, v0

    move v1, v0

    move v0, v2

    goto :goto_ae

    .line 1011
    :cond_ca
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    .line 1012
    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->g:I

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 1016
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->a:Z

    .line 1020
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1021
    const/4 v0, 0x0

    move v1, v0

    :goto_e9
    if-ge v1, v2, :cond_10e

    .line 1022
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1023
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_10a

    .line 1027
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LaZ;

    .line 1028
    if-eqz v0, :cond_103

    iget-boolean v0, v0, LaZ;->a:Z

    if-nez v0, :cond_10a

    .line 1029
    :cond_103
    iget v0, p0, Landroid/support/v4/view/ViewPager;->f:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->g:I

    invoke-virtual {v3, v0, v4}, Landroid/view/View;->measure(II)V

    .line 1021
    :cond_10a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e9

    .line 1033
    :cond_10e
    return-void

    :cond_10f
    move v0, v2

    move v1, v3

    goto :goto_ae
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1991
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1992
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2c

    move v1, v2

    move v3, v4

    .line 2001
    :goto_d
    if-eq v3, v0, :cond_33

    .line 2002
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2004
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)LaY;

    move-result-object v6

    .line 2005
    if-eqz v6, :cond_31

    iget v6, v6, LaY;->a:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->a:I

    if-ne v6, v7, :cond_31

    .line 2006
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2012
    :goto_2b
    return v2

    .line 1997
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 1999
    goto :goto_d

    .line 2001
    :cond_31
    add-int/2addr v3, v1

    goto :goto_d

    :cond_33
    move v2, v4

    .line 2012
    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter

    .prologue
    .line 888
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 904
    :goto_7
    return-void

    .line 893
    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 894
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 896
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v0, :cond_26

    .line 897
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, LaB;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 898
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_7

    .line 900
    :cond_26
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 901
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/os/Parcelable;

    .line 902
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->a:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 877
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 878
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 879
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:I

    .line 880
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v0, :cond_19

    .line 881
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0}, LaB;->a()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->a:Landroid/os/Parcelable;

    .line 883
    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1040
    if-eq p1, p3, :cond_c

    .line 1041
    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->c:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1043
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1420
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->g:Z

    if-eqz v1, :cond_9

    move v0, v4

    .line 1558
    :cond_8
    :goto_8
    return v0

    .line 1427
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-nez v1, :cond_8

    .line 1433
    :cond_15
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v1}, LaB;->a()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1438
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2b

    .line 1439
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    .line 1441
    :cond_2b
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1446
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1a2

    .line 1555
    :cond_39
    :goto_39
    :pswitch_39
    if-eqz v0, :cond_3e

    .line 1556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    :cond_3e
    move v0, v4

    .line 1558
    goto :goto_8

    .line 1452
    :pswitch_40
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->a:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1456
    invoke-static {p1, v0}, Law;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    goto :goto_39

    .line 1460
    :pswitch_52
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-nez v1, :cond_88

    .line 1461
    iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1462
    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1463
    iget v3, p0, Landroid/support/v4/view/ViewPager;->b:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1464
    invoke-static {p1, v1}, Law;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1465
    iget v5, p0, Landroid/support/v4/view/ViewPager;->c:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1467
    iget v5, p0, Landroid/support/v4/view/ViewPager;->i:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_88

    cmpl-float v1, v3, v1

    if-lez v1, :cond_88

    .line 1469
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->e:Z

    .line 1470
    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1471
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 1472
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1475
    :cond_88
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-eqz v1, :cond_39

    .line 1477
    iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1479
    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1480
    iget v2, p0, Landroid/support/v4/view/ViewPager;->b:F

    sub-float/2addr v2, v1

    .line 1481
    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1482
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 1483
    add-float v3, v1, v2

    .line 1484
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1485
    iget v1, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int v6, v5, v1

    .line 1487
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v1}, LaB;->a()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 1488
    iget v1, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1489
    iget v2, p0, Landroid/support/v4/view/ViewPager;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    .line 1491
    cmpg-float v8, v3, v1

    if-gez v8, :cond_f3

    .line 1492
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_d8

    .line 1493
    neg-float v0, v3

    .line 1494
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lbk;->a(F)Z

    move-result v0

    :cond_d8
    move v9, v1

    move v1, v0

    move v0, v9

    .line 1505
    :goto_db
    iget v2, p0, Landroid/support/v4/view/ViewPager;->b:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1506
    float-to-int v2, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1507
    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)V

    move v0, v1

    .line 1508
    goto/16 :goto_39

    .line 1497
    :cond_f3
    cmpl-float v1, v3, v2

    if-lez v1, :cond_19d

    .line 1498
    mul-int v1, v7, v6

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_108

    .line 1499
    sub-float v0, v3, v2

    .line 1500
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lbk;->a(F)Z

    move-result v0

    :cond_108
    move v1, v0

    move v0, v2

    .line 1502
    goto :goto_db

    .line 1511
    :pswitch_10b
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-eqz v1, :cond_39

    .line 1512
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/view/VelocityTracker;

    .line 1513
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1514
    iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-static {v0, v1}, LaE;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1516
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->c:Z

    .line 1517
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->c:I

    add-int/2addr v1, v2

    .line 1518
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1519
    div-int v3, v2, v1

    .line 1520
    rem-int/2addr v2, v1

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 1521
    iget v2, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-static {p1, v2}, Law;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1523
    invoke-static {p1, v2}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1524
    iget v5, p0, Landroid/support/v4/view/ViewPager;->a:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 1525
    invoke-direct {p0, v3, v1, v0, v2}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v1

    .line 1527
    invoke-virtual {p0, v1, v4, v4, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 1529
    iput v6, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1530
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    .line 1531
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {v0}, Lbk;->b()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v1}, Lbk;->b()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1532
    goto/16 :goto_39

    .line 1535
    :pswitch_15d
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->e:Z

    if-eqz v1, :cond_39

    .line 1536
    iget v0, p0, Landroid/support/v4/view/ViewPager;->a:I

    invoke-virtual {p0, v0, v4, v4}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 1537
    iput v6, p0, Landroid/support/v4/view/ViewPager;->j:I

    .line 1538
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->f()V

    .line 1539
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Lbk;

    invoke-virtual {v0}, Lbk;->b()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->b:Lbk;

    invoke-virtual {v1}, Lbk;->b()Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_39

    .line 1543
    :pswitch_17a
    invoke-static {p1}, Law;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1544
    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1545
    iput v2, p0, Landroid/support/v4/view/ViewPager;->b:F

    .line 1546
    invoke-static {p1, v1}, Law;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    goto/16 :goto_39

    .line 1550
    :pswitch_18c
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1551
    iget v1, p0, Landroid/support/v4/view/ViewPager;->j:I

    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    invoke-static {p1, v1}, Law;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:F

    goto/16 :goto_39

    :cond_19d
    move v1, v0

    move v0, v3

    goto/16 :goto_db

    .line 1446
    nop

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_40
        :pswitch_10b
        :pswitch_52
        :pswitch_15d
        :pswitch_39
        :pswitch_17a
        :pswitch_18c
    .end packed-switch
.end method

.method public setAdapter(LaB;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v0, :cond_42

    .line 315
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbc;

    invoke-virtual {v0, v1}, LaB;->b(Landroid/database/DataSetObserver;)V

    .line 316
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0, p0}, LaB;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 317
    :goto_13
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 318
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY;

    .line 319
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget v4, v0, LaY;->a:I

    iget-object v0, v0, LaY;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, LaB;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 321
    :cond_30
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    invoke-virtual {v0, p0}, LaB;->b(Landroid/view/ViewGroup;)V

    .line 322
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->d()V

    .line 324
    iput v2, p0, Landroid/support/v4/view/ViewPager;->a:I

    .line 325
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 328
    :cond_42
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    .line 329
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    .line 331
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    if-eqz v1, :cond_78

    .line 332
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbc;

    if-nez v1, :cond_55

    .line 333
    new-instance v1, Lbc;

    invoke-direct {v1, p0, v5}, Lbc;-><init>(Landroid/support/v4/view/ViewPager;LaV;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lbc;

    .line 335
    :cond_55
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Lbc;

    invoke-virtual {v1, v3}, LaB;->a(Landroid/database/DataSetObserver;)V

    .line 336
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->c:Z

    .line 337
    iget v1, p0, Landroid/support/v4/view/ViewPager;->b:I

    if-ltz v1, :cond_84

    .line 338
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:LaB;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, LaB;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 339
    iget v1, p0, Landroid/support/v4/view/ViewPager;->b:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 340
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->b:I

    .line 341
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/os/Parcelable;

    .line 342
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->a:Ljava/lang/ClassLoader;

    .line 348
    :cond_78
    :goto_78
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lba;

    if-eqz v1, :cond_83

    if-eq v0, p1, :cond_83

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->a:Lba;

    invoke-interface {v1, v0, p1}, Lba;->a(LaB;LaB;)V

    .line 351
    :cond_83
    return-void

    .line 344
    :cond_84
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    goto :goto_78
.end method

.method public setCurrentItem(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 385
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->c:Z

    .line 386
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->h:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 387
    return-void

    :cond_c
    move v0, v1

    .line 386
    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->c:Z

    .line 397
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 398
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 506
    if-ge p1, v0, :cond_26

    .line 507
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 511
    :cond_26
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq p1, v0, :cond_2f

    .line 512
    iput p1, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 513
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->c()V

    .line 515
    :cond_2f
    return-void
.end method

.method public setOnPageChangeListener(Lbb;)V
    .registers 2
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->a:Lbb;

    .line 463
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .parameter

    .prologue
    .line 526
    iget v0, p0, Landroid/support/v4/view/ViewPager;->c:I

    .line 527
    iput p1, p0, Landroid/support/v4/view/ViewPager;->c:I

    .line 529
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 530
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 533
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .parameter

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    .line 551
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 552
    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 553
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 554
    return-void

    .line 552
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
