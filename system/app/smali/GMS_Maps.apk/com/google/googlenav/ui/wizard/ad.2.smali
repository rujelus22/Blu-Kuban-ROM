.class public Lcom/google/googlenav/ui/wizard/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/E;

.field private final b:LaY/a;

.field private final c:Lcom/google/googlenav/android/ac;

.field private d:Lcom/google/googlenav/ui/wizard/ah;


# direct methods
.method public constructor <init>(Lax/k;LaY/a;Lcom/google/googlenav/android/ac;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/wizard/E;

    invoke-direct {v0, p1, p3}, Lcom/google/googlenav/ui/wizard/E;-><init>(Lax/k;Lcom/google/googlenav/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/E;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ad;->b:LaY/a;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ad;->c:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/ui/wizard/ah;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->d:Lcom/google/googlenav/ui/wizard/ah;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ad;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->c:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ad;)LaY/a;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->b:LaY/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/E;->a()V

    return-void
.end method

.method public a(II)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, LaJ/B;

    invoke-direct {v0, p1, p2}, LaJ/B;-><init>(II)V

    new-instance v1, Lcom/google/googlenav/aS;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v3, v3, v2}, Lcom/google/googlenav/aS;-><init>(LaJ/B;III)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/ae;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/ae;-><init>(Lcom/google/googlenav/ui/wizard/ad;)V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/aT;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(LaE/l;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "cz"

    invoke-static {v0}, Lax/aA;->c(Ljava/lang/String;)Lam/b;

    move-result-object v0

    new-instance v1, Lax/bo;

    invoke-direct {v1}, Lax/bo;-><init>()V

    invoke-virtual {p1}, LaE/l;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->a(I)Lax/bo;

    move-result-object v1

    invoke-virtual {p1}, LaE/l;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->b(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lax/bo;->a(Ljava/lang/String;)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lax/bo;->a(Lam/b;)Lax/bo;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/ai;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/wizard/ai;-><init>(Lcom/google/googlenav/ui/wizard/ad;Lcom/google/googlenav/ui/wizard/ae;)V

    invoke-virtual {v1, v2}, Lax/bo;->a(Lax/bn;)Lax/bo;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lax/bo;->f(I)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lax/bo;->a(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v5}, Lax/bo;->b(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v5}, Lax/bo;->c(Z)Lax/bo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lax/bo;->g(I)Lax/bo;

    move-result-object v1

    invoke-virtual {p1}, LaE/l;->g()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p1}, LaE/l;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lax/bo;->e(I)Lax/bo;

    :cond_5a
    invoke-static {v0}, Laf/o;->a(Lam/b;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v1}, Lax/bo;->a()Lax/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/a;LaD/i;)V
    .registers 5

    new-instance v0, LaD/a;

    invoke-direct {v0, p2}, LaD/a;-><init>(LaD/i;)V

    invoke-virtual {v0, p1}, LaD/a;->a(Lcom/google/googlenav/a;)LaD/a;

    move-result-object v0

    sget-object v1, LaD/h;->b:LaD/h;

    invoke-virtual {v0, v1}, LaD/a;->a(LaD/h;)LaD/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LaD/a;->a(I)LaD/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/af;

    invoke-direct {v1, p0, p2}, Lcom/google/googlenav/ui/wizard/af;-><init>(Lcom/google/googlenav/ui/wizard/ad;LaD/i;)V

    invoke-virtual {v0, v1}, LaD/a;->a(LaD/c;)LaD/a;

    move-result-object v0

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/ca;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;)V
    .registers 7

    new-instance v0, Lcom/google/googlenav/o;

    new-instance v1, Lcom/google/googlenav/ui/wizard/ag;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/ag;-><init>(Lcom/google/googlenav/ui/wizard/ad;Lcom/google/googlenav/ui/wizard/ae;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/googlenav/o;-><init>(Lcom/google/googlenav/h;Ljava/lang/String;Ljava/util/List;Lcom/google/googlenav/r;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ah;Lcom/google/googlenav/ui/wizard/I;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ad;->d:Lcom/google/googlenav/ui/wizard/ah;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ad;->a:Lcom/google/googlenav/ui/wizard/E;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/E;->a(Lcom/google/googlenav/ui/wizard/I;)V

    return-void
.end method
