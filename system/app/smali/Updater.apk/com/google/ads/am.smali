.class public final Lcom/google/ads/am;
.super Lcom/google/ads/util/z;


# instance fields
.field public final a:Lcom/google/ads/util/ab;

.field public final b:Lcom/google/ads/util/ab;

.field public final c:Lcom/google/ads/util/ad;

.field public final d:Lcom/google/ads/util/ab;

.field public final e:Lcom/google/ads/util/ab;

.field public final f:Lcom/google/ads/util/ab;

.field public final g:Lcom/google/ads/util/ab;

.field public final h:Lcom/google/ads/util/ab;

.field public final i:Lcom/google/ads/util/ab;

.field public final j:Lcom/google/ads/util/ac;


# direct methods
.method private constructor <init>(Lcom/google/ads/ak;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/h;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/w;)V
    .registers 12

    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "adListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/am;->j:Lcom/google/ads/util/ac;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "appState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->a:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "ad"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->f:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adView"

    invoke-direct {v0, p0, v1, p3}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->g:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adType"

    invoke-direct {v0, p0, v1, p9}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adUnitId"

    invoke-direct {v0, p0, v1, p5}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->b:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "activity"

    invoke-direct {v0, p0, v1, p6}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "interstitialAd"

    invoke-direct {v0, p0, v1, p4}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->h:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "bannerContainer"

    invoke-direct {v0, p0, v1, p8}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->e:Lcom/google/ads/util/ab;

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "applicationContext"

    invoke-direct {v0, p0, v1, p7}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    return-void
.end method

.method public static a(Lcom/google/ads/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/ads/g;)Lcom/google/ads/am;
    .registers 15

    const/4 v4, 0x0

    new-instance v0, Lcom/google/ads/am;

    invoke-static {}, Lcom/google/ads/ak;->a()Lcom/google/ads/ak;

    move-result-object v1

    instance-of v2, p0, Lcom/google/ads/AdView;

    if-eqz v2, :cond_2a

    move-object v2, p0

    check-cast v2, Lcom/google/ads/AdView;

    move-object v3, v2

    :goto_f
    instance-of v2, p0, Lcom/google/ads/h;

    if-eqz v2, :cond_17

    move-object v2, p0

    check-cast v2, Lcom/google/ads/h;

    move-object v4, v2

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez p4, :cond_2c

    sget-object v9, Lcom/google/ads/a/w;->a:Lcom/google/ads/a/w;

    :goto_23
    move-object v2, p0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/am;-><init>(Lcom/google/ads/ak;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/h;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/w;)V

    return-object v0

    :cond_2a
    move-object v3, v4

    goto :goto_f

    :cond_2c
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/google/ads/a/w;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/w;

    move-result-object v9

    goto :goto_23
.end method


# virtual methods
.method public final a()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/ads/am;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->a()Z

    move-result v0

    return v0
.end method
