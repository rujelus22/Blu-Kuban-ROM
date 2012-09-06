.class public Lcom/google/googlenav/ui/android/FloorPickerView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lan/y;
.implements Ll/s;


# instance fields
.field private a:I

.field private b:Ln/w;

.field private c:Ll/q;

.field private d:I

.field private volatile e:Ln/B;

.field private f:Lcom/google/googlenav/ui/android/V;

.field private final g:Ljava/util/Set;

.field private final h:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/android/FloorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Resources;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Resources;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Resources;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    .line 84
    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    .line 98
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Ljava/util/Set;

    .line 304
    iput-object p3, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Landroid/content/res/Resources;

    .line 305
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->h:Landroid/content/res/Resources;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x7c

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/FloorPickerView;Ln/w;Ln/B;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/w;Ln/B;)V

    return-void
.end method

.method private a(Ln/w;Ln/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/w;)V

    .line 503
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    if-nez v0, :cond_8

    .line 509
    :goto_7
    return-void

    .line 506
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Ln/w;Ln/B;)I

    move-result v0

    .line 507
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setSelectedPosition(I)V

    .line 508
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b()V

    goto :goto_7
.end method

.method private static a(Ln/x;)V
    .registers 4
    .parameter

    .prologue
    .line 659
    if-nez p0, :cond_12

    const-string v0, "none"

    .line 660
    :goto_4
    const-string v1, "l"

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    const/16 v1, 0x68

    const-string v2, "s"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    return-void

    .line 659
    :cond_12
    invoke-virtual {p0}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-virtual {v0}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Ln/w;Ln/w;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Ln/w;Ln/w;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/FloorPickerView;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    return v0
.end method

.method private static b(Ln/w;Ln/B;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 609
    if-nez p0, :cond_4

    .line 624
    :cond_3
    :goto_3
    return v0

    .line 613
    :cond_4
    if-nez p1, :cond_11

    .line 614
    invoke-virtual {p0}, Ln/w;->d()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 615
    const/4 v1, 0x0

    .line 624
    :cond_d
    :goto_d
    if-ltz v1, :cond_3

    move v0, v1

    goto :goto_3

    .line 618
    :cond_11
    invoke-virtual {p0, p1}, Ln/w;->b(Ln/B;)I

    move-result v1

    .line 619
    if-ltz v1, :cond_d

    invoke-virtual {p0}, Ln/w;->d()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_20
    move v1, v0

    goto :goto_d
.end method

.method private b()V
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 516
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->smoothScrollToPosition(I)V

    .line 518
    :cond_a
    return-void
.end method

.method private b(Ln/w;)V
    .registers 5
    .parameter

    .prologue
    .line 648
    const-string v0, "b"

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v1}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    const/16 v1, 0x68

    const-string v2, "f"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method private static b(Ln/w;Ln/w;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 407
    if-ne p0, p1, :cond_4

    .line 408
    const/4 v0, 0x1

    .line 413
    :goto_3
    return v0

    .line 410
    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    .line 411
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 413
    :cond_a
    invoke-virtual {p0}, Ln/w;->a()Ln/p;

    move-result-object v0

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/FloorPickerView;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    if-nez v0, :cond_5

    .line 585
    :cond_4
    :goto_4
    return-void

    .line 573
    :cond_5
    const/4 v0, -0x1

    .line 576
    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Ln/B;

    if-eqz v1, :cond_12

    .line 577
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Ln/B;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Ln/w;Ln/B;)I

    move-result v0

    .line 580
    :cond_12
    iget v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    if-eq v0, v1, :cond_4

    .line 583
    iput v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    .line 584
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/V;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method static synthetic d(Lcom/google/googlenav/ui/android/FloorPickerView;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 1
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b()V

    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/android/FloorPickerView;)Ln/w;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 521
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    return v0
.end method

