.class public Lcom/google/googlenav/android/A;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    invoke-static {}, Lae/d;->c()Lae/c;

    move-result-object v2

    invoke-virtual {v2}, Lae/c;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_34

    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->e()V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->f()V

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->c()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/a;->b()V

    sget-object v0, Lcom/google/googlenav/prefetch/android/d;->b:Lcom/google/googlenav/prefetch/android/d;

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/d;)V

    const-string v0, "LAST_NETWORK_CONNECTED"

    invoke-static {v0}, Lbf/c;->b(Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/A;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/android/A;->a(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x1

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/android/B;

    invoke-direct {v1, p0, v2, v2}, Lcom/google/googlenav/android/B;-><init>(Lcom/google/googlenav/android/A;ZZ)V

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;I)V

    return-void
.end method
