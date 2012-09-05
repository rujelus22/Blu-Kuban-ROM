.class public Lcom/google/googlenav/ui/wizard/dr;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/du;

.field private g:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    return-void
.end method

.method private e()Lcom/google/googlenav/ui/wizard/dm;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/dm;

    return-object v0
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dr;->a()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dr;->a(Lcom/google/googlenav/ui/wizard/du;)V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dr;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dr;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dr;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/dr;->e:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/du;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dr;->l()V

    return-void
.end method

.method protected b()V
    .registers 7

    new-instance v2, Lcom/google/googlenav/ui/wizard/E;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->J()Lax/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/E;-><init>(Lax/k;Lcom/google/googlenav/android/ac;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/dm;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/wizard/du;->c:Z

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/wizard/dm;-><init>(ZLcom/google/googlenav/ui/p;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v0, Lcom/google/googlenav/ui/wizard/aL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/du;->d:LaY/a;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dr;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/aL;-><init>(LaY/a;Lcom/google/googlenav/android/ac;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->g:Lcom/google/googlenav/ui/wizard/aL;

    new-instance v0, Lcom/google/googlenav/ui/wizard/dg;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dr;->e()Lcom/google/googlenav/ui/wizard/dm;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/dr;->g:Lcom/google/googlenav/ui/wizard/aL;

    new-instance v5, Lcom/google/googlenav/ui/wizard/ds;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/wizard/ds;-><init>(Lcom/google/googlenav/ui/wizard/dr;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/dg;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/E;Lcom/google/googlenav/ui/wizard/dm;Lcom/google/googlenav/ui/wizard/aL;Lcom/google/googlenav/ui/wizard/dl;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dr;->e()Lcom/google/googlenav/ui/wizard/dm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dg;->a()Lcom/google/googlenav/ui/wizard/dq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/dm;->a(Lcom/google/googlenav/ui/wizard/dq;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/du;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dg;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dr;->e()Lcom/google/googlenav/ui/wizard/dm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dm;->a(Lcom/google/googlenav/ui/wizard/dq;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->g:Lcom/google/googlenav/ui/wizard/aL;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/du;->b:Lcom/google/googlenav/ui/wizard/dt;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/du;->b:Lcom/google/googlenav/ui/wizard/dt;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/dt;->a()V

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/du;->b:Lcom/google/googlenav/ui/wizard/dt;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/dr;->a:Lcom/google/googlenav/ui/wizard/du;

    :cond_21
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    return-void
.end method

.method public o()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dr;->a()V

    return-void
.end method
