.class Lcom/google/googlenav/ui/wizard/K;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/Z;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/J;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/J;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/J;->e()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/J;->f()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->hide()V

    :cond_d
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    :cond_d
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/K;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->invalidateOptionsMenu()V

    :cond_13
    return-void
.end method
