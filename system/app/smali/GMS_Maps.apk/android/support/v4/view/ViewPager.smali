.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Comparator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Le/g;

.field private P:Le/g;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Landroid/support/v4/view/ai;

.field private V:Landroid/support/v4/view/ai;

.field private W:Landroid/support/v4/view/ah;

.field private Z:I

.field private final d:Ljava/util/ArrayList;

.field private final e:Landroid/support/v4/view/af;

.field private final f:Landroid/graphics/Rect;

.field private g:Landroid/support/v4/view/x;

.field private h:I

.field private i:I

.field private j:Landroid/os/Parcelable;

.field private k:Ljava/lang/ClassLoader;

.field private l:Landroid/widget/Scroller;

.field private m:Landroid/support/v4/view/aj;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    .line 106
    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    .line 113
    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0}, Landroid/support/v4/view/ad;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 296
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/af;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    .line 127
    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 128
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    .line 129
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    .line 141
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    .line 142
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 151
    iput v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 169
    iput v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 196
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    .line 197
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->R:Z

    .line 221
    iput v2, p0, Landroid/support/v4/view/ViewPager;->Z:I

    .line 297
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/af;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    .line 127
    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 128
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    .line 129
    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    .line 141
    const v0, -0x800001

    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    .line 142
    const v0, 0x7f7fffff

    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 151
    iput v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 169
    iput v1, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 196
    iput-boolean v3, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    .line 197
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->R:Z

    .line 221
    iput v2, p0, Landroid/support/v4/view/ViewPager;->Z:I

    .line 302
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->a()V

    .line 303
    return-void
.end method

.method private a(IFII)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1904
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->L:I

    if-le v0, v1, :cond_43

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->J:I

    if-le v0, v1, :cond_43

    .line 1905
    if-lez p3, :cond_40

    .line 1910
    :goto_12
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 1911
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1912
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/af;

    .line 1915
    iget v0, v0, Landroid/support/v4/view/af;->b:I

    iget v1, v1, Landroid/support/v4/view/af;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1918
    :cond_3f
    return p1

    .line 1905
    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 1907
    :cond_43
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_12
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2293
    if-nez p1, :cond_5e

    .line 2294
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2296
    :goto_8
    if-nez p2, :cond_f

    .line 2297
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2315
    :goto_e
    return-object v0

    .line 2300
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2301
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2302
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2303
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2305
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2306
    :goto_2b
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5c

    if-eq v0, p0, :cond_5c

    .line 2307
    check-cast v0, Landroid/view/ViewGroup;

    .line 2308
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2309
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2310
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2311
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2313
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2b

    :cond_5c
    move-object v0, v1

    .line 2315
    goto :goto_e

    :cond_5e
    move-object v1, p1

    goto :goto_8
.end method

