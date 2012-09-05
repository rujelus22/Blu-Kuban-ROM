.class public Lcom/google/googlenav/ui/view/android/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .registers 9

    move-object v0, p2

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/f;->b(Landroid/content/Context;Landroid/view/ViewGroup;)I

    move-result v1

    const-wide/high16 v2, 0x4049

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v4

    invoke-virtual {v4}, Laf/b;->x()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    if-eqz v0, :cond_35

    if-le v1, v2, :cond_35

    move v0, v1

    :goto_27
    invoke-direct {v4, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3

    :cond_33
    const/4 v0, 0x0

    goto :goto_a

    :cond_35
    const/4 v0, -0x2

    goto :goto_27
.end method

.method private a(Lcom/google/googlenav/ui/o;)Lcom/google/ads/AdSenseSpec;
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/bg;

    invoke-static {}, Lab/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/bg;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/googlenav/ui/o;->b:LaJ/B;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bg;->a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bg;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/o;->c:LaJ/B;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bg;->b(LaJ/B;)Lcom/google/googlenav/ui/view/android/bg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bg;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const/16 v1, 0x443

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const-string v1, "FFF8E7"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/GoogleAdView;)V
    .registers 7

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p2, v2}, Lcom/google/ads/GoogleAdView;->removeViewAt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/ViewGroup;)I
    .registers 6

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/f;->a(Landroid/view/ViewGroup;)I

    move-result v1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_27

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    :goto_26
    return v0

    :cond_27
    sub-int/2addr v0, v1

    goto :goto_26
.end method

.method private b(Landroid/content/Context;Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p2, Lcom/google/googlenav/ui/bl;->I:Lcom/google/googlenav/ui/o;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    :try_start_d
    new-instance v1, Lcom/google/ads/GoogleAdView;

    invoke-direct {v1, p1}, Lcom/google/ads/GoogleAdView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/view/android/f;->a(Landroid/content/Context;Lcom/google/ads/GoogleAdView;)V

    const v2, 0x12cdb8

    invoke-virtual {v1, v2}, Lcom/google/ads/GoogleAdView;->setId(I)V

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/f;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/f;->a(Lcom/google/googlenav/ui/o;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V
    :try_end_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_2c} :catch_2f

    :goto_2c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    goto :goto_6

    :catch_2f
    move-exception v0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    goto :goto_2c
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/f;->a:Landroid/view/View;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/f;->b(Landroid/content/Context;Lcom/google/googlenav/ui/bl;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_6
.end method
