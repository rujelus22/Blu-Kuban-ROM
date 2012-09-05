.class public final Lcom/google/android/apps/analytics/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/apps/analytics/i;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcom/google/android/apps/analytics/o;

.field private n:Lcom/google/android/apps/analytics/f;

.field private o:Z

.field private p:Z

.field private q:Lcom/google/android/apps/analytics/a;

.field private r:Lcom/google/android/apps/analytics/e;

.field private s:Ljava/util/Map;

.field private t:Ljava/util/Map;

.field private u:Landroid/os/Handler;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/apps/analytics/i;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/i;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/i;->a:Lcom/google/android/apps/analytics/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->b:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->c:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->d:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->e:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/i;->f:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->j:Ljava/lang/String;

    const-string v0, "1.4.2"

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->s:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->t:Ljava/util/Map;

    new-instance v0, Lcom/google/android/apps/analytics/j;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/j;-><init>(Lcom/google/android/apps/analytics/i;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->v:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/i;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lcom/google/android/apps/analytics/i;
    .registers 1

    sget-object v0, Lcom/google/android/apps/analytics/i;->a:Lcom/google/android/apps/analytics/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/i;)Lcom/google/android/apps/analytics/o;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    return-object v0
.end method

.method private e()V
    .registers 5

    iget v0, p0, Lcom/google/android/apps/analytics/i;->l:I

    if-gez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->v:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/apps/analytics/i;->l:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 8

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    if-nez v0, :cond_40

    new-instance v0, Lcom/google/android/apps/analytics/v;

    invoke-direct {v0, p3}, Lcom/google/android/apps/analytics/v;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/i;->d:Z

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/o;->a(Z)V

    iget v1, p0, Lcom/google/android/apps/analytics/i;->f:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/o;->a(I)V

    :goto_1d
    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->n:Lcom/google/android/apps/analytics/f;

    if-nez v1, :cond_43

    new-instance v1, Lcom/google/android/apps/analytics/r;

    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/analytics/i;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/analytics/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/i;->c:Z

    invoke-interface {v1, v2}, Lcom/google/android/apps/analytics/f;->a(Z)V

    :goto_2f
    new-instance v2, Lcom/google/android/apps/analytics/k;

    invoke-direct {v2, p0}, Lcom/google/android/apps/analytics/k;-><init>(Lcom/google/android/apps/analytics/i;)V

    iput-object p1, p0, Lcom/google/android/apps/analytics/i;->g:Ljava/lang/String;

    if-nez p3, :cond_46

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    goto :goto_1d

    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->n:Lcom/google/android/apps/analytics/f;

    goto :goto_2f

    :cond_46
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/analytics/i;->h:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    new-instance v0, Lcom/google/android/apps/analytics/a;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->q:Lcom/google/android/apps/analytics/a;

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/o;->c()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/i;->n:Lcom/google/android/apps/analytics/f;

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->n:Lcom/google/android/apps/analytics/f;

    invoke-interface {v0, v2}, Lcom/google/android/apps/analytics/f;->a(Lcom/google/android/apps/analytics/g;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->p:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->i:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->h:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->i:Landroid/net/ConnectivityManager;

    :cond_74
    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    if-nez v0, :cond_8d

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/i;->u:Landroid/os/Handler;

    :goto_83
    iget v0, p0, Lcom/google/android/apps/analytics/i;->l:I

    iput p2, p0, Lcom/google/android/apps/analytics/i;->l:I

    if-gtz v0, :cond_91

    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    :cond_8c
    :goto_8c
    return-void

    :cond_8d
    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->f()V

    goto :goto_83

    :cond_91
    if-lez v0, :cond_8c

    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->f()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    goto :goto_8c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/apps/analytics/i;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/i;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->g:Ljava/lang/String;

    new-instance v0, Lcom/google/android/apps/analytics/h;

    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/analytics/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->r:Lcom/google/android/apps/analytics/e;

    iput-object v1, v0, Lcom/google/android/apps/analytics/h;->i:Lcom/google/android/apps/analytics/e;

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->q:Lcom/google/android/apps/analytics/a;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/h;->b(I)V

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/i;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/h;->b(Z)V

    new-instance v1, Lcom/google/android/apps/analytics/e;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/e;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/i;->r:Lcom/google/android/apps/analytics/e;

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/o;->a(Lcom/google/android/apps/analytics/h;)V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/i;->o:Z

    if-eqz v0, :cond_5f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->o:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    :cond_5f
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    :try_start_0
    new-instance v0, Lcom/google/android/apps/analytics/d;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/apps/analytics/d;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->r:Lcom/google/android/apps/analytics/e;

    if-nez v1, :cond_11

    new-instance v1, Lcom/google/android/apps/analytics/e;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/e;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/i;->r:Lcom/google/android/apps/analytics/e;

    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/analytics/i;->r:Lcom/google/android/apps/analytics/e;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/e;->a(Lcom/google/android/apps/analytics/d;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_16} :catch_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :catch_18
    move-exception v0

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final b()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v2, :cond_d

    const-string v2, "GoogleAnalyticsTracker"

    const-string v3, "Called dispatch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/apps/analytics/i;->p:Z

    if-eqz v2, :cond_20

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v1, :cond_1c

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but dispatcher was busy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_2e
    iget-boolean v1, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v1, :cond_39

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was no network available"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    goto :goto_1f

    :cond_3d
    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    invoke-interface {v2}, Lcom/google/android/apps/analytics/o;->b()I

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v0, p0, Lcom/google/android/apps/analytics/i;->m:Lcom/google/android/apps/analytics/o;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/o;->a()[Lcom/google/android/apps/analytics/m;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/i;->n:Lcom/google/android/apps/analytics/f;

    invoke-interface {v2, v0}, Lcom/google/android/apps/analytics/f;->a([Lcom/google/android/apps/analytics/m;)V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/i;->p:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/i;->e()V

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v2, :cond_78

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hits to dispatcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    move v0, v1

    goto :goto_1f

    :cond_7a
    iput-boolean v1, p0, Lcom/google/android/apps/analytics/i;->o:Z

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/i;->b:Z

    if-eqz v1, :cond_1f

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was nothing to dispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method final c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/i;->p:Z

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/i;->b:Z

    return v0
.end method
