.class public Lcom/google/googlenav/android/z;
.super Lcom/google/googlenav/ui/aL;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;

.field private final b:Lap/c;

.field private c:Lcom/google/googlenav/ui/af;

.field private d:Lcom/google/googlenav/ui/aM;

.field private e:Lcom/google/googlenav/ui/android/q;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/l;Lap/c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0}, Lcom/google/googlenav/ui/aL;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/android/z;->b:Lap/c;

    invoke-virtual {p2}, Lap/c;->d()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->g(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/h;

    move-result-object v0

    return-object v0
.end method

.method public a(LaJ/p;)Lcom/google/googlenav/ui/bQ;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/android/r;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/android/z;->b(LaJ/p;)Lcom/google/googlenav/ui/A;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/q;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/android/r;-><init>(LaJ/p;Lcom/google/googlenav/ui/android/q;)V

    return-object v1
.end method

.method public a(Z)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/D;->h(Z)V

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/aL;->a(Z)V

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->m(Lcom/google/googlenav/android/l;)LaJ/u;

    move-result-object v0

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->m(Lcom/google/googlenav/android/l;)LaJ/u;

    move-result-object v0

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->m(Lcom/google/googlenav/android/l;)LaJ/u;

    move-result-object v0

    invoke-virtual {v0}, LaJ/u;->f()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    if-nez p1, :cond_4f

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->ar()LaY/Y;

    move-result-object v0

    invoke-virtual {v0, v1}, LaY/Y;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aE()V

    move v0, v1

    :cond_4f
    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v5}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->t()V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v5}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->s()V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    iget-object v6, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v6}, Lcom/google/googlenav/android/l;->c()LaJ/p;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/android/l;->a(LaJ/p;)V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v5}, Lcom/google/googlenav/android/l;->d()V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v5}, Lcom/google/googlenav/android/l;->m(Lcom/google/googlenav/android/l;)LaJ/u;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/maps/MapsActivity;->a(LaJ/u;)V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v5}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v6}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/D;->a(LaJ/p;)V

    iget-object v5, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v5}, Lcom/google/googlenav/android/l;->i()LaJ/p;

    move-result-object v5

    new-instance v6, LaJ/H;

    invoke-direct {v6, v3, v4, v0}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    invoke-virtual {v5, v6}, LaJ/p;->a(LaJ/H;)V

    if-nez p1, :cond_a9

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->a()V

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    :cond_a9
    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->m(Lcom/google/googlenav/android/l;)LaJ/u;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    if-nez p1, :cond_d2

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/android/z;->d()Lcom/google/googlenav/ui/android/z;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/android/z;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v3}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/D;->g(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2}, Lcom/google/android/maps/MapsActivity;->b()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->b()V

    :cond_d2
    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->l(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->h(Z)V

    return-void
.end method

.method public b(LaJ/p;)Lcom/google/googlenav/ui/A;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/z;->e:Lcom/google/googlenav/ui/android/q;

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/googlenav/ui/android/q;

    iget-object v1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v1}, Lcom/google/googlenav/android/l;->k(Lcom/google/googlenav/android/l;)LaJ/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v2}, Lcom/google/googlenav/android/l;->h(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/android/z;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/android/q;-><init>(LaJ/p;Lcom/google/googlenav/ui/android/z;)V

    iput-object v0, p0, Lcom/google/googlenav/android/z;->e:Lcom/google/googlenav/ui/android/q;

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/android/z;->e:Lcom/google/googlenav/ui/android/q;

    return-object v0
.end method

.method public b()Lcom/google/googlenav/ui/aM;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/z;->d:Lcom/google/googlenav/ui/aM;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/googlenav/ui/android/d;

    iget-object v1, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v1}, Lcom/google/googlenav/android/l;->d(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/AndroidGmmApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/android/z;->d:Lcom/google/googlenav/ui/aM;

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/android/z;->d:Lcom/google/googlenav/ui/aM;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/ui/af;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->c:Lcom/google/googlenav/ui/af;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/ui/android/e;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/e;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/z;->c:Lcom/google/googlenav/ui/af;

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/android/z;->c:Lcom/google/googlenav/ui/af;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/ui/android/z;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->h(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/ui/android/z;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->i(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/android/ac;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/googlenav/layer/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->j(Lcom/google/googlenav/android/l;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    return-object v0
.end method

.method public g()LaR/i;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/l;)LaR/i;

    move-result-object v0

    return-object v0
.end method

.method public h()LaR/g;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->b(Lcom/google/googlenav/android/l;)LaR/g;

    move-result-object v0

    return-object v0
.end method

.method public i()Lap/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/z;->b:Lap/c;

    return-object v0
.end method
