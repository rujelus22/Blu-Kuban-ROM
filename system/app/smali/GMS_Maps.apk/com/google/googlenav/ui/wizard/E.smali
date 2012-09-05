.class public Lcom/google/googlenav/ui/wizard/E;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lax/k;

.field private final b:Lcom/google/googlenav/android/ac;

.field private c:Lcom/google/googlenav/ui/wizard/I;


# direct methods
.method public constructor <init>(Lax/k;Lcom/google/googlenav/android/ac;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/E;->a:Lax/k;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/E;->b:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/E;)Lax/k;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/E;->a:Lax/k;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/E;)Lcom/google/googlenav/ui/wizard/I;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/E;->c:Lcom/google/googlenav/ui/wizard/I;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/E;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/E;->b:Lcom/google/googlenav/android/ac;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/E;->a:Lax/k;

    new-instance v1, Lcom/google/googlenav/ui/wizard/G;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/G;-><init>(Lcom/google/googlenav/ui/wizard/E;Lcom/google/googlenav/ui/wizard/F;)V

    invoke-virtual {v0, v1}, Lax/k;->a(Lax/l;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/E;->a:Lax/k;

    invoke-virtual {v0}, Lax/k;->k()Lax/j;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p2}, Lax/j;->a(Lcom/google/googlenav/ca;)V

    invoke-virtual {v0}, Lax/j;->e()Lam/b;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/googlenav/ui/wizard/F;-><init>(Lcom/google/googlenav/ui/wizard/E;Lam/b;Lcom/google/googlenav/ca;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    :cond_1e
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/I;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/E;->c:Lcom/google/googlenav/ui/wizard/I;

    return-void
.end method
