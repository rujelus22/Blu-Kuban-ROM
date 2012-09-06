.class public Lcom/dropbox/android/widget/FileItemView;
.super Landroid/widget/FrameLayout;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/taskqueue/E;


# static fields
.field private static final G:Ljava/lang/String;


# instance fields
.field protected A:Lcom/dropbox/android/widget/L;

.field protected B:Lcom/dropbox/android/widget/T;

.field protected final C:Lcom/dropbox/android/util/E;

.field protected D:Lcom/dropbox/android/util/D;

.field protected E:Ljava/lang/String;

.field protected F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/ProgressBar;

.field private J:Lcom/dropbox/android/widget/Q;

.field private K:Lcom/dropbox/android/activity/delegate/x;

.field private L:Landroid/app/Activity;

.field private M:Landroid/content/Context;

.field protected a:Landroid/view/View;

.field protected b:Lcom/dropbox/android/widget/S;

.field protected c:Z

.field protected d:Ljava/lang/String;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/FrameLayout;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/ImageView;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/CheckBox;

.field protected o:Landroid/view/View;

.field protected p:Landroid/view/View;

.field protected q:Landroid/content/Context;

.field protected final r:Lcom/dropbox/android/widget/aa;

.field protected s:Ldbxyzptlk/i/f;

.field protected t:I

.field protected u:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected v:Lcom/dropbox/android/filemanager/v;

.field protected w:Lcom/dropbox/android/taskqueue/q;

.field protected x:I

.field protected final y:Lcom/dropbox/android/widget/R;

.field protected z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-class v0, Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/widget/FileItemView;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/widget/aa;Lcom/dropbox/android/util/E;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 112
    iput-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    .line 142
    new-instance v0, Lcom/dropbox/android/widget/R;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/R;-><init>(Lcom/dropbox/android/widget/FileItemView;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->z:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/dropbox/android/widget/L;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/widget/L;-><init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/widget/C;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->A:Lcom/dropbox/android/widget/L;

    .line 145
    new-instance v0, Lcom/dropbox/android/widget/T;

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/widget/T;-><init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/widget/C;)V

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->B:Lcom/dropbox/android/widget/T;

    .line 148
    iput-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    .line 186
    iput-object p3, p0, Lcom/dropbox/android/widget/FileItemView;->C:Lcom/dropbox/android/util/E;

    .line 187
    invoke-virtual {p0, p1}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/widget/FileItemView;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->L:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Q;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    if-eqz v0, :cond_1b

    .line 785
    iput-object p3, p0, Lcom/dropbox/android/widget/FileItemView;->J:Lcom/dropbox/android/widget/Q;

    .line 786
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    new-instance v1, Lcom/dropbox/android/widget/G;

    invoke-direct {v1, p0, p1, p2}, Lcom/dropbox/android/widget/G;-><init>(Lcom/dropbox/android/widget/FileItemView;Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 800
    :cond_1b
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 4
    .parameter

    .prologue
    .line 500
    const-string v0, "local_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 643
    if-eqz p2, :cond_ba

    .line 644
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_68

    .line 645
    :cond_15
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/view/View;)V

    .line 646
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    if-eqz v3, :cond_21

    move v0, v1

    :cond_21
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    :goto_24
    if-eqz p1, :cond_c6

    invoke-static {p1}, Lcom/dropbox/android/util/aX;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 669
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 670
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 676
    :goto_3b
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 683
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 684
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 685
    return-void

    .line 648
    :cond_68
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 650
    const v2, 0x7f0d00ca

    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 651
    const v2, 0x7f0d00cb

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 652
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 653
    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 657
    iget-boolean v2, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    if-nez v2, :cond_a3

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a3

    .line 658
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/FileItemView;->b(Landroid/view/View;)V

    :cond_a1
    :goto_a1
    move-object p1, v0

    .line 663
    goto :goto_24

    .line 659
    :cond_a3
    iget-boolean v2, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_a1

    .line 660
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/view/View;)V

    .line 661
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a1

    .line 665
    :cond_ba
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    if-eqz v3, :cond_c1

    move v0, v1

    :cond_c1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_24

    .line 672
    :cond_c6
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 673
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3b
.end method

