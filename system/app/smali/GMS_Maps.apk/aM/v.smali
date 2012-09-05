.class public LaM/v;
.super Ljava/lang/Object;

# interfaces
.implements LaM/B;
.implements LaM/u;


# instance fields
.field private a:LaM/A;

.field private b:LaM/D;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaM/A;

    invoke-direct {v0, p0, p1}, LaM/A;-><init>(LaM/B;Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, LaM/v;->a:LaM/A;

    new-instance v0, LaM/D;

    iget-object v1, p0, LaM/v;->a:LaM/A;

    invoke-direct {v0, v1}, LaM/D;-><init>(LaM/z;)V

    iput-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {p0}, LaM/v;->h()V

    invoke-virtual {p0}, LaM/v;->d()V

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, LaM/v;->b:LaM/D;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->h()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lam/g;->a(Lam/b;)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, LaM/v;->a_(Lam/b;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_21} :catch_22

    goto :goto_c

    :catch_22
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 2

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->f()V

    return-void
.end method

.method public F_()V
    .registers 2

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->g()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0, p1}, LaM/A;->d(I)V

    invoke-direct {p0}, LaM/v;->k()V

    return-void
.end method

.method public a(LaM/C;)V
    .registers 3

    iget-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {v0, p1}, LaM/D;->a(LaM/C;)V

    return-void
.end method

.method a(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0, p1}, LaM/A;->a(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method public a_(Lam/b;)V
    .registers 3

    iget-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {v0, p1}, LaM/D;->a_(Lam/b;)V

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0, p1}, LaM/A;->b(Lam/b;)V

    return-void
.end method

.method public b(I)LaM/w;
    .registers 3

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0, p1}, LaM/A;->a(I)LaM/w;

    move-result-object v0

    return-object v0
.end method

.method public b(LaM/C;)V
    .registers 3

    iget-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {v0, p1}, LaM/D;->b(LaM/C;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, LaM/v;->b:LaM/D;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {v0}, LaM/D;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->b()V

    invoke-direct {p0}, LaM/v;->k()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, LaM/v;->b:LaM/D;

    invoke-virtual {v0}, LaM/D;->f()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->d()V

    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, LaM/v;->a:LaM/A;

    invoke-virtual {v0}, LaM/A;->e()V

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method
