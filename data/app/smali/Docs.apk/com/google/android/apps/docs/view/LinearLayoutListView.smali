.class public Lcom/google/android/apps/docs/view/LinearLayoutListView;
.super Landroid/widget/FrameLayout;
.source "LinearLayoutListView.java"


# instance fields
.field public a:I

.field private a:LaaX;

.field a:LaaY;

.field private final a:Landroid/database/DataSetObserver;

.field a:Landroid/os/Handler;

.field public a:Landroid/widget/FrameLayout;

.field public a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListAdapter;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field public b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 289
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    new-instance v0, LaaR;

    invoke-direct {v0, p0}, LaaR;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/database/DataSetObserver;

    .line 240
    iput v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    .line 247
    iput v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    .line 259
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    .line 262
    sget-object v0, LaaY;->a:LaaY;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    .line 265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/os/Handler;

    .line 267
    iput-boolean v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    .line 269
    iput v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->c:I

    .line 292
    sget-object v0, Lda;->LinearLayoutListView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 296
    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->setChildWidth(I)V

    .line 298
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->g()V

    .line 301
    return-void
.end method

.method private a(I)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, LafQ;->b(Z)V

    .line 567
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 579
    :cond_25
    :goto_25
    if-eqz v0, :cond_2a

    .line 580
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 582
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 565
    :cond_31
    const/4 v0, 0x0

    goto :goto_9

    .line 571
    :cond_33
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_25

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 576
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_25
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)Landroid/widget/ListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 389
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b()V

    .line 390
    iput v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    .line 391
    iput v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    .line 392
    return-void
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 553
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v1, :cond_21

    :goto_10
    invoke-static {v1}, LafQ;->b(Z)V

    .line 554
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaX;

    if-eqz v1, :cond_20

    .line 557
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaX;

    invoke-interface {v1, p0, v0, p1}, LaaX;->a(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/view/View;I)V

    .line 559
    :cond_20
    return-void

    :cond_21
    move v1, v2

    .line 553
    goto :goto_10
.end method

