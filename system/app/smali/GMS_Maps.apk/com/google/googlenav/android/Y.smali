.class public Lcom/google/googlenav/android/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)V
    .registers 7
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 60
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->c()Lcom/google/googlenav/clientparam/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/clientparam/e;->g()J

    move-result-wide v2

    .line 62
    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_34

    .line 65
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/B;->e()V

    .line 66
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->f()V

    .line 67
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->c()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->b()V

    .line 68
    sget-object v0, Lcom/google/googlenav/prefetch/android/g;->b:Lcom/google/googlenav/prefetch/android/g;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/g;)V

    .line 72
    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, LaT/d;->b(Ljava/lang/String;)V

    .line 74
    :cond_34
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/y;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/android/y;->a(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 32
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/z;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/google/googlenav/android/z;-><init>(Lcom/google/googlenav/android/y;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    .line 50
    return-void
.end method