.method static synthetic a(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/x;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    return-object v0
.end method

.method private a(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1266
    if-lez p2, :cond_49

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1267
    add-int v0, p1, p3

    .line 1268
    add-int v1, p2, p4

    .line 1269
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1270
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1271
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1273
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1274
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_48

    .line 1276
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1277
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/af;

    move-result-object v3

    .line 1278
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    iget v3, v3, Landroid/support/v4/view/af;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1290
    :cond_48
    :goto_48
    return-void

    .line 1282
    :cond_49
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/af;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_6d

    iget v0, v0, Landroid/support/v4/view/af;->e:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1284
    :goto_59
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1285
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_48

    .line 1286
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()V

    .line 1287
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_48

    .line 1283
    :cond_6d
    const/4 v0, 0x0

    goto :goto_59
.end method

.method private a(Landroid/support/v4/view/af;ILandroid/support/v4/view/af;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f80

    .line 929
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->a()I

    move-result v7

    .line 930
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    .line 931
    if-lez v0, :cond_55

    iget v1, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 933
    :goto_16
    if-eqz p3, :cond_b7

    .line 934
    iget v0, p3, Landroid/support/v4/view/af;->b:I

    .line 936
    iget v1, p1, Landroid/support/v4/view/af;->b:I

    if-ge v0, v1, :cond_70

    .line 939
    iget v1, p3, Landroid/support/v4/view/af;->e:F

    iget v2, p3, Landroid/support/v4/view/af;->d:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    .line 940
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 941
    :goto_28
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    if-gt v2, v0, :cond_b7

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b7

    .line 942
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 943
    :goto_3c
    iget v5, v0, Landroid/support/v4/view/af;->b:I

    if-le v2, v5, :cond_58

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_58

    .line 944
    add-int/lit8 v1, v1, 0x1

    .line 945
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    goto :goto_3c

    .line 931
    :cond_55
    const/4 v0, 0x0

    move v6, v0

    goto :goto_16

    .line 947
    :cond_58
    :goto_58
    iget v5, v0, Landroid/support/v4/view/af;->b:I

    if-ge v2, v5, :cond_67

    .line 950
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/x;->b(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 951
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 953
    :cond_67
    iput v3, v0, Landroid/support/v4/view/af;->e:F

    .line 954
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 941
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 956
    :cond_70
    iget v1, p1, Landroid/support/v4/view/af;->b:I

    if-le v0, v1, :cond_b7

    .line 957
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 959
    iget v3, p3, Landroid/support/v4/view/af;->e:F

    .line 960
    add-int/lit8 v2, v0, -0x1

    .line 961
    :goto_80
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    if-lt v2, v0, :cond_b7

    if-ltz v1, :cond_b7

    .line 962
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 963
    :goto_8e
    iget v5, v0, Landroid/support/v4/view/af;->b:I

    if-ge v2, v5, :cond_9f

    if-lez v1, :cond_9f

    .line 964
    add-int/lit8 v1, v1, -0x1

    .line 965
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    goto :goto_8e

    .line 967
    :cond_9f
    :goto_9f
    iget v5, v0, Landroid/support/v4/view/af;->b:I

    if-le v2, v5, :cond_ae

    .line 970
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/x;->b(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 971
    add-int/lit8 v2, v2, -0x1

    goto :goto_9f

    .line 973
    :cond_ae
    iget v5, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 974
    iput v3, v0, Landroid/support/v4/view/af;->e:F

    .line 961
    add-int/lit8 v2, v2, -0x1

    goto :goto_80

    .line 980
    :cond_b7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 981
    iget v2, p1, Landroid/support/v4/view/af;->e:F

    .line 982
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 983
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    if-nez v0, :cond_f9

    iget v0, p1, Landroid/support/v4/view/af;->e:F

    :goto_c9
    iput v0, p0, Landroid/support/v4/view/ViewPager;->r:F

    .line 984
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_fd

    iget v0, p1, Landroid/support/v4/view/af;->e:F

    iget v3, p1, Landroid/support/v4/view/af;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_d7
    iput v0, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 987
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_dc
    if-ltz v5, :cond_114

    .line 988
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    move v3, v2

    .line 989
    :goto_e7
    iget v2, v0, Landroid/support/v4/view/af;->b:I

    if-le v1, v2, :cond_101

    .line 990
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/x;->b(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_e7

    .line 983
    :cond_f9
    const v0, -0x800001

    goto :goto_c9

    .line 984
    :cond_fd
    const v0, 0x7f7fffff

    goto :goto_d7

    .line 992
    :cond_101
    iget v2, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 993
    iput v2, v0, Landroid/support/v4/view/af;->e:F

    .line 994
    iget v0, v0, Landroid/support/v4/view/af;->b:I

    if-nez v0, :cond_10e

    iput v2, p0, Landroid/support/v4/view/ViewPager;->r:F

    .line 987
    :cond_10e
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_dc

    .line 996
    :cond_114
    iget v0, p1, Landroid/support/v4/view/af;->e:F

    iget v1, p1, Landroid/support/v4/view/af;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 997
    iget v0, p1, Landroid/support/v4/view/af;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 999
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_122
    if-ge v5, v8, :cond_157

    .line 1000
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    move v3, v2

    .line 1001
    :goto_12d
    iget v2, v0, Landroid/support/v4/view/af;->b:I

    if-ge v1, v2, :cond_13e

    .line 1002
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Landroid/support/v4/view/x;->b(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_12d

    .line 1004
    :cond_13e
    iget v2, v0, Landroid/support/v4/view/af;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_14a

    .line 1005
    iget v2, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Landroid/support/v4/view/ViewPager;->s:F

    .line 1007
    :cond_14a
    iput v3, v0, Landroid/support/v4/view/af;->e:F

    .line 1008
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 999
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_122

    .line 1011
    :cond_157
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->R:Z

    .line 1012
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 2136
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2137
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2138
    iget v2, p0, Landroid/support/v4/view/ViewPager;->H:I

    if-ne v1, v2, :cond_24

    .line 2141
    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 2142
    :goto_f
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 2143
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 2144
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_24

    .line 2145
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2148
    :cond_24
    return-void

    .line 2141
    :cond_25
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2161
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->w:Z

    if-eq v0, p1, :cond_6

    .line 2162
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->w:Z

    .line 2173
    :cond_6
    return-void
.end method

.method private a(FF)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1544
    iget v0, p0, Landroid/support/v4/view/ViewPager;->C:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method static synthetic b(Landroid/support/v4/view/ViewPager;)I
    .registers 2
    .parameter

    .prologue
    .line 82
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    return v0
.end method

.method private b(F)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1810
    .line 1812
    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float/2addr v0, p1

    .line 1813
    iput p1, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1815
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 1816
    add-float v5, v1, v0

    .line 1817
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 1819
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->r:F

    mul-float v4, v0, v1

    .line 1820
    int-to-float v0, v7

    iget v1, p0, Landroid/support/v4/view/ViewPager;->s:F

    mul-float v6, v0, v1

    .line 1824
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1825
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/af;

    .line 1826
    iget v8, v0, Landroid/support/v4/view/af;->b:I

    if-eqz v8, :cond_93

    .line 1828
    iget v0, v0, Landroid/support/v4/view/af;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 1830
    :goto_3e
    iget v8, v1, Landroid/support/v4/view/af;->b:I

    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v9}, Landroid/support/v4/view/x;->a()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_91

    .line 1832
    iget v1, v1, Landroid/support/v4/view/af;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 1835
    :goto_4f
    cmpg-float v6, v5, v4

    if-gez v6, :cond_79

    .line 1836
    if-eqz v0, :cond_63

    .line 1837
    sub-float v0, v4, v5

    .line 1838
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Le/g;->a(F)Z

    move-result v2

    .line 1849
    :cond_63
    :goto_63
    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1850
    float-to-int v0, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1851
    float-to-int v0, v4

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->e(I)Z

    .line 1853
    return v2

    .line 1841
    :cond_79
    cmpl-float v0, v5, v1

    if-lez v0, :cond_8f

    .line 1842
    if-eqz v3, :cond_8d

    .line 1843
    sub-float v0, v5, v1

    .line 1844
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Le/g;->a(F)Z

    move-result v2

    :cond_8d
    move v4, v1

    .line 1846
    goto :goto_63

    :cond_8f
    move v4, v5

    goto :goto_63

    :cond_91
    move v1, v6

    goto :goto_4f

    :cond_93
    move v0, v3

    goto :goto_3e
.end method

.method private d(I)V
    .registers 3
    .parameter

    .prologue
    .line 333
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Z:I

    if-ne v0, p1, :cond_5

    .line 341
    :cond_4
    :goto_4
    return-void

    .line 337
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->Z:I

    .line 338
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ai;->e_(I)V

    goto :goto_4
.end method

.method private e(I)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1426
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1427
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    .line 1428
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1429
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->S:Z

    if-nez v1, :cond_4e

    .line 1430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_1b
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()Landroid/support/v4/view/af;

    move-result-object v1

    .line 1436
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 1437
    iget v3, p0, Landroid/support/v4/view/ViewPager;->n:I

    add-int/2addr v3, v2

    .line 1438
    iget v4, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1439
    iget v5, v1, Landroid/support/v4/view/af;->b:I

    .line 1440
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Landroid/support/v4/view/af;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Landroid/support/v4/view/af;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1442
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1444
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    .line 1445
    invoke-virtual {p0, v5, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IFI)V

    .line 1446
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    if-nez v0, :cond_4d

    .line 1447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_4d
    const/4 v0, 0x1

    :cond_4e
    return v0
.end method

.method static synthetic h()[I
    .registers 1

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/ViewPager;->a:[I

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 390
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 391
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 393
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v0, :cond_1b

    .line 394
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 395
    add-int/lit8 v1, v1, -0x1

    .line 390
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 398
    :cond_1f
    return-void
.end method

.method private j()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1516
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4f

    move v0, v4

    .line 1517
    :goto_8
    if-eqz v0, :cond_30

    .line 1519
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1520
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1521
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 1522
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    .line 1523
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1524
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1525
    if-ne v1, v5, :cond_2a

    if-eq v3, v6, :cond_2d

    .line 1526
    :cond_2a
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1528
    :cond_2d
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->d(I)V

    .line 1530
    :cond_30
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    move v1, v2

    move v3, v0

    .line 1531
    :goto_34
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 1532
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1533
    iget-boolean v5, v0, Landroid/support/v4/view/af;->c:Z

    if-eqz v5, :cond_4b

    .line 1535
    iput-boolean v2, v0, Landroid/support/v4/view/af;->c:Z

    move v3, v4

    .line 1531
    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    :cond_4f
    move v0, v2

    .line 1516
    goto :goto_8

    .line 1538
    :cond_51
    if-eqz v3, :cond_56

    .line 1539
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1541
    :cond_56
    return-void
.end method

.method private k()Landroid/support/v4/view/af;
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 1862
    if-lez v1, :cond_6e

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 1863
    :goto_10
    if-lez v1, :cond_70

    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 1864
    :goto_18
    const/4 v5, -0x1

    .line 1867
    const/4 v4, 0x1

    .line 1869
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 1870
    :goto_21
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6d

    .line 1871
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1873
    if-nez v5, :cond_7f

    iget v10, v0, Landroid/support/v4/view/af;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_7f

    .line 1875
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->e:Landroid/support/v4/view/af;

    .line 1876
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Landroid/support/v4/view/af;->e:F

    .line 1877
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Landroid/support/v4/view/af;->b:I

    .line 1878
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget v7, v0, Landroid/support/v4/view/af;->b:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/x;->b(I)F

    move-result v6

    iput v6, v0, Landroid/support/v4/view/af;->d:F

    .line 1879
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 1881
    :goto_52
    iget v6, v2, Landroid/support/v4/view/af;->e:F

    .line 1884
    iget v7, v2, Landroid/support/v4/view/af;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 1885
    if-nez v5, :cond_5e

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_6d

    .line 1886
    :cond_5e
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_6c

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_72

    :cond_6c
    move-object v4, v2

    .line 1899
    :cond_6d
    return-object v4

    :cond_6e
    move v9, v2

    .line 1862
    goto :goto_10

    :cond_70
    move v1, v2

    .line 1863
    goto :goto_18

    .line 1893
    :cond_72
    iget v5, v2, Landroid/support/v4/view/af;->b:I

    .line 1895
    iget v4, v2, Landroid/support/v4/view/af;->d:F

    .line 1870
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_21

    :cond_7f
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_52
.end method

.method private l()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2151
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 2152
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 2154
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2155
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2156
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 2158
    :cond_11
    return-void
.end method


# virtual methods
.method a(F)F
    .registers 6
    .parameter

    .prologue
    .line 626
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 627
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 628
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Landroid/support/v4/view/af;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 690
    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    .line 691
    iput p1, v0, Landroid/support/v4/view/af;->b:I

    .line 692
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/x;->b(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/af;->d:F

    .line 694
    if-ltz p2, :cond_21

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_27

    .line 695
    :cond_21
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :goto_26
    return-object v0

    .line 697
    :cond_27
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_26
.end method

.method a(Landroid/view/View;)Landroid/support/v4/view/af;
    .registers 6
    .parameter

    .prologue
    .line 1124
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 1125
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1126
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v3, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/x;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1130
    :goto_1c
    return-object v0

    .line 1124
    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1130
    :cond_21
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method a(Landroid/support/v4/view/ai;)Landroid/support/v4/view/ai;
    .registers 3
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    .line 515
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    .line 516
    return-object v0
.end method

.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 307
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 308
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Landroid/support/v4/view/ViewPager;->c:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    .line 311
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/support/v4/view/X;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->D:I

    .line 313
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->J:I

    .line 314
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->K:I

    .line 315
    new-instance v1, Le/g;

    invoke-direct {v1, v0}, Le/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    .line 316
    new-instance v1, Le/g;

    invoke-direct {v1, v0}, Le/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 319
    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->L:I

    .line 320
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    .line 321
    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->B:I

    .line 323
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ag;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/M;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 325
    invoke-static {p0}, Landroid/support/v4/view/M;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_6b

    .line 327
    invoke-static {p0, v3}, Landroid/support/v4/view/M;->b(Landroid/view/View;I)V

    .line 330
    :cond_6b
    return-void
.end method

.method a(I)V
    .registers 16
    .parameter

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v1, p1, :cond_216

    .line 778
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/af;

    move-result-object v0

    .line 779
    iput p1, p0, Landroid/support/v4/view/ViewPager;->h:I

    move-object v1, v0

    .line 782
    :goto_e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-nez v0, :cond_13

    .line 926
    :cond_12
    return-void

    .line 790
    :cond_13
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    if-nez v0, :cond_12

    .line 798
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 802
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;)V

    .line 804
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 805
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 806
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v2}, Landroid/support/v4/view/x;->a()I

    move-result v8

    .line 807
    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 811
    const/4 v3, 0x0

    .line 812
    const/4 v0, 0x0

    move v2, v0

    :goto_3e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_213

    .line 813
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 814
    iget v4, v0, Landroid/support/v4/view/af;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-lt v4, v5, :cond_fa

    .line 815
    iget v4, v0, Landroid/support/v4/view/af;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_213

    .line 820
    :goto_5a
    if-nez v0, :cond_210

    if-lez v8, :cond_210

    .line 821
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/af;

    move-result-object v0

    move-object v6, v0

    .line 827
    :goto_65
    if-eqz v6, :cond_bf

    .line 828
    const/4 v5, 0x0

    .line 829
    add-int/lit8 v4, v2, -0x1

    .line 830
    if-ltz v4, :cond_ff

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 831
    :goto_74
    const/high16 v3, 0x4000

    iget v10, v6, Landroid/support/v4/view/af;->d:F

    sub-float v10, v3, v10

    .line 832
    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_84
    if-ltz v5, :cond_8e

    .line 833
    cmpl-float v11, v3, v10

    if-ltz v11, :cond_12a

    if-ge v5, v7, :cond_12a

    .line 834
    if-nez v0, :cond_102

    .line 856
    :cond_8e
    iget v3, v6, Landroid/support/v4/view/af;->d:F

    .line 857
    add-int/lit8 v5, v4, 0x1

    .line 858
    const/high16 v0, 0x4000

    cmpg-float v0, v3, v0

    if-gez v0, :cond_bc

    .line 859
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_15a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 860
    :goto_a8
    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_b0
    if-ge v5, v8, :cond_bc

    .line 861
    const/high16 v7, 0x4000

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_18d

    if-le v5, v9, :cond_18d

    .line 862
    if-nez v0, :cond_15d

    .line 883
    :cond_bc
    invoke-direct {p0, v6, v4, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/af;ILandroid/support/v4/view/af;)V

    .line 893
    :cond_bf
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eqz v6, :cond_1cd

    iget-object v0, v6, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    :goto_c7
    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v4/view/x;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 895
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/x;->b(Landroid/view/ViewGroup;)V

    .line 898
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 899
    const/4 v0, 0x0

    move v1, v0

    :goto_d5
    if-ge v1, v2, :cond_1d0

    .line 900
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 901
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 902
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v4, :cond_f6

    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f6

    .line 904
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v3

    .line 905
    if-eqz v3, :cond_f6

    .line 906
    iget v3, v3, Landroid/support/v4/view/af;->d:F

    iput v3, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    .line 899
    :cond_f6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d5

    .line 812
    :cond_fa
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3e

    .line 830
    :cond_ff
    const/4 v0, 0x0

    goto/16 :goto_74

    .line 837
    :cond_102
    iget v11, v0, Landroid/support/v4/view/af;->b:I

    if-ne v5, v11, :cond_124

    iget-boolean v11, v0, Landroid/support/v4/view/af;->c:Z

    if-nez v11, :cond_124

    .line 838
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 839
    iget-object v11, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v0, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 840
    add-int/lit8 v2, v2, -0x1

    .line 841
    add-int/lit8 v4, v4, -0x1

    .line 842
    if-ltz v2, :cond_128

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 832
    :cond_124
    :goto_124
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_84

    .line 842
    :cond_128
    const/4 v0, 0x0

    goto :goto_124

    .line 844
    :cond_12a
    if-eqz v0, :cond_142

    iget v11, v0, Landroid/support/v4/view/af;->b:I

    if-ne v5, v11, :cond_142

    .line 845
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v3, v0

    .line 846
    add-int/lit8 v2, v2, -0x1

    .line 847
    if-ltz v2, :cond_140

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    goto :goto_124

    :cond_140
    const/4 v0, 0x0

    goto :goto_124

    .line 849
    :cond_142
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/af;

    move-result-object v0

    .line 850
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v3, v0

    .line 851
    add-int/lit8 v4, v4, 0x1

    .line 852
    if-ltz v2, :cond_158

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    goto :goto_124

    :cond_158
    const/4 v0, 0x0

    goto :goto_124

    .line 859
    :cond_15a
    const/4 v0, 0x0

    goto/16 :goto_a8

    .line 865
    :cond_15d
    iget v7, v0, Landroid/support/v4/view/af;->b:I

    if-ne v5, v7, :cond_20b

    iget-boolean v7, v0, Landroid/support/v4/view/af;->c:Z

    if-nez v7, :cond_20b

    .line 866
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 867
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v0, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 868
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_18b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    :goto_181
    move v12, v2

    move-object v2, v0

    move v0, v12

    .line 860
    :goto_184
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_b0

    .line 868
    :cond_18b
    const/4 v0, 0x0

    goto :goto_181

    .line 870
    :cond_18d
    if-eqz v0, :cond_1ae

    iget v7, v0, Landroid/support/v4/view/af;->b:I

    if-ne v5, v7, :cond_1ae

    .line 871
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v2, v0

    .line 872
    add-int/lit8 v3, v3, 0x1

    .line 873
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1ac

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    :goto_1a8
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_184

    :cond_1ac
    const/4 v0, 0x0

    goto :goto_1a8

    .line 875
    :cond_1ae
    invoke-virtual {p0, v5, v3}, Landroid/support/v4/view/ViewPager;->a(II)Landroid/support/v4/view/af;

    move-result-object v0

    .line 876
    add-int/lit8 v3, v3, 0x1

    .line 877
    iget v0, v0, Landroid/support/v4/view/af;->d:F

    add-float/2addr v2, v0

    .line 878
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1cb

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    :goto_1c7
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_184

    :cond_1cb
    const/4 v0, 0x0

    goto :goto_1c7

    .line 893
    :cond_1cd
    const/4 v0, 0x0

    goto/16 :goto_c7

    .line 911
    :cond_1d0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 912
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_209

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->b(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v0

    .line 914
    :goto_1e0
    if-eqz v0, :cond_1e8

    iget v0, v0, Landroid/support/v4/view/af;->b:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v0, v1, :cond_12

    .line 915
    :cond_1e8
    const/4 v0, 0x0

    :goto_1e9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 916
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 917
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v2

    .line 918
    if-eqz v2, :cond_206

    iget v2, v2, Landroid/support/v4/view/af;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v2, v3, :cond_206

    .line 919
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 915
    :cond_206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e9

    .line 913
    :cond_209
    const/4 v0, 0x0

    goto :goto_1e0

    :cond_20b
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_184

    :cond_210
    move-object v6, v0

    goto/16 :goto_65

    :cond_213
    move-object v0, v3

    goto/16 :goto_5a

    :cond_216
    move-object v1, v0

    goto/16 :goto_e
.end method

.method protected a(IFI)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1467
    iget v0, p0, Landroid/support/v4/view/ViewPager;->T:I

    if-lez v0, :cond_75

    .line 1468
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 1469
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1470
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1471
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1472
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1473
    const/4 v0, 0x0

    move v3, v0

    :goto_1a
    if-ge v3, v6, :cond_75

    .line 1474
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1475
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1476
    iget-boolean v8, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v8, :cond_34

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1473
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_1a

    .line 1478
    :cond_34
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1480
    packed-switch v0, :pswitch_data_8c

    :pswitch_3b
    move v0, v1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1497
    :goto_3f
    add-int/2addr v0, v4

    .line 1499
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1500
    if-eqz v0, :cond_2d

    .line 1501
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_2d

    .line 1486
    :pswitch_4b
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 1487
    goto :goto_3f

    .line 1489
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

    .line 1491
    goto :goto_3f

    .line 1493
    :pswitch_65
    sub-int v0, v5, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1494
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_3f

    .line 1506
    :cond_75
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    if-eqz v0, :cond_7e

    .line 1507
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ai;->a(IFI)V

    .line 1509
    :cond_7e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    if-eqz v0, :cond_87

    .line 1510
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ai;->a(IFI)V

    .line 1512
    :cond_87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->S:Z

    .line 1513
    return-void

    .line 1480
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

.method a(III)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 649
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 651
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 687
    :goto_c
    return-void

    .line 654
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 655
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v2

    .line 656
    sub-int v3, p1, v1

    .line 657
    sub-int v4, p2, v2

    .line 658
    if-nez v3, :cond_27

    if-nez v4, :cond_27

    .line 659
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()V

    .line 660
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 661
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->d(I)V

    goto :goto_c

    .line 665
    :cond_27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 666
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->d(I)V

    .line 668
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    .line 669
    div-int/lit8 v5, v0, 0x2

    .line 670
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 671
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Landroid/support/v4/view/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 675
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 676
    if-lez v6, :cond_6d

    .line 677
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 683
    :goto_5e
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 685
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 686
    invoke-static {p0}, Landroid/support/v4/view/M;->b(Landroid/view/View;)V

    goto :goto_c

    .line 679
    :cond_6d
    int-to-float v0, v0

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget v6, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/x;->b(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 680
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 681
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5e
.end method

.method a(IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 442
    return-void
.end method

.method a(IZZI)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->a()I

    move-result v0

    if-gtz v0, :cond_12

    .line 446
    :cond_e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 495
    :cond_11
    :goto_11
    return-void

    .line 449
    :cond_12
    if-nez p3, :cond_24

    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v0, p1, :cond_24

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_24

    .line 450
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    goto :goto_11

    .line 454
    :cond_24
    if-gez p1, :cond_4b

    move p1, v1

    .line 459
    :cond_27
    :goto_27
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 460
    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_34

    iget v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_5c

    :cond_34
    move v2, v1

    .line 464
    :goto_35
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 465
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    iput-boolean v3, v0, Landroid/support/v4/view/af;->c:Z

    .line 464
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 456
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->a()I

    move-result v0

    if-lt p1, v0, :cond_27

    .line 457
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_27

    .line 468
    :cond_5c
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-eq v0, p1, :cond_9c

    move v0, v3

    .line 469
    :goto_61
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 470
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->b(I)Landroid/support/v4/view/af;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_bc

    .line 473
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 474
    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/view/ViewPager;->r:F

    iget v2, v2, Landroid/support/v4/view/af;->e:F

    iget v5, p0, Landroid/support/v4/view/ViewPager;->s:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 477
    :goto_7f
    if-eqz p2, :cond_9e

    .line 478
    invoke-virtual {p0, v2, v1, p4}, Landroid/support/v4/view/ViewPager;->a(III)V

    .line 479
    if-eqz v0, :cond_8f

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    if-eqz v1, :cond_8f

    .line 480
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ai;->d_(I)V

    .line 482
    :cond_8f
    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    if-eqz v0, :cond_11

    .line 483
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ai;->d_(I)V

    goto/16 :goto_11

    :cond_9c
    move v0, v1

    .line 468
    goto :goto_61

    .line 486
    :cond_9e
    if-eqz v0, :cond_a9

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    if-eqz v3, :cond_a9

    .line 487
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    invoke-interface {v3, p1}, Landroid/support/v4/view/ai;->d_(I)V

    .line 489
    :cond_a9
    if-eqz v0, :cond_b4

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    if-eqz v0, :cond_b4

    .line 490
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->V:Landroid/support/v4/view/ai;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ai;->d_(I)V

    .line 492
    :cond_b4
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()V

    .line 493
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto/16 :goto_11

    :cond_bc
    move v2, v1

    goto :goto_7f
.end method

.method a(Landroid/support/v4/view/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/ah;

    .line 411
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2224
    const/4 v0, 0x0

    .line 2225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_f

    .line 2226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    .line 2246
    :cond_f
    :goto_f
    return v0

    .line 2228
    :sswitch_10
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2231
    :sswitch_17
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2234
    :sswitch_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_f

    .line 2237
    invoke-static {p1}, Landroid/support/v4/view/n;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2238
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2239
    :cond_30
    invoke-static {p1, v3}, Landroid/support/v4/view/n;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2240
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_f

    .line 2226
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

    .line 2187
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5a

    move-object v6, p1

    .line 2188
    check-cast v6, Landroid/view/ViewGroup;

    .line 2189
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2190
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2191
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2193
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_17
    if-ltz v7, :cond_5a

    .line 2196
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2197
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

    .line 2206
    :cond_55
    :goto_55
    return v2

    .line 2193
    :cond_56
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_17

    .line 2206
    :cond_5a
    if-eqz p2, :cond_63

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/M;->a(Landroid/view/View;I)Z

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

    .prologue
    .line 2339
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2341
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2343
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_2f

    .line 2344
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 2345
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2346
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2347
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v4

    .line 2348
    if-eqz v4, :cond_2c

    iget v4, v4, Landroid/support/v4/view/af;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_2c

    .line 2349
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2344
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2359
    :cond_2f
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3f

    .line 2365
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2376
    :cond_3f
    :goto_3f
    return-void

    .line 2368
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

    .line 2372
    :cond_51
    if-eqz p1, :cond_3f

    .line 2373
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .parameter

    .prologue
    .line 2386
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2387
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2388
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2389
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v2

    .line 2390
    if-eqz v2, :cond_20

    iget v2, v2, Landroid/support/v4/view/af;->b:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v2, v3, :cond_20

    .line 2391
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2386
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2395
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1099
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1100
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_a
    move-object v0, v1

    .line 1102
    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1103
    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    instance-of v3, p1, Landroid/support/v4/view/ae;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    .line 1104
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->v:Z

    if-eqz v2, :cond_2d

    .line 1105
    if-eqz v0, :cond_26

    iget-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v2, :cond_26

    .line 1106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1108
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    .line 1109
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1121
    :goto_2c
    return-void

    .line 1111
    :cond_2d
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2c

    :cond_31
    move-object v1, p3

    goto :goto_a
.end method

.method b(I)Landroid/support/v4/view/af;
    .registers 5
    .parameter

    .prologue
    .line 1145
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 1146
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 1147
    iget v2, v0, Landroid/support/v4/view/af;->b:I

    if-ne v2, p1, :cond_17

    .line 1151
    :goto_16
    return-object v0

    .line 1145
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1151
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method b(Landroid/view/View;)Landroid/support/v4/view/af;
    .registers 4
    .parameter

    .prologue
    .line 1135
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 1136
    if-eqz v0, :cond_c

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_e

    .line 1137
    :cond_c
    const/4 v0, 0x0

    .line 1141
    :goto_d
    return-object v0

    .line 1139
    :cond_e
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1141
    :cond_12
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v0

    goto :goto_d
.end method

.method public b()Landroid/support/v4/view/x;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    return v0
.end method

.method public c(I)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 2250
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2251
    if-ne v0, p0, :cond_b

    const/4 v0, 0x0

    .line 2253
    :cond_b
    const/4 v1, 0x0

    .line 2255
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2257
    if-eqz v2, :cond_61

    if-eq v2, v0, :cond_61

    .line 2258
    if-ne p1, v3, :cond_41

    .line 2261
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2262
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2263
    if-eqz v0, :cond_3c

    if-lt v1, v3, :cond_3c

    .line 2264
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    .line 2286
    :goto_32
    if-eqz v0, :cond_3b

    .line 2287
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2289
    :cond_3b
    return v0

    .line 2266
    :cond_3c
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_32

    .line 2268
    :cond_41
    if-ne p1, v4, :cond_75

    .line 2271
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2272
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2273
    if-eqz v0, :cond_5c

    if-gt v1, v3, :cond_5c

    .line 2274
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->g()Z

    move-result v0

    goto :goto_32

    .line 2276
    :cond_5c
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_32

    .line 2279
    :cond_61
    if-eq p1, v3, :cond_66

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6b

    .line 2281
    :cond_66
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v0

    goto :goto_32

    .line 2282
    :cond_6b
    if-eq p1, v4, :cond_70

    const/4 v0, 0x2

    if-ne p1, v0, :cond_75

    .line 2284
    :cond_70
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->g()Z

    move-result v0

    goto :goto_32

    :cond_75
    move v0, v1

    goto :goto_32
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter

    .prologue
    .line 2464
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

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1403
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1404
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1405
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1406
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1408
    if-ne v0, v2, :cond_28

    if-eq v1, v3, :cond_3a

    .line 1409
    :cond_28
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1410
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->e(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1411
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1412
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1417
    :cond_3a
    invoke-static {p0}, Landroid/support/v4/view/M;->b(Landroid/view/View;)V

    .line 1423
    :goto_3d
    return-void

    .line 1422
    :cond_3e
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()V

    goto :goto_3d
.end method

.method d()V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Landroid/support/v4/view/ViewPager;->y:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_4b

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v3}, Landroid/support/v4/view/x;->a()I

    move-result v3

    if-ge v0, v3, :cond_4b

    move v0, v1

    .line 707
    :goto_1f
    iget v3, p0, Landroid/support/v4/view/ViewPager;->h:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 710
    :goto_25
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_97

    .line 711
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 712
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v8, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/x;->a(Ljava/lang/Object;)I

    move-result v7

    .line 714
    const/4 v8, -0x1

    if-ne v7, v8, :cond_4d

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 710
    :goto_44
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_25

    :cond_4b
    move v0, v2

    .line 705
    goto :goto_1f

    .line 718
    :cond_4d
    const/4 v8, -0x2

    if-ne v7, v8, :cond_85

    .line 719
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 720
    add-int/lit8 v3, v3, -0x1

    .line 722
    if-nez v4, :cond_5f

    .line 723
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 727
    :cond_5f
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget v7, v0, Landroid/support/v4/view/af;->b:I

    iget-object v8, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 730
    iget v6, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget v0, v0, Landroid/support/v4/view/af;->b:I

    if-ne v6, v0, :cond_d0

    .line 732
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v5}, Landroid/support/v4/view/x;->a()I

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

    .line 733
    goto :goto_44

    .line 738
    :cond_85
    iget v8, v0, Landroid/support/v4/view/af;->b:I

    if-eq v8, v7, :cond_ca

    .line 739
    iget v6, v0, Landroid/support/v4/view/af;->b:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v6, v8, :cond_90

    move v5, v7

    .line 744
    :cond_90
    iput v7, v0, Landroid/support/v4/view/af;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 745
    goto :goto_44

    .line 749
    :cond_97
    if-eqz v4, :cond_9e

    .line 750
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/x;->b(Landroid/view/ViewGroup;)V

    .line 753
    :cond_9e
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v4/view/ViewPager;->b:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 755
    if-eqz v6, :cond_c9

    .line 757
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 758
    :goto_ac
    if-ge v3, v4, :cond_c3

    .line 759
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 761
    iget-boolean v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_bf

    .line 762
    const/4 v6, 0x0

    iput v6, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    .line 758
    :cond_bf
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ac

    .line 766
    :cond_c3
    invoke-virtual {p0, v5, v2, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 767
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 769
    :cond_c9
    return-void

    :cond_ca
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_44

    :cond_d0
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_44
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 2212
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

    .line 2437
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2438
    :goto_6
    if-ge v1, v2, :cond_25

    .line 2439
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2440
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_26

    .line 2441
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v4

    .line 2442
    if-eqz v4, :cond_26

    iget v4, v4, Landroid/support/v4/view/af;->b:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v4, v5, :cond_26

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2444
    const/4 v0, 0x1

    .line 2449
    :cond_25
    return v0

    .line 2438
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1923
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1924
    const/4 v0, 0x0

    .line 1926
    invoke-static {p0}, Landroid/support/v4/view/M;->a(Landroid/view/View;)I

    move-result v1

    .line 1927
    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_a2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v1}, Landroid/support/v4/view/x;->a()I

    move-result v1

    if-le v1, v2, :cond_a2

    .line 1930
    :cond_19
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v1}, Le/g;->a()Z

    move-result v1

    if-nez v1, :cond_59

    .line 1931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1932
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1933
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1935
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1936
    neg-int v4, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->r:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1937
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v4, v2, v3}, Le/g;->a(II)V

    .line 1938
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v2, p1}, Le/g;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1939
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1941
    :cond_59
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v1}, Le/g;->a()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 1942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1943
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 1944
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1946
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1947
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->s:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1948
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v4, v3, v2}, Le/g;->a(II)V

    .line 1949
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v2, p1}, Le/g;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1950
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1957
    :cond_9c
    :goto_9c
    if-eqz v0, :cond_a1

    .line 1959
    invoke-static {p0}, Landroid/support/v4/view/M;->b(Landroid/view/View;)V

    .line 1961
    :cond_a1
    return-void

    .line 1953
    :cond_a2
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v1}, Le/g;->b()V

    .line 1954
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v1}, Le/g;->b()V

    goto :goto_9c
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 614
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 615
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    .line 616
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 617
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 619
    :cond_14
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 772
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 773
    return-void
.end method

.method f()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2319
    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-lez v1, :cond_d

    .line 2320
    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2323
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method g()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2327
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v1, :cond_19

    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v2}, Landroid/support/v4/view/x;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_19

    .line 2328
    iget v1, p0, Landroid/support/v4/view/ViewPager;->h:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2331
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 2454
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter

    .prologue
    .line 2469
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter

    .prologue
    .line 2459
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1156
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    .line 1158
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18
    .parameter

    .prologue
    .line 1965
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1968
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->n:I

    if-lez v1, :cond_b2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v1, :cond_b2

    .line 1969
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 1970
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v7

    .line 1972
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 1973
    const/4 v5, 0x0

    .line 1974
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/af;

    .line 1975
    iget v4, v1, Landroid/support/v4/view/af;->e:F

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1977
    iget v3, v1, Landroid/support/v4/view/af;->b:I

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/af;

    iget v10, v2, Landroid/support/v4/view/af;->b:I

    move v2, v5

    move v5, v3

    .line 1979
    :goto_57
    if-ge v5, v10, :cond_b2

    .line 1980
    :goto_59
    iget v3, v1, Landroid/support/v4/view/af;->b:I

    if-le v5, v3, :cond_6c

    if-ge v2, v9, :cond_6c

    .line 1981
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/af;

    goto :goto_59

    .line 1985
    :cond_6c
    iget v3, v1, Landroid/support/v4/view/af;->b:I

    if-ne v5, v3, :cond_b3

    .line 1986
    iget v3, v1, Landroid/support/v4/view/af;->e:F

    iget v4, v1, Landroid/support/v4/view/af;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 1987
    iget v4, v1, Landroid/support/v4/view/af;->e:F

    iget v11, v1, Landroid/support/v4/view/af;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 1994
    :goto_7d
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_ab

    .line 1995
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v4/view/ViewPager;->p:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/view/ViewPager;->n:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v4/view/ViewPager;->q:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2000
    :cond_ab
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_c2

    .line 2005
    :cond_b2
    return-void

    .line 1989
    :cond_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/x;->b(I)F

    move-result v11

    .line 1990
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 1991
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_7d

    .line 1979
    :cond_c2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_57
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1555
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1558
    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    if-ne v0, v6, :cond_22

    .line 1561
    :cond_f
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 1562
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 1563
    iput v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 1564
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_21

    .line 1565
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1566
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1687
    :cond_21
    :goto_21
    return v2

    .line 1573
    :cond_22
    if-eqz v0, :cond_2e

    .line 1574
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v1, :cond_2a

    move v2, v6

    .line 1576
    goto :goto_21

    .line 1578
    :cond_2a
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->A:Z

    if-nez v1, :cond_21

    .line 1584
    :cond_2e
    sparse-switch v0, :sswitch_data_114

    .line 1678
    :cond_31
    :goto_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3b

    .line 1679
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1681
    :cond_3b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1687
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    goto :goto_21

    .line 1595
    :sswitch_43
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 1596
    if-eq v0, v3, :cond_31

    .line 1601
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1602
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1603
    iget v1, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float v8, v7, v1

    .line 1604
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1605
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1606
    iget v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1609
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_83

    iget v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    invoke-direct {p0, v0, v8}, Landroid/support/v4/view/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_83

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1612
    iput v7, p0, Landroid/support/v4/view/ViewPager;->F:F

    iput v7, p0, Landroid/support/v4/view/ViewPager;->E:F

    .line 1613
    iput v10, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 1614
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z

    goto :goto_21

    .line 1617
    :cond_83
    iget v0, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_b7

    cmpl-float v0, v9, v11

    if-lez v0, :cond_b7

    .line 1619
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 1620
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->d(I)V

    .line 1621
    cmpl-float v0, v8, v12

    if-lez v0, :cond_b0

    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_9d
    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1623
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1634
    :cond_a2
    :goto_a2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_31

    .line 1636
    invoke-direct {p0, v7}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1637
    invoke-static {p0}, Landroid/support/v4/view/M;->b(Landroid/view/View;)V

    goto :goto_31

    .line 1621
    :cond_b0
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v1, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_9d

    .line 1625
    :cond_b7
    iget v0, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a2

    .line 1631
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->A:Z

    goto :goto_a2

    .line 1648
    :sswitch_c1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->G:F

    .line 1650
    invoke-static {p1, v2}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 1651
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->A:Z

    .line 1653
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1654
    iget v0, p0, Landroid/support/v4/view/ViewPager;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_107

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->M:I

    if-le v0, v1, :cond_107

    .line 1657
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1658
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1659
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1660
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 1661
    invoke-direct {p0, v6}, Landroid/support/v4/view/ViewPager;->d(I)V

    goto/16 :goto_31

    .line 1663
    :cond_107
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->j()V

    .line 1664
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->z:Z

    goto/16 :goto_31

    .line 1674
    :sswitch_10e
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_31

    .line 1584
    nop

    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_c1
        0x2 -> :sswitch_43
        0x6 -> :sswitch_10e
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
    .line 1294
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->v:Z

    .line 1295
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1296
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->v:Z

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1299
    sub-int v10, p4, p2

    .line 1300
    sub-int v11, p5, p3

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1302
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1303
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1305
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v12

    .line 1307
    const/4 v4, 0x0

    .line 1311
    const/4 v1, 0x0

    move v8, v1

    :goto_2c
    if-ge v8, v9, :cond_cb

    .line 1312
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1313
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_13b

    .line 1314
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1317
    iget-boolean v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_13b

    .line 1318
    iget v7, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1319
    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1320
    packed-switch v7, :pswitch_data_142

    :pswitch_51
    move v7, v6

    .line 1337
    :goto_52
    sparse-switch v14, :sswitch_data_150

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1354
    :goto_5b
    add-int/2addr v7, v12

    .line 1355
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1358
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1311
    :goto_6f
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_2c

    .line 1326
    :pswitch_77
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1327
    goto :goto_52

    .line 1329
    :pswitch_7f
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1331
    goto :goto_52

    .line 1333
    :pswitch_8d
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1334
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_52

    .line 1343
    :sswitch_9b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1344
    goto :goto_5b

    .line 1346
    :sswitch_a7
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1348
    goto :goto_5b

    .line 1350
    :sswitch_b9
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1351
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_5b

    .line 1364
    :cond_cb
    const/4 v1, 0x0

    move v7, v1

    :goto_cd
    if-ge v7, v9, :cond_127

    .line 1365
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1366
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_123

    .line 1367
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1369
    iget-boolean v12, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v12, :cond_123

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v12

    if-eqz v12, :cond_123

    .line 1370
    int-to-float v13, v10

    iget v12, v12, Landroid/support/v4/view/af;->e:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 1371
    add-int/2addr v12, v6

    .line 1373
    iget-boolean v13, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    if-eqz v13, :cond_116

    .line 1376
    const/4 v13, 0x0

    iput-boolean v13, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->d:Z

    .line 1377
    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    int-to-float v13, v13

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x4000

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1380
    sub-int v13, v11, v2

    sub-int/2addr v13, v3

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1383
    invoke-virtual {v8, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1388
    :cond_116
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v8, v12, v2, v1, v13}, Landroid/view/View;->layout(IIII)V

    .line 1364
    :cond_123
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_cd

    .line 1394
    :cond_127
    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/view/ViewPager;->p:I

    .line 1395
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Landroid/support/v4/view/ViewPager;->q:I

    .line 1396
    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/v4/view/ViewPager;->T:I

    .line 1397
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->Q:Z

    .line 1398
    return-void

    :cond_13b
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_6f

    .line 1320
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_51
        :pswitch_77
        :pswitch_51
        :pswitch_8d
    .end packed-switch

    .line 1337
    :sswitch_data_150
    .sparse-switch
        0x10 -> :sswitch_a7
        0x30 -> :sswitch_9b
        0x50 -> :sswitch_b9
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 1167
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1170
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1171
    div-int/lit8 v1, v0, 0xa

    .line 1172
    iget v2, p0, Landroid/support/v4/view/ViewPager;->B:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->C:I

    .line 1175
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1176
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1183
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v9

    .line 1184
    const/4 v0, 0x0

    move v8, v0

    :goto_3b
    if-ge v8, v9, :cond_bc

    .line 1185
    invoke-virtual {p0, v8}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1186
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a5

    .line 1187
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1188
    if-eqz v0, :cond_a5

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-eqz v1, :cond_a5

    .line 1189
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1190
    iget v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1191
    const/high16 v2, -0x8000

    .line 1192
    const/high16 v1, -0x8000

    .line 1193
    const/16 v7, 0x30

    if-eq v4, v7, :cond_69

    const/16 v7, 0x50

    if-ne v4, v7, :cond_a9

    :cond_69
    const/4 v4, 0x1

    move v7, v4

    .line 1194
    :goto_6b
    const/4 v4, 0x3

    if-eq v6, v4, :cond_71

    const/4 v4, 0x5

    if-ne v6, v4, :cond_ac

    :cond_71
    const/4 v4, 0x1

    move v6, v4

    .line 1196
    :goto_73
    if-eqz v7, :cond_af

    .line 1197
    const/high16 v2, 0x4000

    .line 1204
    :cond_77
    :goto_77
    iget v4, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_10f

    .line 1205
    const/high16 v4, 0x4000

    .line 1206
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_10c

    .line 1207
    iget v2, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .line 1210
    :goto_85
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_10a

    .line 1211
    const/high16 v1, 0x4000

    .line 1212
    iget v11, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10a

    .line 1213
    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    .line 1216
    :goto_93
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1217
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1218
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1220
    if-eqz v7, :cond_b4

    .line 1221
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1184
    :cond_a5
    :goto_a5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3b

    .line 1193
    :cond_a9
    const/4 v4, 0x0

    move v7, v4

    goto :goto_6b

    .line 1194
    :cond_ac
    const/4 v4, 0x0

    move v6, v4

    goto :goto_73

    .line 1198
    :cond_af
    if-eqz v6, :cond_77

    .line 1199
    const/high16 v1, 0x4000

    goto :goto_77

    .line 1222
    :cond_b4
    if-eqz v6, :cond_a5

    .line 1223
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_a5

    .line 1229
    :cond_bc
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->t:I

    .line 1230
    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->u:I

    .line 1233
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    .line 1234
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->v:Z

    .line 1238
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1239
    const/4 v0, 0x0

    move v1, v0

    :goto_db
    if-ge v1, v2, :cond_109

    .line 1240
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1241
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_105

    .line 1245
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1246
    if-eqz v0, :cond_f5

    iget-boolean v5, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_105

    .line 1247
    :cond_f5
    int-to-float v5, v3

    iget v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1249
    iget v5, p0, Landroid/support/v4/view/ViewPager;->u:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1239
    :cond_105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_db

    .line 1253
    :cond_109
    return-void

    :cond_10a
    move v0, v5

    goto :goto_93

    :cond_10c
    move v2, v3

    goto/16 :goto_85

    :cond_10f
    move v4, v2

    move v2, v3

    goto/16 :goto_85
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2406
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2407
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2c

    move v1, v2

    move v3, v4

    .line 2416
    :goto_d
    if-eq v3, v0, :cond_33

    .line 2417
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2418
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2419
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;)Landroid/support/v4/view/af;

    move-result-object v6

    .line 2420
    if-eqz v6, :cond_31

    iget v6, v6, Landroid/support/v4/view/af;->b:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->h:I

    if-ne v6, v7, :cond_31

    .line 2421
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2427
    :goto_2b
    return v2

    .line 2412
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2414
    goto :goto_d

    .line 2416
    :cond_31
    add-int/2addr v3, v1

    goto :goto_d

    :cond_33
    move v2, v4

    .line 2427
    goto :goto_2b
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter

    .prologue
    .line 1079
    instance-of v0, p1, Landroid/support/v4/view/ak;

    if-nez v0, :cond_8

    .line 1080
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1095
    :goto_7
    return-void

    .line 1084
    :cond_8
    check-cast p1, Landroid/support/v4/view/ak;

    .line 1085
    invoke-virtual {p1}, Landroid/support/v4/view/ak;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1087
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v0, :cond_26

    .line 1088
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v1, p1, Landroid/support/v4/view/ak;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ak;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/x;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1089
    iget v0, p1, Landroid/support/v4/view/ak;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    goto :goto_7

    .line 1091
    :cond_26
    iget v0, p1, Landroid/support/v4/view/ak;->a:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 1092
    iget-object v0, p1, Landroid/support/v4/view/ak;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    .line 1093
    iget-object v0, p1, Landroid/support/v4/view/ak;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1068
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1069
    new-instance v1, Landroid/support/v4/view/ak;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ak;-><init>(Landroid/os/Parcelable;)V

    .line 1070
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    iput v0, v1, Landroid/support/v4/view/ak;->a:I

    .line 1071
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v0, :cond_19

    .line 1072
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/view/ak;->b:Landroid/os/Parcelable;

    .line 1074
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
    .line 1257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1260
    if-eq p1, p3, :cond_c

    .line 1261
    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    iget v1, p0, Landroid/support/v4/view/ViewPager;->n:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 1263
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1692
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->N:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 1806
    :goto_8
    return v0

    .line 1699
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    .line 1702
    goto :goto_8

    .line 1705
    :cond_17
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0}, Landroid/support/v4/view/x;->a()I

    move-result v0

    if-nez v0, :cond_25

    :cond_23
    move v0, v2

    .line 1707
    goto :goto_8

    .line 1710
    :cond_25
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2f

    .line 1711
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1713
    :cond_2f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1718
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_15a

    .line 1803
    :cond_3d
    :goto_3d
    :pswitch_3d
    if-eqz v2, :cond_42

    .line 1804
    invoke-static {p0}, Landroid/support/v4/view/M;->b(Landroid/view/View;)V

    :cond_42
    move v0, v1

    .line 1806
    goto :goto_8

    .line 1720
    :pswitch_44
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1721
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1722
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 1723
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 1724
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->d(I)V

    .line 1727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1728
    invoke-static {p1, v2}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    goto :goto_3d

    .line 1732
    :pswitch_62
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-nez v0, :cond_a7

    .line 1733
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1734
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1735
    iget v4, p0, Landroid/support/v4/view/ViewPager;->F:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1736
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1737
    iget v5, p0, Landroid/support/v4/view/ViewPager;->G:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1739
    iget v5, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_a7

    .line 1741
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->z:Z

    .line 1742
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_bb

    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_9f
    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1744
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->d(I)V

    .line 1745
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->a(Z)V

    .line 1749
    :cond_a7
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_3d

    .line 1751
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1753
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1754
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1755
    goto :goto_3d

    .line 1742
    :cond_bb
    iget v0, p0, Landroid/support/v4/view/ViewPager;->E:F

    iget v3, p0, Landroid/support/v4/view/ViewPager;->D:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_9f

    .line 1758
    :pswitch_c2
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_3d

    .line 1759
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1760
    const/16 v2, 0x3e8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->K:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1761
    iget v2, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {v0, v2}, Landroid/support/v4/view/H;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1763
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 1764
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 1765
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1766
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->k()Landroid/support/v4/view/af;

    move-result-object v4

    .line 1767
    iget v5, v4, Landroid/support/v4/view/af;->b:I

    .line 1768
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Landroid/support/v4/view/af;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Landroid/support/v4/view/af;->d:F

    div-float/2addr v2, v3

    .line 1769
    iget v3, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v3}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1771
    invoke-static {p1, v3}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1772
    iget v4, p0, Landroid/support/v4/view/ViewPager;->E:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1773
    invoke-direct {p0, v5, v2, v0, v3}, Landroid/support/v4/view/ViewPager;->a(IFII)I

    move-result v2

    .line 1775
    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->a(IZZI)V

    .line 1777
    iput v6, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 1778
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->l()V

    .line 1779
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v0}, Le/g;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v2}, Le/g;->c()Z

    move-result v2

    or-int/2addr v2, v0

    .line 1780
    goto/16 :goto_3d

    .line 1783
    :pswitch_11a
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->z:Z

    if-eqz v0, :cond_3d

    .line 1784
    iget v0, p0, Landroid/support/v4/view/ViewPager;->h:I

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 1785
    iput v6, p0, Landroid/support/v4/view/ViewPager;->H:I

    .line 1786
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->l()V

    .line 1787
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->O:Le/g;

    invoke-virtual {v0}, Le/g;->c()Z

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->P:Le/g;

    invoke-virtual {v2}, Le/g;->c()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_3d

    .line 1791
    :pswitch_137
    invoke-static {p1}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1792
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1793
    iput v3, p0, Landroid/support/v4/view/ViewPager;->F:F

    .line 1794
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    goto/16 :goto_3d

    .line 1798
    :pswitch_149
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1799
    iget v0, p0, Landroid/support/v4/view/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/s;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->F:F

    goto/16 :goto_3d

    .line 1718
    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_c2
        :pswitch_62
        :pswitch_11a
        :pswitch_3d
        :pswitch_137
        :pswitch_149
    .end packed-switch