.method public a(ILan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 466
    return-void
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 452
    if-eqz v0, :cond_1f

    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {v0}, Lan/s;->b()Ln/B;

    move-result-object v0

    .line 454
    :goto_e
    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Ln/B;

    .line 455
    invoke-static {v1, v0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 456
    new-instance v1, Lcom/google/googlenav/ui/android/T;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/android/T;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ln/B;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_1e
    return-void

    .line 452
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method a(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 598
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 599
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    if-eqz v0, :cond_13

    .line 600
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/V;->notifyDataSetChanged()V

    .line 602
    :cond_13
    return-void
.end method

.method public a(Ll/q;)V
    .registers 3
    .parameter

    .prologue
    .line 419
    new-instance v0, Lcom/google/googlenav/ui/android/R;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/android/R;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ll/q;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method public a(Ll/q;Ln/w;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 430
    new-instance v0, Lcom/google/googlenav/ui/android/S;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/android/S;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ll/q;Ln/w;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method a(Ln/B;)V
    .registers 2
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->e:Ln/B;

    .line 560
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c()V

    .line 561
    return-void
.end method

.method a(Ln/w;)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 343
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Ln/w;Ln/w;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 402
    :cond_f
    :goto_f
    return-void

    .line 349
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->clearAnimation()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    .line 351
    iput v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->d:I

    .line 352
    iput v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    .line 354
    if-eqz p1, :cond_5e

    .line 355
    invoke-virtual {p1}, Ln/w;->d()Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    .line 356
    :goto_23
    invoke-virtual {p1}, Ln/w;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_5e

    .line 357
    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    .line 359
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 360
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 361
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 362
    new-instance v1, Lcom/google/googlenav/ui/android/P;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/P;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    new-instance v0, Lcom/google/googlenav/ui/android/V;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/android/V;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;Landroid/content/Context;Ln/w;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 375
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c()V

    .line 379
    :cond_5e
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/FloorPickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 380
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->setVisibility(I)V

    .line 381
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 382
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 388
    new-instance v1, Lcom/google/googlenav/ui/android/Q;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/Q;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_f

    .line 355
    :cond_81
    const/4 v0, 0x2

    goto :goto_23
.end method

.method public b(Ll/q;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    return-void
.end method

.method c(Ll/q;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1}, Ll/q;->c()Ln/w;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_1d

    .line 489
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Ln/w;)V

    .line 490
    invoke-virtual {v2}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {p1, v1}, Ll/q;->b(Ln/p;)Ln/C;

    move-result-object v1

    .line 493
    :goto_12
    if-nez v1, :cond_18

    :goto_14
    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/w;Ln/B;)V

    .line 494
    return-void

    .line 493
    :cond_18
    invoke-virtual {v1}, Ln/C;->c()Ln/B;

    move-result-object v0

    goto :goto_14

    :cond_1d
    move-object v1, v0

    goto :goto_12
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 633
    new-instance v0, Lcom/google/googlenav/ui/android/U;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/U;-><init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public setIndoorState(Ll/q;)V
    .registers 3
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    invoke-virtual {v0, p0}, Ll/q;->b(Ll/s;)V

    .line 328
    :cond_9
    if-eqz p1, :cond_11

    .line 331
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ll/q;)V

    .line 332
    invoke-virtual {p1, p0}, Ll/q;->a(Ll/s;)V

    .line 334
    :cond_11
    iput-object p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    .line 335
    return-void
.end method

.method public setSelectedLevel(Ln/w;Ln/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 477
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ln/x;->a()Ln/B;

    move-result-object v0

    .line 478
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/w;Ln/B;)V

    .line 479
    return-void

    .line 477
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setSelectedPosition(I)V
    .registers 4
    .parameter

    .prologue
    .line 525
    iget v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    if-ne p1, v0, :cond_5

    .line 549
    :cond_4
    :goto_4
    return-void

    .line 528
    :cond_5
    iput p1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->a:I

    .line 529
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->f:Lcom/google/googlenav/ui/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/V;->notifyDataSetChanged()V

    .line 531
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 535
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/FloorPickerView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/W;

    .line 536
    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/W;->a()Ln/x;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/x;)V

    .line 542
    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    if-eqz v1, :cond_4

    .line 543
    if-nez v0, :cond_2c

    .line 544
    iget-object v0, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->b:Ln/w;

    invoke-virtual {v0, v1}, Ll/q;->a(Ln/w;)V

    goto :goto_4

    .line 546
    :cond_2c
    iget-object v1, p0, Lcom/google/googlenav/ui/android/FloorPickerView;->c:Ll/q;

    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll/q;->a(Ln/B;)V

    goto :goto_4
.end method
