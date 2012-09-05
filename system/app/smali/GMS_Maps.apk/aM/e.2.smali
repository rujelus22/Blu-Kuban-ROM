.class public LaM/e;
.super Ljava/lang/Object;


# static fields
.field private static a:LaM/e;


# instance fields
.field private b:LaM/v;

.field private c:LaM/g;

.field private d:LaM/g;

.field private e:LaM/o;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaM/v;

    invoke-direct {v0, p1}, LaM/v;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, LaM/e;->b:LaM/v;

    new-instance v0, LaM/o;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/o;-><init>(Lak/m;)V

    iput-object v0, p0, LaM/e;->e:LaM/o;

    new-instance v0, LaM/g;

    iget-object v2, p0, LaM/e;->b:LaM/v;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, LbD/fC;->a:Lam/e;

    const-string v7, "STARRING"

    iget-object v8, p0, LaM/e;->e:LaM/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, LaM/g;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaM/u;Lat/h;Lak/m;ILam/e;Ljava/lang/String;LaM/o;)V

    iput-object v0, p0, LaM/e;->c:LaM/g;

    new-instance v0, LaM/g;

    iget-object v2, p0, LaM/e;->b:LaM/v;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v4

    const/4 v5, 0x3

    sget-object v6, LbD/dP;->a:Lam/e;

    const-string v7, "RECENT"

    iget-object v8, p0, LaM/e;->e:LaM/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, LaM/g;-><init>(Lcom/google/googlenav/ui/wizard/hM;LaM/u;Lat/h;Lak/m;ILam/e;Ljava/lang/String;LaM/o;)V

    iput-object v0, p0, LaM/e;->d:LaM/g;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->aw()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, LaM/e;->c:LaM/g;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, LaM/e;->d:LaM/g;

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, LaM/e;->d:LaM/g;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->c(Lcom/google/googlenav/login/h;)V

    :cond_73
    return-void
.end method

.method public static a()LaM/e;
    .registers 1

    sget-object v0, LaM/e;->a:LaM/e;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/wizard/hM;)LaM/e;
    .registers 2

    sget-object v0, LaM/e;->a:LaM/e;

    if-nez v0, :cond_e

    new-instance v0, LaM/e;

    invoke-direct {v0, p0}, LaM/e;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    sput-object v0, LaM/e;->a:LaM/e;

    :cond_b
    :goto_b
    sget-object v0, LaM/e;->a:LaM/e;

    return-object v0

    :cond_e
    if-eqz p0, :cond_b

    sget-object v0, LaM/e;->a:LaM/e;

    invoke-direct {v0, p0}, LaM/e;->b(Lcom/google/googlenav/ui/wizard/hM;)V

    goto :goto_b
.end method

.method private b(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    iget-object v0, p0, LaM/e;->c:LaM/g;

    invoke-virtual {v0, p1}, LaM/g;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    iget-object v0, p0, LaM/e;->d:LaM/g;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/e;->d:LaM/g;

    invoke-virtual {v0, p1}, LaM/g;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    :cond_e
    iget-object v0, p0, LaM/e;->b:LaM/v;

    invoke-virtual {v0, p1}, LaM/v;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method


# virtual methods
.method public b()LaM/B;
    .registers 2

    iget-object v0, p0, LaM/e;->b:LaM/v;

    return-object v0
.end method

.method public c()LaM/f;
    .registers 2

    iget-object v0, p0, LaM/e;->c:LaM/g;

    return-object v0
.end method

.method public d()LaM/f;
    .registers 2

    iget-object v0, p0, LaM/e;->d:LaM/g;

    return-object v0
.end method

.method public e()LaM/o;
    .registers 2

    iget-object v0, p0, LaM/e;->e:LaM/o;

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, LaM/e;->b:LaM/v;

    invoke-virtual {v0}, LaM/v;->g()V

    iget-object v0, p0, LaM/e;->c:LaM/g;

    invoke-virtual {v0}, LaM/g;->h()V

    iget-object v0, p0, LaM/e;->d:LaM/g;

    if-eqz v0, :cond_13

    iget-object v0, p0, LaM/e;->d:LaM/g;

    invoke-virtual {v0}, LaM/g;->h()V

    :cond_13
    return-void
.end method
