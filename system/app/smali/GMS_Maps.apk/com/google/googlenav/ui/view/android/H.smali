.class public Lcom/google/googlenav/ui/view/android/H;
.super Lcom/google/googlenav/ui/view/android/ay;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method


# virtual methods
.method protected H_()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->g()V

    return-void
.end method

.method public L_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/H;->requestWindowFeature(I)Z

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/H;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/l;

    invoke-static {p0, v1, v0}, Lcom/google/googlenav/ui/s;->a(Lcom/google/googlenav/ui/view/android/ay;Landroid/view/View;Lbb/l;)V

    return-object v1
.end method

.method protected g()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->g:Lcom/google/googlenav/ui/view/android/aB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aB;->a()V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/H;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_15
    return-void
.end method
