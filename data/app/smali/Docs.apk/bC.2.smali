.class public LbC;
.super Ljava/lang/Object;


# static fields
.field private static a:LbC;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/net/ConnectivityManager;

.field private a:Landroid/os/Handler;

.field private a:LbI;

.field private a:LbR;

.field private a:Lbt;

.field private a:Lbx;

.field private a:Lbz;

.field private a:Ljava/lang/Runnable;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LbX;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LbJ;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LbC;

    invoke-direct {v0}, LbC;-><init>()V

    sput-object v0, LbC;->a:LbC;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, LbC;->a:Z

    iput-boolean v0, p0, LbC;->b:Z

    iput-boolean v0, p0, LbC;->c:Z

    iput-boolean v0, p0, LbC;->d:Z

    const/16 v0, 0x64

    iput v0, p0, LbC;->a:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, LbC;->b:Ljava/lang/String;

    const-string v0, "1.5"

    iput-object v0, p0, LbC;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LbC;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LbC;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LbC;->b:Ljava/util/Map;

    new-instance v0, LbD;

    invoke-direct {v0, p0}, LbD;-><init>(LbC;)V

    iput-object v0, p0, LbC;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(LbC;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, LbC;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()LbC;
    .registers 1

    sget-object v0, LbC;->a:LbC;

    return-object v0
.end method

.method static synthetic a(LbC;)LbI;
    .registers 2

    iget-object v0, p0, LbC;->a:LbI;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    new-instance v0, LbB;

    iget-object v1, p0, LbC;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, LbC;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, LbB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, LbC;->a:Lbx;

    invoke-virtual {v0, v1}, LbB;->a(Lbx;)V

    iget-object v1, p0, LbC;->a:Lbt;

    invoke-virtual {v1}, Lbt;->a()I

    move-result v1

    invoke-virtual {v0, v1}, LbB;->b(I)V

    iget-boolean v1, p0, LbC;->d:Z

    invoke-virtual {v0, v1}, LbB;->b(Z)V

    new-instance v1, Lbx;

    invoke-direct {v1}, Lbx;-><init>()V

    iput-object v1, p0, LbC;->a:Lbx;

    iget-object v1, p0, LbC;->a:LbI;

    invoke-interface {v1, v0}, LbI;->a(LbB;)V

    invoke-direct {p0}, LbC;->e()V

    return-void
.end method

.method private c()V
    .registers 5

    iget v0, p0, LbC;->b:I

    if-gez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LbC;->a:Landroid/os/Handler;

    iget-object v1, p0, LbC;->a:Ljava/lang/Runnable;

    iget v2, p0, LbC;->b:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LbC;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, LbC;->a:LbR;

    invoke-interface {v0}, LbR;->a()Z

    move-result v0

    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, LbC;->a:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, LbC;->a:Landroid/os/Handler;

    iget-object v1, p0, LbC;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private e()V
    .registers 2

    iget-boolean v0, p0, LbC;->e:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, LbC;->e:Z

    invoke-direct {p0}, LbC;->c()V

    :cond_a
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LbC;->f:Z

    return-void
.end method

.method public a(I)V
    .registers 3

    iget v0, p0, LbC;->b:I

    iput p1, p0, LbC;->b:I

    if-gtz v0, :cond_a

    invoke-direct {p0}, LbC;->c()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    if-lez v0, :cond_9

    invoke-direct {p0}, LbC;->d()V

    invoke-direct {p0}, LbC;->c()V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, LbC;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageUrl cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p1, p0, LbC;->d:Ljava/lang/String;

    iget-object v1, p0, LbC;->a:Ljava/lang/String;

    const-string v3, "__##GOOGLEPAGEVIEW##__"

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, LbC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_7
.end method

.method public a(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LbC;->b(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;LbI;Lbz;Z)V
    .registers 15

    new-instance v7, LbE;

    invoke-direct {v7, p0}, LbE;-><init>(LbC;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, LbC;->a(Ljava/lang/String;ILandroid/content/Context;LbI;Lbz;ZLbA;)V

    return-void
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;LbI;Lbz;ZLbA;)V
    .registers 11

    iput-object p1, p0, LbC;->a:Ljava/lang/String;

    if-nez p3, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, LbC;->a:Landroid/content/Context;

    new-instance v0, Lby;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lby;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, LbC;->a:LbR;

    iput-object p4, p0, LbC;->a:LbI;

    new-instance v0, Lbt;

    invoke-direct {v0}, Lbt;-><init>()V

    iput-object v0, p0, LbC;->a:Lbt;

    if-eqz p6, :cond_2d

    iget-object v0, p0, LbC;->a:LbI;

    invoke-interface {v0}, LbI;->a()V

    :cond_2d
    iput-object p5, p0, LbC;->a:Lbz;

    iget-object v0, p0, LbC;->a:Lbz;

    invoke-interface {v0, p7}, Lbz;->a(LbA;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LbC;->f:Z

    iget-object v0, p0, LbC;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_47

    iget-object v0, p0, LbC;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, LbC;->a:Landroid/net/ConnectivityManager;

    :cond_47
    iget-object v0, p0, LbC;->a:Landroid/os/Handler;

    if-nez v0, :cond_5a

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LbC;->a:Landroid/os/Handler;

    :goto_56
    invoke-virtual {p0, p2}, LbC;->a(I)V

    return-void

    :cond_5a
    invoke-direct {p0}, LbC;->d()V

    goto :goto_56
.end method

.method a(Ljava/lang/String;ILandroid/content/Context;Z)V
    .registers 12

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, LbC;->a:LbI;

    if-nez v0, :cond_3b

    new-instance v4, LbS;

    invoke-direct {v4, v3}, LbS;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, LbC;->c:Z

    invoke-interface {v4, v0}, LbI;->a(Z)V

    iget v0, p0, LbC;->a:I

    invoke-interface {v4, v0}, LbI;->a(I)V

    :goto_21
    iget-object v0, p0, LbC;->a:Lbz;

    if-nez v0, :cond_3e

    new-instance v5, LbM;

    iget-object v0, p0, LbC;->b:Ljava/lang/String;

    iget-object v1, p0, LbC;->c:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, LbM;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, LbC;->b:Z

    invoke-interface {v5, v0}, Lbz;->a(Z)V

    :goto_33
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, LbC;->a(Ljava/lang/String;ILandroid/content/Context;LbI;Lbz;Z)V

    return-void

    :cond_3b
    iget-object v4, p0, LbC;->a:LbI;

    goto :goto_21

    :cond_3e
    iget-object v5, p0, LbC;->a:Lbz;

    goto :goto_33
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, LbC;->b:Ljava/lang/String;

    iput-object p2, p0, LbC;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    invoke-direct {p0}, LbC;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez p2, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v1, p0, LbC;->a:Ljava/lang/String;

    iget-object v2, p0, LbC;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, LbC;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public a()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, LbC;->a:Z

    if-eqz v2, :cond_d

    const-string v2, "GoogleAnalyticsTracker"

    const-string v3, "Called dispatch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v2, p0, LbC;->f:Z

    if-eqz v2, :cond_20

    iget-boolean v1, p0, LbC;->a:Z

    if-eqz v1, :cond_1c

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but dispatcher was busy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-direct {p0}, LbC;->c()V

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    iget-object v2, p0, LbC;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_2e
    iget-boolean v1, p0, LbC;->a:Z

    if-eqz v1, :cond_39

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was no network connected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-direct {p0}, LbC;->c()V

    goto :goto_1f

    :cond_3d
    iget-object v2, p0, LbC;->a:LbI;

    invoke-interface {v2}, LbI;->a()I

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v0, p0, LbC;->a:LbI;

    invoke-interface {v0}, LbI;->a()[LbG;

    move-result-object v0

    iget-object v2, p0, LbC;->a:Lbz;

    invoke-interface {v2, v0}, Lbz;->a([LbG;)V

    iput-boolean v1, p0, LbC;->f:Z

    invoke-direct {p0}, LbC;->c()V

    iget-boolean v2, p0, LbC;->a:Z

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
    iput-boolean v1, p0, LbC;->e:Z

    iget-boolean v1, p0, LbC;->a:Z

    if-eqz v1, :cond_1f

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was nothing to dispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public b()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, LbC;->a:Lbz;

    if-eqz v0, :cond_9

    iget-object v0, p0, LbC;->a:Lbz;

    invoke-interface {v0}, Lbz;->a()V

    :cond_9
    invoke-direct {p0}, LbC;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, LbC;->a(Ljava/lang/String;ILandroid/content/Context;Z)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, LbC;->a:Z

    return v0
.end method