.method private a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 636
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 637
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 639
    return-void
.end method

.method private a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    const-string v0, "id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 882
    new-instance v2, Lcom/dropbox/android/widget/P;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/android/widget/P;-><init>(J)V

    invoke-direct {p0, p2, p1, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Q;)V

    .line 883
    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 5
    .parameter

    .prologue
    .line 688
    iget-boolean v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z

    if-eqz v0, :cond_25

    .line 689
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->w:Lcom/dropbox/android/taskqueue/q;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 694
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/dropbox/android/widget/E;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/widget/E;-><init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 726
    :goto_24
    return-void

    .line 718
    :cond_25
    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->j:Ljava/lang/String;

    .line 719
    if-nez v0, :cond_32

    .line 720
    sget-object v0, Lcom/dropbox/android/widget/FileItemView;->G:Ljava/lang/String;

    const-string v1, "Null name received for icon"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v0, ""

    .line 724
    :cond_32
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->a(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 554
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_d

    .line 555
    invoke-direct {p0, v4}, Lcom/dropbox/android/widget/FileItemView;->a(Z)V

    .line 598
    :goto_c
    return-void

    .line 557
    :cond_d
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 560
    iget-boolean v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_26

    .line 562
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_c

    .line 565
    :cond_26
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    iget-wide v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    invoke-static {v0, v1, v2, v5}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 572
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    sget-object v2, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    if-ne v0, v2, :cond_66

    invoke-virtual {p1}, Lcom/dropbox/android/filemanager/LocalEntry;->a()Z

    move-result v0

    if-nez v0, :cond_66

    .line 574
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09004d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_4a
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 578
    :cond_66
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    sget-object v2, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    if-ne v0, v2, :cond_7e

    .line 584
    :goto_6c
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    sget-object v3, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    if-ne v0, v3, :cond_89

    const v0, 0x7f090052

    :goto_79
    invoke-static {v2, v0, p2, p3}, Lcom/dropbox/android/util/aX;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    .line 581
    :cond_7e
    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->l:Ljava/lang/String;

    invoke-static {v0}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aX;->a(Ljava/util/Date;)J

    move-result-wide p2

    goto :goto_6c

    .line 584
    :cond_89
    const v0, 0x7f090051

    goto :goto_79
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;JLandroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Y;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    sget-object v1, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    if-ne v0, v1, :cond_90

    iget-boolean v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-nez v0, :cond_90

    const/4 v4, 0x1

    .line 462
    :goto_b
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/filemanager/v;->c(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v0

    if-nez v0, :cond_93

    const/4 v5, 0x1

    .line 463
    :goto_14
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/filemanager/v;->d(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v0

    if-nez v0, :cond_95

    const/4 v6, 0x1

    .line 465
    :goto_1d
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/filemanager/LocalEntry;J)V

    .line 469
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/FileItemView;->b(Lcom/dropbox/android/filemanager/LocalEntry;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    .line 473
    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;ZZZ)V

    .line 476
    if-nez v4, :cond_97

    if-nez v5, :cond_97

    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->setEnabled(Z)V

    .line 477
    if-nez v4, :cond_40

    if-eqz v5, :cond_6a

    .line 479
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    const/16 v1, 0xb3

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 482
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    const/16 v1, 0xb3

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 486
    :cond_6a
    invoke-virtual {p6, p1}, Lcom/dropbox/android/widget/Y;->a(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 487
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 488
    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 490
    new-instance v0, Lcom/dropbox/android/widget/D;

    invoke-direct {v0, p0}, Lcom/dropbox/android/widget/D;-><init>(Lcom/dropbox/android/widget/FileItemView;)V

    const-wide/16 v1, 0x384

    invoke-virtual {p0, v0, v1, v2}, Lcom/dropbox/android/widget/FileItemView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    :cond_8f
    return-void

    .line 461
    :cond_90
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 462
    :cond_93
    const/4 v5, 0x0

    goto :goto_14

    .line 463
    :cond_95
    const/4 v6, 0x0

    goto :goto_1d

    .line 476
    :cond_97
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;ZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 856
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;

    move-result-object v0

    instance-of v0, v0, Ldbxyzptlk/i/d;

    .line 858
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    if-nez p4, :cond_25

    if-eqz p6, :cond_14

    if-eqz p5, :cond_14

    if-eqz v0, :cond_25

    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 860
    new-instance v0, Lcom/dropbox/android/widget/N;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->M:Landroid/content/Context;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    invoke-direct {v0, p1, v1, v2}, Lcom/dropbox/android/widget/N;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;Lcom/dropbox/android/widget/aa;)V

    invoke-direct {p0, p3, p2, v0}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Q;)V

    .line 861
    return-void

    .line 858
    :cond_25
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static synthetic a(Lcom/dropbox/android/widget/FileItemView;Landroid/graphics/drawable/Drawable;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private a(Lcom/dropbox/android/widget/X;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 908
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v3

    .line 909
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->f()Ljava/lang/String;

    move-result-object v4

    .line 910
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    .line 911
    if-eqz v4, :cond_c9

    .line 913
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->b()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 916
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->a()Ljava/lang/String;

    move-result-object v5

    .line 917
    iget v6, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    invoke-virtual {v3, v5, v6, v7, v0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v5

    .line 919
    if-eqz v5, :cond_2e

    iget-object v0, v5, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    .line 920
    :cond_2e
    iget-object v5, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 921
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 935
    :goto_3e
    iget v5, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    iget-object v6, p0, Lcom/dropbox/android/widget/FileItemView;->A:Lcom/dropbox/android/widget/L;

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v3

    .line 937
    if-eqz v3, :cond_56

    .line 938
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v3, v3, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 939
    invoke-direct {p0, v4, v0}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 966
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    const v3, 0x7f09010d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 968
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->i()Lcom/dropbox/android/taskqueue/P;

    move-result-object v3

    .line 971
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->j()Z

    move-result v0

    if-nez v0, :cond_85

    .line 972
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->h()I

    move-result v0

    .line 973
    if-lez v0, :cond_85

    .line 974
    iget-object v4, p0, Lcom/dropbox/android/widget/FileItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    if-ne v0, v1, :cond_11a

    .line 977
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09011d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 982
    :goto_80
    iget-object v4, p0, Lcom/dropbox/android/widget/FileItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    :cond_85
    sget-object v0, Lcom/dropbox/android/widget/K;->b:[I

    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/P;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_1a0

    .line 1019
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->j()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1020
    const v0, 0x7f090117

    .line 1035
    :goto_99
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1037
    :goto_a3
    return-void

    .line 924
    :cond_a4
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->c()Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 926
    iget-object v5, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 930
    goto/16 :goto_3e

    .line 932
    :cond_c1
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v2

    goto/16 :goto_3e

    .line 941
    :cond_c9
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->d()Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 943
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->e()Ljava/lang/String;

    move-result-object v4

    .line 945
    if-eqz v4, :cond_19c

    .line 946
    iget v5, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    invoke-virtual {v3, v4, v5, v7, v0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v3

    .line 949
    :goto_db
    if-eqz v3, :cond_df

    iget-object v0, v3, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    .line 950
    :cond_df
    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 951
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->b(Landroid/view/View;)V

    .line 956
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->b(Landroid/view/View;)V

    goto/16 :goto_56

    .line 958
    :cond_ff
    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_56

    .line 979
    :cond_11a
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_80

    .line 990
    :pswitch_133
    const v0, 0x7f090047

    .line 991
    goto/16 :goto_99

    .line 993
    :pswitch_138
    const v0, 0x7f090115

    .line 994
    goto/16 :goto_99

    .line 996
    :pswitch_13d
    const v0, 0x7f090114

    .line 997
    goto/16 :goto_99

    .line 999
    :pswitch_142
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/y;->a(Landroid/content/Context;)Lcom/dropbox/android/util/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/C;->b()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 1000
    const v0, 0x7f090119

    goto/16 :goto_99

    .line 1002
    :cond_155
    const v0, 0x7f090118

    .line 1004
    goto/16 :goto_99

    .line 1007
    :pswitch_15a
    invoke-virtual {p1}, Lcom/dropbox/android/widget/X;->k()Ldbxyzptlk/i/i;

    move-result-object v0

    .line 1008
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    .line 1009
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_175

    .line 1010
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    invoke-virtual {v0, v2}, Ldbxyzptlk/i/f;->registerObserver(Landroid/database/ContentObserver;)V

    .line 1013
    :cond_175
    invoke-direct {p0, v1, v1}, Lcom/dropbox/android/widget/FileItemView;->a(ZZ)V

    goto/16 :goto_a3

    .line 1016
    :pswitch_17a
    const v0, 0x7f090044

    .line 1017
    goto/16 :goto_99

    .line 1021
    :cond_17f
    sget-object v0, Lcom/dropbox/android/taskqueue/P;->f:Lcom/dropbox/android/taskqueue/P;

    if-ne v3, v0, :cond_197

    .line 1025
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->g()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 1026
    const v0, 0x7f09010e

    goto/16 :goto_99

    .line 1028
    :cond_192
    const v0, 0x7f09010f

    goto/16 :goto_99

    .line 1031
    :cond_197
    const v0, 0x7f09010e

    goto/16 :goto_99

    :cond_19c
    move-object v3, v0

    goto/16 :goto_db

    .line 988
    nop

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_133
        :pswitch_138
        :pswitch_13d
        :pswitch_142
        :pswitch_15a
        :pswitch_15a
        :pswitch_17a
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 729
    .line 730
    if-nez p1, :cond_30

    .line 731
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    const-string v1, "page_white"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 744
    :cond_a
    :goto_a
    if-eqz v0, :cond_17

    .line 745
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 746
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    :cond_17
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 751
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 753
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 754
    return-void

    .line 733
    :cond_30
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    if-nez v0, :cond_a

    .line 735
    sget-object v0, Lcom/dropbox/android/widget/FileItemView;->G:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load media icon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-eqz p1, :cond_63

    const-string v0, "folder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 737
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    const-string v1, "folder"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    .line 739
    :cond_63
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    const-string v1, "page_white"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/an;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 507
    if-nez p2, :cond_7

    .line 508
    invoke-static {p1}, Lcom/dropbox/android/util/aa;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 511
    :cond_7
    invoke-static {p2}, Lcom/dropbox/android/util/aa;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 512
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->C:Lcom/dropbox/android/util/E;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/E;->a(Ljava/lang/String;)Lcom/dropbox/android/util/D;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_2d

    .line 516
    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->D:Lcom/dropbox/android/util/D;

    .line 517
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v1, v3}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 535
    :goto_2c
    return-void

    .line 519
    :cond_2d
    iput-object p1, p0, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    .line 520
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    iget v2, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/dropbox/android/widget/FileItemView;->B:Lcom/dropbox/android/widget/T;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;

    goto :goto_2c

    .line 526
    :cond_3e
    invoke-static {p1}, Lcom/dropbox/android/util/aa;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    if-nez v0, :cond_50

    if-eqz p2, :cond_50

    .line 528
    invoke-static {p2}, Lcom/dropbox/android/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    if-eqz v1, :cond_50

    .line 530
    invoke-static {v1}, Lcom/dropbox/android/util/aa;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_50
    invoke-direct {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->a(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private a(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    instance-of v0, v0, Ldbxyzptlk/i/j;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/j;

    invoke-virtual {v0}, Ldbxyzptlk/i/j;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3f

    .line 543
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/j;

    invoke-virtual {v0}, Ldbxyzptlk/i/j;->c()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 544
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 545
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 550
    :goto_39
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    return-void

    .line 547
    :cond_3f
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_39
.end method

.method private a(ZZ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xb3

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v3, 0xff

    .line 601
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_a9

    .line 602
    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    instance-of v0, v0, Ldbxyzptlk/i/j;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/j;

    invoke-virtual {v0}, Ldbxyzptlk/i/j;->c()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    .line 604
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/j;

    invoke-virtual {v0}, Ldbxyzptlk/i/j;->c()F

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 606
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    :cond_37
    :goto_37
    return-void

    .line 609
    :cond_38
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldbxyzptlk/i/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    instance-of v0, v0, Ldbxyzptlk/i/k;

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/k;

    invoke-virtual {v0}, Ldbxyzptlk/i/k;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    if-eq v0, v1, :cond_6f

    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/k;

    invoke-virtual {v0}, Ldbxyzptlk/i/k;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    if-ne v0, v1, :cond_98

    .line 617
    :cond_6f
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 618
    if-eqz p2, :cond_37

    .line 619
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 621
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_37

    .line 625
    :cond_98
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_37

    .line 629
    :cond_a9
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37
.end method

.method static synthetic b(Lcom/dropbox/android/widget/FileItemView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->M:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1040
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1041
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1042
    new-instance v1, Lcom/dropbox/android/widget/H;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/widget/H;-><init>(Lcom/dropbox/android/widget/FileItemView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1054
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    return-void
.end method

.method private b(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    sget-object v0, Lcom/dropbox/android/provider/f;->b:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 903
    new-instance v2, Lcom/dropbox/android/widget/O;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/android/widget/O;-><init>(J)V

    invoke-direct {p0, p2, p1, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Q;)V

    .line 904
    return-void
.end method

.method private b(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 6
    .parameter

    .prologue
    const v0, 0x7f0200f0

    const/4 v1, 0x0

    .line 757
    .line 758
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->r:Lcom/dropbox/android/widget/aa;

    sget-object v3, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    if-ne v2, v3, :cond_23

    .line 759
    invoke-virtual {p1}, Lcom/dropbox/android/filemanager/LocalEntry;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 769
    :cond_10
    :goto_10
    if-lez v0, :cond_1c

    .line 770
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 771
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    :cond_1c
    iput v0, p0, Lcom/dropbox/android/widget/FileItemView;->x:I

    .line 777
    return-void

    .line 762
    :cond_1f
    const v0, 0x7f0200f1

    goto :goto_10

    .line 765
    :cond_23
    iget-boolean v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-nez v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method static synthetic c(Lcom/dropbox/android/widget/FileItemView;)Lcom/dropbox/android/widget/Q;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->J:Lcom/dropbox/android/widget/Q;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/dropbox/android/widget/FileItemView;->G:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 250
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 251
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->J:Lcom/dropbox/android/widget/Q;

    .line 252
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->K:Lcom/dropbox/android/activity/delegate/x;

    .line 253
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->L:Landroid/app/Activity;

    .line 254
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 255
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->w:Lcom/dropbox/android/taskqueue/q;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/dropbox/android/taskqueue/q;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/E;)V

    .line 256
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    .line 259
    :cond_18
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_25

    .line 260
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/f;->unregisterObserver(Ljava/lang/Object;)V

    .line 261
    iput-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    .line 264
    :cond_25
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->a()V

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->setEnabled(Z)V

    .line 267
    invoke-virtual {p0, v2}, Lcom/dropbox/android/widget/FileItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 269
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 270
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 272
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 273
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->b:Lcom/dropbox/android/widget/S;

    sget-object v1, Lcom/dropbox/android/widget/S;->e:Lcom/dropbox/android/widget/S;

    if-eq v0, v1, :cond_6a

    .line 278
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    :cond_6a
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 284
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->p:Landroid/view/View;

    if-eqz v0, :cond_a2

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_a2
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->D:Lcom/dropbox/android/util/D;

    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->D:Lcom/dropbox/android/util/D;

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->D:Lcom/dropbox/android/util/D;

    .line 247
    :cond_c
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 220
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    .line 221
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->w:Lcom/dropbox/android/taskqueue/q;

    .line 223
    const/high16 v0, 0x7f03

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->addView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->h:Landroid/widget/ImageView;

    .line 229
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->f:Landroid/widget/FrameLayout;

    .line 230
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->g:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->i:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->j:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->k:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->m:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->o:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0049

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->I:Landroid/widget/ProgressBar;

    .line 239
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->a:Landroid/view/View;

    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->n:Landroid/widget/CheckBox;

    .line 240
    return-void
.end method

.method public final a(Landroid/database/Cursor;Lcom/dropbox/android/widget/quickactions/QuickActionBar;Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Y;Lcom/dropbox/android/widget/X;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-static {p1}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->b:Lcom/dropbox/android/widget/S;

    .line 309
    iput-boolean v1, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    .line 311
    invoke-direct {p0}, Lcom/dropbox/android/widget/FileItemView;->d()V

    .line 313
    iput-object p2, p0, Lcom/dropbox/android/widget/FileItemView;->F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 314
    iput-object p5, p0, Lcom/dropbox/android/widget/FileItemView;->K:Lcom/dropbox/android/activity/delegate/x;

    .line 315
    iput-object p3, p0, Lcom/dropbox/android/widget/FileItemView;->L:Landroid/app/Activity;

    .line 316
    iput-object p4, p0, Lcom/dropbox/android/widget/FileItemView;->M:Landroid/content/Context;

    .line 319
    iget v0, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/widget/FileItemView;->t:I

    .line 320
    iput-object v4, p0, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    .line 321
    iput-object p8, p0, Lcom/dropbox/android/widget/FileItemView;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 323
    iput-object p3, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    .line 325
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->b:Lcom/dropbox/android/widget/S;

    invoke-virtual {v3}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_218

    .line 456
    :goto_31
    return-void

    .line 328
    :pswitch_32
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->p:Landroid/view/View;

    if-nez v0, :cond_45

    .line 329
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->p:Landroid/view/View;

    .line 333
    :cond_45
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->o:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/widget/FileItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    const-string v2, "_separator"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v3, "_upload_history_item_sep"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 343
    const v1, 0x7f0900b6

    .line 345
    :cond_6d
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 350
    :pswitch_77
    invoke-static {p1}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    .line 351
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v0

    new-instance v2, Ldbxyzptlk/i/i;

    new-instance v3, Lcom/dropbox/android/util/Z;

    iget-object v4, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    invoke-virtual {v0, v2}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    .line 353
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_9e

    .line 354
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    invoke-virtual {v0, v2}, Ldbxyzptlk/i/f;->registerObserver(Landroid/database/ContentObserver;)V

    .line 357
    :cond_9e
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/filemanager/LocalEntry;JLandroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Y;)V

    goto :goto_31

    .line 361
    :pswitch_a8
    const-string v0, "_up_folder"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/dropbox/android/widget/FileItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->e:Landroid/widget/ImageView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_31

    .line 371
    :pswitch_de
    new-instance v0, Ldbxyzptlk/i/i;

    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ldbxyzptlk/i/i;-><init>(J)V

    .line 373
    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    .line 374
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_104

    .line 375
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    invoke-virtual {v0, v3}, Ldbxyzptlk/i/f;->registerObserver(Landroid/database/ContentObserver;)V

    .line 378
    :cond_104
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/FileItemView;->a(Landroid/database/Cursor;)V

    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-nez v0, :cond_215

    .line 384
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    instance-of v0, v0, Ldbxyzptlk/i/k;

    if-eqz v0, :cond_215

    .line 385
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    check-cast v0, Ldbxyzptlk/i/k;

    invoke-virtual {v0}, Ldbxyzptlk/i/k;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_215

    .line 386
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-nez v0, :cond_215

    .line 388
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    const v3, 0x7f090047

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    move v0, v1

    .line 395
    :goto_13c
    if-eqz v0, :cond_141

    .line 396
    invoke-direct {p0, v2, v1}, Lcom/dropbox/android/widget/FileItemView;->a(ZZ)V

    .line 399
    :cond_141
    const-string v0, "local_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/dropbox/android/widget/FileItemView;->c:Z

    .line 404
    invoke-direct {p0, v0, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0, p5, p3, p1}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 406
    iput v1, p0, Lcom/dropbox/android/widget/FileItemView;->x:I

    goto/16 :goto_31

    .line 410
    :pswitch_165
    sget-object v0, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 414
    sget-object v2, Lcom/dropbox/android/provider/f;->c:Lcom/dropbox/android/provider/a;

    iget-object v2, v2, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    sget-object v0, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-direct {p0, v0, v4}, Lcom/dropbox/android/widget/FileItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    const v3, 0x7f090054

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v3, v4, v5}, Lcom/dropbox/android/util/aX;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 432
    invoke-direct {p0, p5, p3, p1}, Lcom/dropbox/android/widget/FileItemView;->b(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 433
    iput v1, p0, Lcom/dropbox/android/widget/FileItemView;->x:I

    goto/16 :goto_31

    .line 438
    :pswitch_1d4
    invoke-static {p1}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    .line 440
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->v:Lcom/dropbox/android/filemanager/v;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v0

    new-instance v2, Ldbxyzptlk/i/i;

    new-instance v3, Lcom/dropbox/android/util/Z;

    iget-object v4, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    invoke-virtual {v0, v2}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    .line 442
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    if-eqz v0, :cond_1fb

    .line 443
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->s:Ldbxyzptlk/i/f;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->y:Lcom/dropbox/android/widget/R;

    invoke-virtual {v0, v2}, Ldbxyzptlk/i/f;->registerObserver(Landroid/database/ContentObserver;)V

    .line 445
    :cond_1fb
    sget-object v0, Lcom/dropbox/android/provider/f;->c:Lcom/dropbox/android/provider/a;

    iget-object v0, v0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/filemanager/LocalEntry;JLandroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/Y;)V

    goto/16 :goto_31

    .line 452
    :pswitch_210
    invoke-direct {p0, p7}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/widget/X;)V

    goto/16 :goto_31

    :cond_215
    move v0, v2

    goto/16 :goto_13c

    .line 325
    :pswitch_data_218
    .packed-switch 0x1
        :pswitch_32
        :pswitch_77
        :pswitch_a8
        :pswitch_de
        :pswitch_165
        :pswitch_1d4
        :pswitch_210
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ldbxyzptlk/l/o;Lcom/dropbox/android/taskqueue/m;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1090
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v0

    invoke-virtual {p3, v0}, Ldbxyzptlk/l/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1062
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->u:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/dropbox/android/widget/I;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dropbox/android/widget/I;-><init>(Lcom/dropbox/android/widget/FileItemView;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1086
    :cond_1c
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1093
    sget-object v0, Lcom/dropbox/android/widget/K;->a:[I

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->b:Lcom/dropbox/android/widget/S;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 1103
    :pswitch_f
    invoke-direct {p0, v2, v2}, Lcom/dropbox/android/widget/FileItemView;->a(ZZ)V

    .line 1104
    :goto_12
    return-void

    .line 1095
    :pswitch_13
    invoke-direct {p0, v3, v2}, Lcom/dropbox/android/widget/FileItemView;->a(ZZ)V

    goto :goto_12

    .line 1098
    :pswitch_17
    invoke-direct {p0, v3, v3}, Lcom/dropbox/android/widget/FileItemView;->a(ZZ)V

    goto :goto_12

    .line 1093
    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 8
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->J:Lcom/dropbox/android/widget/Q;

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->F:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->e()[Lcom/dropbox/android/widget/quickactions/a;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_25

    .line 207
    :goto_c
    array-length v2, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 208
    invoke-virtual {v3}, Lcom/dropbox/android/widget/quickactions/a;->b()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/dropbox/android/widget/C;

    invoke-direct {v5, p0, v3}, Lcom/dropbox/android/widget/C;-><init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/widget/quickactions/a;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 202
    :cond_25
    iget-object v0, p0, Lcom/dropbox/android/widget/FileItemView;->J:Lcom/dropbox/android/widget/Q;

    iget-object v1, p0, Lcom/dropbox/android/widget/FileItemView;->L:Landroid/app/Activity;

    iget-object v2, p0, Lcom/dropbox/android/widget/FileItemView;->K:Lcom/dropbox/android/activity/delegate/x;

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/widget/Q;->a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)[Lcom/dropbox/android/widget/quickactions/a;

    move-result-object v0

    goto :goto_c

    .line 217
    :cond_30
    return-void
.end method
