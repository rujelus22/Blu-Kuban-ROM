.class public Lcom/google/googlenav/settings/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/settings/A;

.field private final b:Lax/k;

.field private final c:Lcom/google/googlenav/settings/B;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lax/k;Landroid/os/Handler;Lcom/google/googlenav/settings/A;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/settings/q;->b:Lax/k;

    iput-object p3, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/A;

    new-instance v0, Lcom/google/googlenav/settings/B;

    invoke-direct {v0}, Lcom/google/googlenav/settings/B;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/settings/B;

    iput-object p2, p0, Lcom/google/googlenav/settings/q;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/A;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/A;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->b:Lax/k;

    new-instance v1, Lcom/google/googlenav/settings/v;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/v;-><init>(Lcom/google/googlenav/settings/q;)V

    invoke-virtual {v0, v1}, Lax/k;->b(Lax/l;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/B;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/settings/B;

    return-object v0
.end method

.method private c()V
    .registers 4

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/ak;

    new-instance v2, Lcom/google/googlenav/settings/x;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/x;-><init>(Lcom/google/googlenav/settings/q;)V

    invoke-direct {v1, v2}, Lax/ak;-><init>(Lax/al;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/settings/q;)Lax/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->b:Lax/k;

    return-object v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/settings/B;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/B;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/A;

    iget-object v1, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/settings/B;

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/A;->a(Lcom/google/googlenav/settings/B;)V

    :cond_f
    return-void
.end method

.method static synthetic e(Lcom/google/googlenav/settings/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/settings/q;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/settings/B;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/B;->d()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/googlenav/settings/q;->b()V

    :cond_12
    invoke-direct {p0}, Lcom/google/googlenav/settings/q;->c()V

    return-void
.end method

.method public a(Lax/j;)V
    .registers 6

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/r;

    invoke-virtual {p1}, Lax/j;->e()Lam/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/googlenav/settings/r;-><init>(Lcom/google/googlenav/settings/q;Lam/b;Lcom/google/googlenav/ca;Lax/j;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Z)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/settings/s;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/settings/s;-><init>(Lcom/google/googlenav/settings/q;Z)V

    new-instance v1, Lam/b;

    sget-object v2, LbF/G;->d:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lam/b;->b(IZ)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    new-instance v3, Lax/aV;

    invoke-direct {v3, v1, v0}, Lax/aV;-><init>(Lam/b;Lax/aW;)V

    invoke-virtual {v2, v3}, Lat/h;->c(Lat/g;)V

    return-void
.end method
