.class LaM/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaM/bS;


# instance fields
.field final synthetic a:LaM/bK;


# direct methods
.method constructor <init>(LaM/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, LaM/bO;->a:LaM/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 648
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->b(LaM/bK;)V

    .line 652
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    const/16 v2, 0x13

    new-instance v3, LaM/bP;

    invoke-direct {v3, p0}, LaM/bP;-><init>(LaM/bO;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v1

    invoke-static {v0, v1}, LaM/bK;->a(LaM/bK;Lcom/google/googlenav/ui/view/d;)Lcom/google/googlenav/ui/view/d;

    .line 665
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->c(LaM/bK;)V

    .line 669
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->e()V

    .line 670
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->e(LaM/bK;)Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->d()V

    .line 675
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->e(LaM/bK;)Lcom/google/googlenav/ui/view/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/H;->f()V

    .line 676
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->f(LaM/bK;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 677
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->f(LaM/bK;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 679
    :cond_23
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->g(LaM/bK;)V

    .line 680
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->g()V

    .line 682
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->f()V

    .line 687
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    iget-object v1, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v1}, LaM/bK;->h(LaM/bK;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, LaM/bK;->a(LaM/bK;Landroid/content/res/Configuration;)V

    .line 692
    iget-object v0, p0, LaM/bO;->a:LaM/bK;

    invoke-static {v0}, LaM/bK;->d(LaM/bK;)Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->e()V

    .line 693
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method