.method private a(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    if-ltz p1, :cond_66

    move v0, v1

    :goto_5
    invoke-static {v0}, LafQ;->a(Z)V

    .line 479
    if-gt p1, p2, :cond_68

    move v0, v1

    :goto_b
    invoke-static {v0}, LafQ;->a(Z)V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    if-lez v0, :cond_6a

    move v0, v1

    :goto_18
    invoke-static {v0}, LafQ;->b(Z)V

    .line 482
    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    if-lez v0, :cond_6c

    :goto_1f
    invoke-static {v1}, LafQ;->b(Z)V

    .line 484
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    iget v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    iget v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    invoke-static {v0, v1, v2}, LaaY;->a(LaaY;II)I

    move-result v1

    .line 485
    div-int v0, p1, v1

    .line 486
    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p2, -0x1

    div-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 487
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    iget v4, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    invoke-direct {v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move v1, v0

    .line 488
    :goto_48
    if-gt v1, v2, :cond_6e

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_62

    .line 491
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(I)Landroid/view/View;

    move-result-object v4

    .line 492
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 488
    :cond_62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_48

    :cond_66
    move v0, v2

    .line 478
    goto :goto_5

    :cond_68
    move v0, v2

    .line 479
    goto :goto_b

    :cond_6a
    move v0, v2

    .line 481
    goto :goto_18

    :cond_6c
    move v1, v2

    .line 482
    goto :goto_1f

    .line 496
    :cond_6e
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 592
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v0, :cond_1f

    :goto_8
    invoke-static {v0}, LafQ;->b(Z)V

    .line 593
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 599
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 601
    return-void

    :cond_1f
    move v0, v1

    .line 592
    goto :goto_8
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/LinearLayoutListView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/view/LinearLayoutListView;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    return v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->f()V

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 400
    return-void
.end method

.method private b(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    iget v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    iget v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    invoke-static {v0, v1, v2}, LaaY;->a(LaaY;II)I

    move-result v4

    .line 521
    div-int v3, p1, v4

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, LaaY;->a(LaaY;II)I

    move-result v0

    .line 523
    add-int v5, p2, v0

    .line 524
    add-int/2addr v0, p1

    .line 525
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 528
    if-le p2, p1, :cond_4c

    .line 529
    div-int v0, p2, v4

    .line 530
    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v3

    .line 531
    :goto_3b
    if-gt v2, v6, :cond_4c

    .line 532
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 533
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(ILandroid/view/ViewGroup;)V

    .line 531
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3b

    .line 538
    :cond_4c
    if-ge p2, p1, :cond_74

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v5, -0x1

    div-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 540
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 541
    :goto_63
    if-lt v1, v2, :cond_74

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 543
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(ILandroid/view/ViewGroup;)V

    .line 541
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_63

    .line 546
    :cond_74
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->c()V

    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_11

    .line 417
    :goto_10
    return-void

    .line 413
    :cond_11
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->d()V

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    invoke-static {v0, v1, v2}, LaaY;->a(LaaY;II)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, LaaY;->a(LaaY;II)I

    move-result v1

    .line 416
    add-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(II)V

    goto :goto_10
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    if-ne v0, v1, :cond_11

    .line 426
    :cond_e
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->e()V

    .line 429
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 430
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    iget v3, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 431
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v1, :cond_3e

    .line 432
    new-instance v3, LaaU;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, LaaU;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)V

    .line 433
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, LaaU;->setTag(Ljava/lang/Object;)V

    .line 434
    invoke-virtual {v3, v2}, LaaU;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v4, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 437
    :cond_3e
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5e

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, LafQ;->b(Z)V

    .line 446
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(I)Landroid/view/View;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 449
    if-nez v0, :cond_22

    .line 450
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 452
    :cond_22
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->c:I

    .line 455
    if-ne v0, v3, :cond_2d

    .line 456
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getWidth()I

    move-result v0

    .line 459
    :cond_2d
    iget-object v3, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    const/high16 v3, -0x8000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    .line 463
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:I

    .line 464
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b:I

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void

    :cond_5e
    move v0, v1

    .line 444
    goto :goto_10
.end method

.method private f()V
    .registers 4

    .prologue
    .line 607
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 609
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1b

    .line 610
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(ILandroid/view/ViewGroup;)V

    .line 607
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 613
    :cond_1f
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p0, v1}, LaaY;->a(LaaY;Lcom/google/android/apps/docs/view/LinearLayoutListView;Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    .line 620
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    .line 621
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    invoke-static {v1}, LaaY;->a(LaaY;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 623
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->addView(Landroid/view/View;)V

    .line 624
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 502
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    if-eqz v0, :cond_6

    .line 512
    :goto_5
    return-void

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    invoke-static {v0, p1, p2}, LaaY;->a(LaaY;II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    invoke-static {v1, p3, p4}, LaaY;->a(LaaY;II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->getHeight()I

    move-result v4

    invoke-static {v2, v3, v4}, LaaY;->a(LaaY;II)I

    move-result v2

    .line 510
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b(II)V

    .line 511
    add-int v1, v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a(II)V

    goto :goto_5
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_b
    const-string v2, "Adapters with multiple view types not supported."

    invoke-static {v0, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1b

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 315
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/database/DataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a()V

    .line 318
    iput-boolean v1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/os/Handler;

    new-instance v1, LaaS;

    invoke-direct {v1, p0}, LaaS;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void

    .line 308
    :cond_34
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setChildWidth(I)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput p1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->c:I

    .line 364
    return-void
.end method

.method public setOnItemClickListener(LaaX;)V
    .registers 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaX;

    .line 373
    return-void
.end method

.method public setOrientation(LaaY;)V
    .registers 4
    .parameter

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->b()V

    .line 341
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->removeAllViews()V

    .line 342
    iput-object p1, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:LaaY;

    .line 343
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/LinearLayoutListView;->g()V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Z

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/docs/view/LinearLayoutListView;->a:Landroid/os/Handler;

    new-instance v1, LaaT;

    invoke-direct {v1, p0}, LaaT;-><init>(Lcom/google/android/apps/docs/view/LinearLayoutListView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method
