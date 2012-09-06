.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Lcom/google/ads/internal/g;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ads/AdActivity;

.field private static d:Lcom/google/ads/internal/m;

.field private static e:Lcom/google/ads/AdActivity;

.field private static f:Lcom/google/ads/AdActivity;

.field private static final g:Lcom/google/ads/b;


# instance fields
.field private h:Lcom/google/ads/internal/e;

.field private i:Landroid/view/ViewGroup;

.field private j:Z

.field private k:J

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/google/ads/AdActivity;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/ads/internal/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/ads/internal/g;->a:Lcom/google/ads/util/j;

    invoke-interface {v0}, Lcom/google/ads/util/j;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/g;

    sput-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/g;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    sput-object v1, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    sput-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    new-instance v0, Lcom/google/ads/b;

    invoke-direct {v0}, Lcom/google/ads/b;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    return-void
.end method

.method public static a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V
    .registers 3

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/b;->a(Lcom/google/ads/internal/m;Lcom/google/ads/internal/n;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/google/ads/internal/m;)Lcom/google/ads/internal/m;
    .registers 1

    sput-object p0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    return-object p0
.end method

.method private c(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static c()Z
    .registers 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/b;

    invoke-virtual {v0}, Lcom/google/ads/b;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Lcom/google/ads/AdActivity;
    .registers 1

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic f()Lcom/google/ads/internal/m;
    .registers 1

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    return-object v0
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->j:Z

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/g;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/g;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/e;->a(Lcom/google/ads/AdActivity;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/e;->a(Z)V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_9c

    const-string v0, "Disabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->b()V

    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_47
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    invoke-virtual {v0}, Lcom/google/ads/internal/a;->e()V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    :cond_52
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_58

    sput-object v2, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    :cond_58
    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    sput-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5f
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    sget-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    invoke-virtual {v2}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v2

    if-ne v0, v2, :cond_7a

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->a()V

    :cond_7a
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->stopLoading()V

    :cond_7f
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_92

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    if-eqz v0, :cond_af

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->q()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    :cond_92
    :goto_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_b5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->j:Z

    const-string v0, "AdActivity is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_9b
    return-void

    :cond_9c
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_39

    const-string v0, "Re-enabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->c()V

    goto :goto_39

    :cond_af
    :try_start_af
    const-string v0, "currentAdManager is null while trying to destroy AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_92

    :catchall_b5
    move-exception v0

    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_af .. :try_end_b7} :catchall_b5

    throw v0
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object v2
.end method

.method public a()Lcom/google/ads/internal/a;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Lcom/google/ads/internal/a;
    .registers 4

    new-instance v0, Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/internal/a;-><init>(Landroid/app/Activity;Lcom/google/ads/internal/e;)V

    return-object v0
.end method

.method public a(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    invoke-virtual {v0}, Lcom/google/ads/internal/a;->requestLayout()V

    :cond_12
    return-void
.end method

.method protected a(Lcom/google/ads/internal/e;ZIZ)V
    .registers 13

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v5}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v7, :cond_25

    iget-boolean v1, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v1, :cond_46

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/ads/util/k;->a(Landroid/view/Window;)V

    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/ads/internal/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3a

    if-eqz p4, :cond_55

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4f

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3a
    invoke-virtual {p1}, Lcom/google/ads/internal/e;->d()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_5b

    const-string v0, "Interstitial created with an AdWebView that is already in use by another AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    const-string v0, "Disabling hardware acceleration on the AdActivity WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/internal/e;->b()V

    goto :goto_25

    :cond_4f
    const-string v0, "MRAID banner was not a child of a ViewGroup."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_45

    :cond_55
    const-string v0, "Interstitial created with an AdWebView that has a parent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_45

    :cond_5b
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1, p0}, Lcom/google/ads/internal/e;->a(Lcom/google/ads/AdActivity;)V

    if-eqz p4, :cond_9d

    const/16 v0, 0x32

    :goto_65
    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->a(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_a0

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_7b
    iget-object v2, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_45

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/g;->a(Landroid/webkit/WebView;)V

    goto :goto_45

    :cond_9d
    const/16 v0, 0x20

    goto :goto_65

    :cond_a0
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7b
.end method

.method protected a(Lcom/google/ads/internal/m;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/AdActivity;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->n:Z

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_18

    sput-object p0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->s()V

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected a(Ljava/util/HashMap;Lcom/google/ads/internal/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/internal/m;",
            ")V"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.plus"

    const-string v3, "com.google.android.apps.circles.platform.PlusOneActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.google.circles.platform.intent.extra.ENTITY"

    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.circles.platform.intent.extra.ENTITY_TYPE"

    sget-object v2, Lcom/google/ads/ag$b;->a:Lcom/google/ads/ag$b;

    iget-object v2, v2, Lcom/google/ads/ag$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.circles.platform.intent.extra.ACTION"

    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;)V

    :try_start_47
    const-string v0, "Launching Google+ intent from AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/AdActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_50
    .catch Landroid/content/ActivityNotFoundException; {:try_start_47 .. :try_end_50} :catch_51

    :goto_50
    return-void

    :catch_51
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50
.end method

.method public b()Lcom/google/ads/internal/e;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    iget-object v0, v0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    :goto_9
    return-object v0

    :cond_a
    sget-object v2, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    if-nez v1, :cond_1b

    const-string v1, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_9

    :catchall_18
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    if-eq v1, v3, :cond_28

    monitor-exit v2

    move-object v0, v1

    goto :goto_9

    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_18

    goto :goto_9
.end method

.method public b(IIII)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    if-nez v0, :cond_23

    invoke-virtual {p0, p0}, Lcom/google/ads/AdActivity;->a(Landroid/app/Activity;)Lcom/google/ads/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->c(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    if-nez v0, :cond_24

    const-string v0, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    monitor-exit v1

    :cond_23
    :goto_23
    return-void

    :cond_24
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->j()Lcom/google/ads/internal/t;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/t;->b(Z)V

    monitor-exit v1

    goto :goto_23

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_30

    throw v0
.end method

.method protected b(Ljava/util/HashMap;Lcom/google/ads/internal/m;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/internal/m;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_8

    const-string v0, "Could not get the paramMap in launchIntent()"

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "Could not get the URL parameter in launchIntent()."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "m"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v1, :cond_6e

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_35
    if-eqz v2, :cond_3a

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3a
    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/m;)V

    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching an intent from AdActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3d .. :try_end_64} :catch_65

    goto :goto_7

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_35
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/internal/e;

    move-result-object v0

    if-eqz v0, :cond_55

    if-eqz p3, :cond_55

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.circles.platform.result.extra.ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/internal/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/k;->a(Landroid/webkit/WebView;Z)V

    :cond_55
    :goto_55
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void

    :cond_59
    const-string v0, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/internal/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/k;->a(Landroid/webkit/WebView;Z)V

    goto :goto_55
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->j:Z

    sget-object v3, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    if-eqz v0, :cond_a2

    sget-object v7, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/m;

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_1a

    sput-object p0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->r()V

    :cond_1a
    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_26

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    :cond_26
    sput-object p0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-eq v0, p0, :cond_46

    :cond_36
    invoke-virtual {v7}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne v0, v1, :cond_49

    :cond_46
    invoke-virtual {v7}, Lcom/google/ads/internal/m;->t()V

    :cond_49
    invoke-virtual {v7}, Lcom/google/ads/internal/m;->o()Z

    move-result v8

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    sget v4, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/af;->a:Lcom/google/ads/util/aa;

    invoke-virtual {v1}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_ac

    move v1, v2

    :goto_72
    iput-boolean v1, p0, Lcom/google/ads/AdActivity;->q:Z

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/af;->b:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_ae

    move v0, v2

    :goto_85
    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_b .. :try_end_88} :catchall_a9

    iput-object v5, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->n:Z

    iput-boolean v2, p0, Lcom/google/ads/AdActivity;->o:Z

    iput-object v5, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/a;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b0

    const-string v0, "Could not get the Bundle used to create AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_a1
    return-void

    :cond_a2
    :try_start_a2
    const-string v0, "Could not get currentAdManager."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_a1

    :catchall_a9
    move-exception v0

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_a9

    throw v0

    :cond_ac
    move v1, v6

    goto :goto_72

    :cond_ae
    move v0, v6

    goto :goto_85

    :cond_b0
    new-instance v1, Lcom/google/ads/internal/n;

    invoke-direct {v1, v0}, Lcom/google/ads/internal/n;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/google/ads/internal/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/ads/internal/n;->c()Ljava/util/HashMap;

    move-result-object v9

    const-string v1, "plusone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->a(Ljava/util/HashMap;Lcom/google/ads/internal/m;)V

    goto :goto_a1

    :cond_c9
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->b(Ljava/util/HashMap;Lcom/google/ads/internal/m;)V

    goto :goto_a1

    :cond_d5
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    new-instance v0, Lcom/google/ads/internal/e;

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/ads/internal/e;-><init>(Lcom/google/ads/ah;Lcom/google/ads/d;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    sget-object v1, Lcom/google/ads/internal/g;->c:Ljava/util/Map;

    if-nez v8, :cond_143

    move v0, v2

    :goto_f8
    invoke-static {v7, v1, v2, v0}, Lcom/google/ads/internal/t;->a(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)Lcom/google/ads/internal/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/t;->d(Z)V

    if-eqz v8, :cond_104

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/t;->a(Z)V

    :cond_104
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "u"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_145

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/e;->loadUrl(Ljava/lang/String;)V

    :goto_128
    const-string v0, "o"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v0

    :goto_13c
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {p0, v1, v6, v0, v8}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/e;ZIZ)V

    goto/16 :goto_a1

    :cond_143
    move v0, v6

    goto :goto_f8

    :cond_145
    if-eqz v2, :cond_151

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/internal/e;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_128

    :cond_151
    const-string v0, "Could not get the URL or HTML parameter to show a web app."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_a1

    :cond_158
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v0

    goto :goto_13c

    :cond_165
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_16e

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->l()I

    move-result v0

    goto :goto_13c

    :cond_16e
    const/4 v0, -0x1

    goto :goto_13c

    :cond_170
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_180

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    :cond_180
    invoke-virtual {v7}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v7}, Lcom/google/ads/internal/m;->l()I

    move-result v1

    const-string v3, "expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/e;->a(Z)V

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->o:Z

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_1ab

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_1ab

    const-string v0, "Re-enabling hardware acceleration on expanding MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->c()V

    :cond_1ab
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {p0, v0, v2, v1, v8}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/e;ZIZ)V

    goto/16 :goto_a1

    :cond_1b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AdOpener, <action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_a1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_9
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->g()V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/ads/internal/e;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/e;

    :cond_27
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->g()V

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->n:Z

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const-string v0, "Launcher AdActivity got focus and is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
