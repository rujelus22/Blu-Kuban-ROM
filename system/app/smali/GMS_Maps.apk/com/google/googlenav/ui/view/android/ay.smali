.class public abstract Lcom/google/googlenav/ui/view/android/ay;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field protected a:Lbb/f;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/p;ILbb/f;)V
    .registers 5

    invoke-virtual {p3}, Lbb/f;->a()[Laq/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/ay;->a:Lbb/f;

    iget-object v0, p3, Lbb/f;->e:Lbb/q;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/googlenav/ui/view/android/az;

    invoke-direct {v0, p0, p3}, Lcom/google/googlenav/ui/view/android/az;-><init>(Lcom/google/googlenav/ui/view/android/ay;Lbb/f;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/ay;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_15
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/p;Lbb/f;)V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ay;->b()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/ay;-><init>(Lcom/google/googlenav/ui/p;ILbb/f;)V

    return-void
.end method


# virtual methods
.method protected H_()V
    .registers 1

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/bb;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ay;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->k()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b(Lcom/google/googlenav/ui/bb;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/googlenav/ui/bl;

    if-eqz v1, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->t:Ljava/lang/String;

    :cond_10
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ay;->f:Lcom/google/googlenav/ui/p;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/bb;->k()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ay;->a:Lbb/f;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ay;->a:Lbb/f;

    iget-object v0, v0, Lbb/f;->d:Ljava/lang/String;

    goto :goto_6
.end method

.method public i()Lbb/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ay;->a:Lbb/f;

    return-object v0
.end method

.method public final v()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/ay;->H_()V

    return-void
.end method