.end method

.method public setAdapter(Landroid/support/v4/view/x;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v0, :cond_43

    .line 350
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/aj;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/x;->b(Landroid/database/DataSetObserver;)V

    .line 351
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 352
    :goto_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 353
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/af;

    .line 354
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget v4, v0, Landroid/support/v4/view/af;->b:I

    iget-object v0, v0, Landroid/support/v4/view/af;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/x;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 356
    :cond_31
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/x;->b(Landroid/view/ViewGroup;)V

    .line 357
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->i()V

    .line 359
    iput v2, p0, Landroid/support/v4/view/ViewPager;->h:I

    .line 360
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 363
    :cond_43
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    .line 364
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    .line 366
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    if-eqz v1, :cond_7a

    .line 367
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/aj;

    if-nez v1, :cond_56

    .line 368
    new-instance v1, Landroid/support/v4/view/aj;

    invoke-direct {v1, p0, v5}, Landroid/support/v4/view/aj;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ac;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/aj;

    .line 370
    :cond_56
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->m:Landroid/support/v4/view/aj;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/x;->a(Landroid/database/DataSetObserver;)V

    .line 371
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 372
    iput-boolean v6, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    .line 373
    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    if-ltz v1, :cond_86

    .line 374
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->g:Landroid/support/v4/view/x;

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/view/x;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 375
    iget v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    invoke-virtual {p0, v1, v2, v6}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 376
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->i:I

    .line 377
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->j:Landroid/os/Parcelable;

    .line 378
    iput-object v5, p0, Landroid/support/v4/view/ViewPager;->k:Ljava/lang/ClassLoader;

    .line 384
    :cond_7a
    :goto_7a
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/ah;

    if-eqz v1, :cond_85

    if-eq v0, p1, :cond_85

    .line 385
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->W:Landroid/support/v4/view/ah;

    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ah;->a(Landroid/support/v4/view/x;Landroid/support/v4/view/x;)V

    .line 387
    :cond_85
    return-void

    .line 380
    :cond_86
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    goto :goto_7a
.end method

.method public setCurrentItem(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 421
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 422
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->Q:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 423
    return-void

    :cond_c
    move v0, v1

    .line 422
    goto :goto_8
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->x:Z

    .line 433
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->a(IZZ)V

    .line 434
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 548
    if-ge p1, v0, :cond_26

    .line 549
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

    .line 553
    :cond_26
    iget v0, p0, Landroid/support/v4/view/ViewPager;->y:I

    if-eq p1, v0, :cond_2f

    .line 554
    iput p1, p0, Landroid/support/v4/view/ViewPager;->y:I

    .line 555
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->e()V

    .line 557
    :cond_2f
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->U:Landroid/support/v4/view/ai;

    .line 505
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .parameter

    .prologue
    .line 568
    iget v0, p0, Landroid/support/v4/view/ViewPager;->n:I

    .line 569
    iput p1, p0, Landroid/support/v4/view/ViewPager;->n:I

    .line 571
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 572
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->a(IIII)V

    .line 574
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 575
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .parameter

    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    .line 593
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 594
    :cond_7
    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 595
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 596
    return-void

    .line 594
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
