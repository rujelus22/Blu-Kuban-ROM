.class public Lcom/google/googlenav/ui/wizard/J;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/N;

.field private g:Lcom/google/googlenav/ui/wizard/P;

.field private final h:Lcom/google/googlenav/ui/wizard/aB;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/wizard/aB;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/J;->h:Lcom/google/googlenav/ui/wizard/aB;

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->l()V

    return-void
.end method

.method public a(Laq/b;)I
    .registers 4

    invoke-virtual {p1}, Laq/b;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->o()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/J;->e:I

    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/J;->e:I

    goto :goto_d
.end method

.method public a(Laq/c;)I
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/wizard/J;->e:I

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/N;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public b()V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    :cond_c
    new-instance v0, Lcom/google/googlenav/ui/wizard/P;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/N;->a(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/N;->a(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->m()LaY/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v4}, Lcom/google/googlenav/ui/wizard/N;->b(Lcom/google/googlenav/ui/wizard/N;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/J;->h:Lcom/google/googlenav/ui/wizard/aB;

    new-instance v6, Lcom/google/googlenav/ui/wizard/K;

    invoke-direct {v6, p0}, Lcom/google/googlenav/ui/wizard/K;-><init>(Lcom/google/googlenav/ui/wizard/J;)V

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/P;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/at;LaY/a;ZLcom/google/googlenav/ui/wizard/aB;Lcom/google/googlenav/ui/wizard/Z;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    new-instance v0, Lcom/google/googlenav/ui/wizard/aj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/N;->c(Lcom/google/googlenav/ui/wizard/N;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/N;->d(Lcom/google/googlenav/ui/wizard/N;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/aj;-><init>(Lcom/google/googlenav/ui/p;ZZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/aj;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/P;->a()Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/ay;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/aj;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    new-instance v1, Lcom/google/googlenav/ui/wizard/L;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/L;-><init>(Lcom/google/googlenav/ui/wizard/J;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/N;->e(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/h;)V

    return-void
.end method

.method protected c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/P;->a(Lcom/google/googlenav/ui/wizard/aj;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    check-cast v0, Lcom/google/googlenav/ui/wizard/aj;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/ay;)V

    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    if-eqz v0, :cond_1d

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    :cond_1d
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->invalidateOptionsMenu()V

    :cond_35
    return-void
.end method

.method e()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/N;->f(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/wizard/O;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/N;->f(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/wizard/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/O;->a()V

    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->a()V

    return-void
.end method

.method f()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/N;->f(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/wizard/O;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->a:Lcom/google/googlenav/ui/wizard/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/N;->f(Lcom/google/googlenav/ui/wizard/N;)Lcom/google/googlenav/ui/wizard/O;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/O;->b()V

    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->a()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/J;->g:Lcom/google/googlenav/ui/wizard/P;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/P;->b()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/J;->f()V

    const-string v0, "cy"

    invoke-static {v0}, Lax/aA;->d(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
