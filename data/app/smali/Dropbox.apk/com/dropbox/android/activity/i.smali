.class final Lcom/dropbox/android/activity/i;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/i;->b:Z

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/i;->c:Z

    .line 395
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    .line 398
    iput-object p1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    .line 399
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/i;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    iget-boolean v0, p0, Lcom/dropbox/android/activity/i;->c:Z

    if-nez v0, :cond_2d

    .line 417
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 418
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/m;

    .line 419
    iget-boolean v1, p0, Lcom/dropbox/android/activity/i;->b:Z

    if-eqz v1, :cond_40

    .line 420
    iget-object v1, v0, Lcom/dropbox/android/activity/m;->a:Ljava/lang/CharSequence;

    if-nez v1, :cond_2e

    .line 421
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    :goto_28
    iput-boolean v3, p0, Lcom/dropbox/android/activity/i;->b:Z

    .line 428
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/i;->a(Lcom/dropbox/android/activity/m;)V

    .line 464
    :cond_2d
    :goto_2d
    return-void

    .line 423
    :cond_2e
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dropbox/android/activity/m;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v1, v0, Lcom/dropbox/android/activity/m;->b:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/i;->a(Landroid/content/res/ColorStateList;)V

    .line 425
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28

    .line 430
    :cond_40
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_66

    .line 431
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 432
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 433
    new-instance v2, Lcom/dropbox/android/activity/j;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/j;-><init>(Lcom/dropbox/android/activity/i;Lcom/dropbox/android/activity/m;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/i;->c:Z

    .line 458
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2d

    .line 460
    :cond_66
    invoke-direct {p0}, Lcom/dropbox/android/activity/i;->b()V

    goto :goto_2d
.end method

.method private a(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter

    .prologue
    .line 491
    if-eqz p1, :cond_7

    .line 492
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 494
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/i;Lcom/dropbox/android/activity/m;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/i;->a(Lcom/dropbox/android/activity/m;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/activity/m;)V
    .registers 4
    .parameter

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/i;->c:Z

    .line 500
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    .line 501
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/m;

    .line 502
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 503
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 505
    invoke-direct {p0}, Lcom/dropbox/android/activity/i;->a()V

    .line 508
    :cond_27
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/m;

    .line 468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dropbox/android/activity/i;->c:Z

    .line 469
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 470
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v1, v0, Lcom/dropbox/android/activity/m;->b:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/i;->a(Landroid/content/res/ColorStateList;)V

    .line 472
    iget-object v1, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/dropbox/android/activity/m;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 474
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 475
    new-instance v2, Lcom/dropbox/android/activity/l;

    invoke-direct {v2, p0, v0}, Lcom/dropbox/android/activity/l;-><init>(Lcom/dropbox/android/activity/i;Lcom/dropbox/android/activity/m;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 487
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/i;)V
    .registers 1
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/dropbox/android/activity/i;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    if-nez p3, :cond_1a

    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/m;

    iget-object v0, v0, Lcom/dropbox/android/activity/m;->a:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_1a
    const/4 v0, 0x1

    .line 409
    :goto_1b
    if-eqz v0, :cond_2a

    .line 410
    iget-object v0, p0, Lcom/dropbox/android/activity/i;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/dropbox/android/activity/m;

    invoke-direct {v1, p1, p2}, Lcom/dropbox/android/activity/m;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-direct {p0}, Lcom/dropbox/android/activity/i;->a()V

    .line 413
    :cond_2a
    return-void

    .line 406
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final a(Ljava/lang/CharSequence;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dropbox/android/activity/i;->a(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 403
    return-void
.end method
