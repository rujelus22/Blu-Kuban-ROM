.class public Lcom/google/googlenav/ui/bP;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/c;


# instance fields
.field private a:LaJ/u;

.field private b:Lbb/d;

.field private c:Lbb/d;

.field private final d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(LaJ/u;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bP;->d:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bP;->a(LaJ/u;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    invoke-interface {v0, p1}, Lbb/d;->a(Z)V

    :cond_9
    return-void
.end method

.method public static a()Z
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_10
    sget-object v0, LaB/j;->a:LaB/j;

    invoke-virtual {v0}, LaB/j;->e()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/ui/bP;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    invoke-interface {v0, p1}, Lbb/d;->a(Z)V

    :cond_9
    return-void
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ay()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->A()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a(LaJ/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bP;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->d:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->d:Landroid/graphics/Point;

    invoke-interface {v0, v1, p1}, Lbb/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V

    :cond_19
    return-void
.end method

.method public a(Laq/c;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Laq/c;->i()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v2

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, LaJ/u;->a(ZII)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public a(Lbb/E;)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    if-ne p1, v2, :cond_10

    iget-object v2, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {v2, v1}, LaJ/u;->a(Z)Z

    :goto_f
    return v0

    :cond_10
    iget-object v2, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    if-ne p1, v2, :cond_1e

    iget-object v1, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->a(Z)Z

    goto :goto_f

    :cond_1e
    move v0, v1

    goto :goto_f
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bP;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    invoke-static {}, Lbb/e;->a()Lbb/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, v2}, Lbb/e;->a(ILbb/c;Ljava/lang/String;)Lbb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->b:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->c:Lbb/d;

    invoke-interface {v0}, Lbb/d;->c()V

    goto :goto_1d
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/bP;->a(Z)V

    :goto_d
    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->j()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/bP;->b(Z)V

    :goto_18
    iget-object v0, p0, Lcom/google/googlenav/ui/bP;->a:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->o()V

    return-void

    :cond_1e
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/bP;->a(Z)V

    goto :goto_d

    :cond_22
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/bP;->b(Z)V

    goto :goto_18
.end method
